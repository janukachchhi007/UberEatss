//
//  InformationPage.swift
//  uberCabs
//
//  Created by R93 on 03/08/23.
//

import UIKit
import FirebaseDatabase
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class InformationPage: UIViewController {

    var ref: DatabaseReference!
    var reference : Firestore!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nametextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 20
        backButton.layer.masksToBounds = true
        
        ref = Database.database().reference()
        reference = Firestore.firestore()
        
        nametextField.attributedPlaceholder = NSAttributedString(
            string: "Enter first name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        lastNameTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter last name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        
    }
    
    @IBAction func backButtonAction(_ sender: Any)
    {
        navigationController?.popViewController(animated:true)

    }
    
    @IBAction func nextButtonAction(_ sender: Any)
    {
        addData()
        let navigation = storyboard?.instantiateViewController(identifier:"ContinuePasscodePage") as! ContinuePasscodePage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    //MARK = FIRESTORE
    
    func addData()
    {
        reference.collection("User").addDocument(data: ["First Name":nametextField.text!,"Last Name":lastNameTextField.text!])
        
    }
 
}

