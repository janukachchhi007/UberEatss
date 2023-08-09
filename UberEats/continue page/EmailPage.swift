//
//  EmailPage.swift
//  uberCabs
//
//  Created by R93 on 14/07/23.
//

import UIKit
import FirebaseDatabase
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


class EmailPage: UIViewController {
    
    var ref: DatabaseReference!
    var reference : Firestore!
    
    @IBOutlet weak var passwordTextFildd: UITextField!
    @IBOutlet weak var emailTextFild: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        reference = Firestore.firestore()
        
        backButton.layer.cornerRadius = 26
        backButton.layer.masksToBounds = true
        nextButton.layer.cornerRadius = 26
        nextButton.layer.masksToBounds = true
    }
    
    @IBAction func backButtonAction(_ sender: Any)
    {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: Any)
    {
        numberData()
        let navigation = storyboard?.instantiateViewController(identifier:"ContinuePasscodePage") as! ContinuePasscodePage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    //MARK = FIREBASE
    
    func numberData()
    {
        Auth.auth().createUser(withEmail: emailTextFild.text!, password: passwordTextFildd.text!){[self]authDataResult, error  in
            print(authDataResult,error?.localizedDescription)
            
            self.reference.collection("Email").document((authDataResult?.user.uid)!).setData(["Email ID": emailTextFild.text!,"password":passwordTextFildd.text!])
        }
        
    }
    
    func showAlert(id:String)
    {
        let alert = UIAlertController(title: "OTP", message: "Enter Your OTP", preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "OK", style: .default,handler: { _ in
            self.veriyOtp(token: id, otp: (alert.textFields?.first?.text)!)
        }))
        present(alert, animated: true)
    }
    
    func veriyOtp(token:String,otp:String)
    {
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: token, verificationCode: otp)
        Auth.auth().signIn(with: credential) { authresult , error  in
            if error == nil
            {
                print("OK")
            }
            else
            {
                print(error?.localizedDescription)
            }
        }
    }
    
}


