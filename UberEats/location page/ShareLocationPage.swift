//
//  ShareLocationPage.swift
//  UberEats
//
//  Created by R92 on 06/08/23.
//

import UIKit

class ShareLocationPage: UIViewController {

    @IBOutlet weak var notificationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationButton.layer.cornerRadius = 25
        notificationButton.layer.masksToBounds = true
    }
    
    @IBAction func notificationButtonAction(_ sender: Any) {
        
    }
    
}
