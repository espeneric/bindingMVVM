//
//  RegistrationViewModel.swift
//  BindingMVVM
//
//  Created by Andrian Sergheev on 2018-10-11.
//  Copyright © 2018 Andrian Sergheev. All rights reserved.
//

import Foundation


class RegistrationViewModel {
	
	var registration = Box(Registration(email: "Test Email", password: "Test Password"))
	
	init() {
		simulateChanges()
	}
	private func simulateChanges () {
		DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
			self.registration.value.email = "Works!"
			self.registration.value.password = "Really?!"
		}
	}
	
}
