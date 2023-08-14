//
//  SecondViewController.swift
//  UsersInfo_Task
//
//  Created by flock on 11/08/23.
//

import UIKit

protocol PassingData {
    func dataPass(userArray: [UserData])
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var ageTxt: UITextField!
    
    @IBOutlet weak var genderTxt: UITextField!
    
    @IBOutlet weak var occupationTxt: UITextField!
    
    @IBOutlet weak var adressTxt: UITextView!
    
    var delegate: PassingData?
    
    var userDataArrayVC2 = [UserData]()
    
    var nameTxt1 = ""
    
    var ageTxt1 = ""
    
    var genderTxt1 = ""
    
    var occupationTxt1 = ""
    
    var adressTxt1 = ""
    
    var indexSelected = -111
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        nameTxt.text = nameTxt1
        ageTxt.text = ageTxt1
        genderTxt.text = genderTxt1
        occupationTxt.text = occupationTxt1
        adressTxt.text = adressTxt1
        textFieldCustom()
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        performButtonAction()
        delegate?.dataPass(userArray: userDataArrayVC2)
        self.navigationController?.popViewController(animated: true)
    }
    
    func performButtonAction() {
        var data = UserData()
        data.name = nameTxt.text
        data.age = ageTxt.text
        data.gender = genderTxt.text
        data.address = adressTxt.text
        data.occupation = occupationTxt.text
        if indexSelected == -111 {
            userDataArrayVC2.append(data)
        }
        else {
            userDataArrayVC2[indexSelected] = data
        }
        nameTxt.text = ""
        ageTxt.text = ""
        adressTxt.text = ""
        occupationTxt.text = ""
        genderTxt.text = ""
    }
    
    func textFieldCustom() {
        nameTxt.backgroundColor = .white
        nameTxt.borderStyle = .bezel
        nameTxt.layer.borderWidth = 3.0
        nameTxt.layer.borderColor = UIColor.cyan.cgColor
        nameTxt.layer.cornerRadius = 10
        let placeHolder1 = NSAttributedString(string: "Enter your name", attributes: [NSAttributedString.Key.foregroundColor : UIColor.yellow.withAlphaComponent(0.9)])
        nameTxt.attributedPlaceholder = placeHolder1
        
        ageTxt.backgroundColor = .white
        ageTxt.borderStyle = .bezel
        ageTxt.layer.borderWidth = 3.0
        ageTxt.layer.borderColor = UIColor.cyan.cgColor
        ageTxt.layer.cornerRadius = 10
        let placeHolder2 = NSAttributedString(string: "Enter your age", attributes: [NSAttributedString.Key.foregroundColor : UIColor.yellow.withAlphaComponent(0.7)])
        ageTxt.attributedPlaceholder = placeHolder2
        
        genderTxt.backgroundColor = .white
        genderTxt.borderStyle = .bezel
        genderTxt.layer.cornerRadius = 10
        genderTxt.layer.borderWidth = 3.0
        genderTxt.layer.borderColor = UIColor.cyan.cgColor
        let placeHolder3 = NSAttributedString(string: "Enter your gender", attributes: [NSAttributedString.Key.foregroundColor : UIColor.yellow.withAlphaComponent(0.7)])
        genderTxt.attributedPlaceholder = placeHolder3
        
        occupationTxt.backgroundColor = .white
        occupationTxt.borderStyle = .bezel
        occupationTxt.layer.cornerRadius = 10
        occupationTxt.layer.borderWidth = 3.0
        occupationTxt.layer.borderColor = UIColor.cyan.cgColor
        let placeHolder4 = NSAttributedString(string: "Enter your occupation", attributes: [NSAttributedString.Key.foregroundColor : UIColor.yellow.withAlphaComponent(0.7)])
        occupationTxt.attributedPlaceholder = placeHolder4
        
        adressTxt.backgroundColor = .white
    }
}
