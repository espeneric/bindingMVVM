//
//  BindigTextField.swift
//  BindingMVVM
//
//  Created by Andrian Sergheev on 2018-10-11.
//  Copyright © 2018 Andrian Sergheev. All rights reserved.
//

import Foundation
import UIKit



class BindigTextField : UITextField {
	
	
	var textChanged : (String) -> () = { _ in }
	
	
	func bind(callback : @escaping (String) -> () ) {
		self.textChanged = callback
		self.addTarget(self, action: #selector(textFieldDidChanged), for: .editingChanged)
	}
	
	
	

	/// unwrapping optionals here, safe?
	@objc func textFieldDidChanged(_ textField: UITextField) {
		self.textChanged(textField.text!)
	}
	
	
	
	
	
	
	
}






