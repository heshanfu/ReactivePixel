//
//  UISlider.swift
//  ReactivePixel-iOS
//
//  Created by José Donor on 17/11/2018.
//

import ReactiveSwift
import Result
import UIKit



extension Reactive where Base: UISlider {

	/// Slider's current value.
	///
	/// Forwards events on main queue.
	public var value: SignalProducer<Float, NoError> {

		return events(.valueChanged)
			.filterMap { [weak base] _ in base?.value }
			.skipRepeats()
	}

}
