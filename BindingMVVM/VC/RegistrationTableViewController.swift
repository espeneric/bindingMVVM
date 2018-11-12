//
//  RegistrationTableViewController.swift
//  BindingMVVM
//
//  Created by Andrian Sergheev on 2018-10-11.
//  Copyright © 2018 Andrian Sergheev. All rights reserved.
//

import UIKit

class RegistrationTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.registrationViewModel = RegistrationViewModel()
		registrationViewModel.registration.bind { [unowned self] (reg) in
			self.emailTextField.text = reg.email
			self.passwordTextField.text = reg.password
		}
    }

	private var registrationViewModel : RegistrationViewModel!

	@IBOutlet weak var emailTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	
	@IBAction func saveAction(_ sender: UIBarButtonItem) {
		

	}
	
	
	
	


}
