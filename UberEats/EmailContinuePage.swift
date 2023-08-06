//
//  EmailContinuePage.swift
//  Pods
//
//  Created by R92 on 14/07/23.
//

import UIKit

class EmailContinuePage: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textFildEmail: UITextField!
    @IBOutlet weak var arrowButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        constant()
    }


    @IBAction func nextButtonAction(_ sender: Any) {
        
    }
    func constant()
    {
        arrowButton.layer.cornerRadius = 28
        arrowButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 28
        
    }
}
