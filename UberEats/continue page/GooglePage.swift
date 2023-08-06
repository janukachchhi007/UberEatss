//
//  GooglePage.swift
//  UberCabesProject
//
//  Created by R92 on 04/08/23.
//

import UIKit

class GooglePage: UIViewController {

    
    var mynev : UINavigationController?
    var image = [UIImage(systemName: "j.circle.fill"),UIImage(systemName:  "s.circle.fill"),UIImage(systemName: "d.circle.fill"),UIImage(systemName: "person.crop.circle.fill.badge.plus")]
    var idName = ["Janvi Kachchhi","Sneha Magatarpara","Dipika Chodhary","Use Another Account"]
    var emailName = ["janukachchhi2@gmail.com","snehmagatarpara@gmail.com","dipikachodhary2gmail.com",""]

    @IBOutlet weak var accountCollectionView: UICollectionView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var popView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        popView.layer.cornerRadius = 20
        popView.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    
    
    @IBAction func cancleButtonAction(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
   
}
// MARK = CollectionView
extension GooglePage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return idName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = accountCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! accountCollectionView
        cell.acoountImage.image = image[indexPath.row]
        cell.idNameLabel.text = idName[indexPath.row]
        cell.emailNameLabel.text = emailName[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                    return CGSize(width: 350, height: 60)
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if idName[indexPath.row] == "Janvi Kachchhi"
        {
            naviget()
            dismiss(animated: true)

        }
         else if idName[indexPath.row] == "Sneha Magatarpara"
        {
            naviget()
             dismiss(animated: true)

        }
        else if idName[indexPath.row] == "Dipika Chodhary"
        {
            naviget()
            dismiss(animated: true)

        }
        else if idName[indexPath.row] == "Use Another Account"
        {
            naviget()
            dismiss(animated: true)

        }
        else
        {
            naviget()
            dismiss(animated: true)
        }
          }
    func naviget()
    {
        let n = storyboard?.instantiateViewController(identifier: "ContinuePasscodePage") as! ContinuePasscodePage
        mynev?.pushViewController(n, animated: true)
    }
    
}
