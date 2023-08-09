//
//  loactionPage.swift
//  UberEats
//
//  Created by R92 on 06/08/23.
//

import UIKit

class loactionPage: UIViewController {

    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var shreButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterButton.layer.cornerRadius = 25
        shreButton.layer.cornerRadius = 25
        
    }

    @IBAction func enterAddressButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(identifier:"addressPage") as! addressPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func shareLoactionButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(identifier:"ShareLocationPage") as! ShareLocationPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
