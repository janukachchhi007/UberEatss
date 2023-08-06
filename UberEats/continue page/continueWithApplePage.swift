//
//  continueWithApplePage.swift
//  Pods
//
//  Created by R92 on 14/07/23.
//

import UIKit

class continueWithApplePage: UIViewController {

    var mynev : UINavigationController?
    
    
    @IBOutlet weak var passcodeButton: UIButton!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var appleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        passcodeButton.layer.cornerRadius = 18
        passcodeButton.layer.masksToBounds = true
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear){
            self.view.alpha =  1
        }
    }

    @IBAction func cancelButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func passcodeButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(identifier: "ContinuePasscodePage") as! ContinuePasscodePage
        mynev?.pushViewController(n, animated: true)
      dismiss(animated: true)
    }
}
