//
//  addressPage.swift
//  UberEats
//
//  Created by R92 on 06/08/23.
//

import UIKit

class addressPage: UIViewController {

    @IBOutlet var viewNear: UIView!
    @IBOutlet weak var enableLabel: UILabel!
    @IBOutlet weak var cureentLoactionButton: UIButton!
    @IBOutlet weak var serch: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        enableLabel.layer.cornerRadius = 12
        enableLabel.layer.masksToBounds = true
        
    }
   
    @IBAction func useCurrentLoactionButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(identifier:"loactionPage") as! loactionPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
