//
//  ViewController.swift
//  UsersInfo_Task
//
//  Created by flock on 11/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userDataArrayVC1 = [UserData]()
    
    var userDataSelected = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        welcomeLabel.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myTableView.reloadData()
    }

    @IBAction func addButton(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc2.delegate = self
        vc2.userDataArrayVC2 = userDataArrayVC1
        welcomeLabel.isHidden = true
        self.navigationController?.pushViewController(vc2, animated: true)
    }
}

extension ViewController: PassingData, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDataArrayVC1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
        cell.nameLabelTbl.text = userDataArrayVC1[indexPath.row].name
        cell.addressLabelTbl.text = userDataArrayVC1[indexPath.row].address
        cell.ageLabelTbl.text = userDataArrayVC1[indexPath.row].age
        cell.genderLabelTbl.text = userDataArrayVC1[indexPath.row].gender
        cell.occupationLabelTbl.text = userDataArrayVC1[indexPath.row].occupation
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc2.nameTxt1 = userDataArrayVC1[indexPath.row].name!
        vc2.adressTxt1 = userDataArrayVC1[indexPath.row].address!
        vc2.occupationTxt1 = userDataArrayVC1[indexPath.row].occupation!
        vc2.ageTxt1 = userDataArrayVC1[indexPath.row].age!
        vc2.genderTxt1 = userDataArrayVC1[indexPath.row].gender!
        vc2.delegate = self
        vc2.userDataArrayVC2 = userDataArrayVC1
        vc2.indexSelected = indexPath.row
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func dataPass(userArray: [UserData]) {
        userDataArrayVC1 = userArray
    }
}





