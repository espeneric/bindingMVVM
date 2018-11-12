//
//  Box.swift
//  BindingMVVM
//
//  Created by Andrian Sergheev on 2018-10-15.
//  Copyright © 2018 Andrian Sergheev. All rights reserved.
//

import Foundation

class Box <T> {
	typealias Listener =  (T) -> Void
	var listener: Listener?
	
	var value: T {
		didSet {
			listener?(value)
		}
	}
	
	init(_ value: T) {
		self.value = value
	}
	
	func bind(listener: Listener?) {
		self.listener = listener
		listener?(value)
	}
}
