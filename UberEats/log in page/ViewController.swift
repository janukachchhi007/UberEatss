//
//  ViewController.swift
//  uberEatsApp
//
//  Created by R92 on 13/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 20
        continueButton.layer.masksToBounds =  true
    }
    
    @IBAction func continueButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(identifier: "logInPage") as! logInPage
        navigationController?.pushViewController(naviget, animated: true)
    }
}

