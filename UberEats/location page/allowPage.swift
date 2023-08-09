//
//  allowPage.swift
//  UberEats
//
//  Created by R92 on 06/08/23.
//

import UIKit

class allowPage: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var allowBUtton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        closeButton.layer.cornerRadius = 25
        allowBUtton.layer.cornerRadius =  25
    }
    
    @IBAction func allowButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated:true)

    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated:true)

    }
}
