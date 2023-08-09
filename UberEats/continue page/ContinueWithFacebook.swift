//
//  ContinueWithFacebook.swift
//  UberCabesProject
//
//  Created by Choudhary Dipika on 04/08/23.
//

import UIKit

class ContinueWithFacebook: UIViewController {
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.alpha = 0
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
        cancelButton.layer.cornerRadius = 10
        cancelButton.layer.masksToBounds = true
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ContinuePasscodePage") as! ContinuePasscodePage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear)
        {
            self.view.alpha = 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true)
    }
}
