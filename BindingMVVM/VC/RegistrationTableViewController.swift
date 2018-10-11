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
		
    }
	
	
	private var registrationViewModel : RegistrationViewModel!

	
	@IBOutlet weak var emailTextField: BindigTextField! {
		didSet {
			emailTextField.bind { self.registrationViewModel.email = $0}
		}
	}
	
	
	@IBOutlet weak var passwordTextField: BindigTextField! {
		didSet {
			passwordTextField.bind { self.registrationViewModel.password  = $0}
		}
	}
	
	
	
	
	
	@IBAction func saveAction(_ sender: UIBarButtonItem) {
		print(self.registrationViewModel) //set breakpoint here;
		
	}
	
	
	
	


}
