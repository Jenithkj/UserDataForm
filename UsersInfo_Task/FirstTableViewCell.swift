//
//  FirstTableViewCell.swift
//  UsersInfo_Task
//
//  Created by flock on 11/08/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabelTbl: UILabel!
    
    @IBOutlet weak var ageLabelTbl: UILabel!
    
    @IBOutlet weak var genderLabelTbl: UILabel!
    
    @IBOutlet weak var occupationLabelTbl: UILabel!
    
    @IBOutlet weak var addressLabelTbl: UITextView!
    
    @IBOutlet weak var borderView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        borderViewConfig()
    }
    
        func borderViewConfig() {
            borderView.backgroundColor = .clear
            borderView.layer.cornerRadius = 15
            borderView.layer.borderWidth = 2
            borderView.layer.borderColor = UIColor.white.cgColor
            
            nameLabelTbl.backgroundColor = .clear
            nameLabelTbl.layer.cornerRadius = 5
            nameLabelTbl.layer.borderWidth = 1
            nameLabelTbl.layer.borderColor = UIColor.yellow.cgColor
            
            ageLabelTbl.backgroundColor = .clear
            ageLabelTbl.layer.cornerRadius = 5
            ageLabelTbl.layer.borderWidth = 1
            ageLabelTbl.layer.borderColor = UIColor.yellow.cgColor
            
            genderLabelTbl.backgroundColor = .clear
            genderLabelTbl.layer.cornerRadius = 5
            genderLabelTbl.layer.borderWidth = 1
            genderLabelTbl.layer.borderColor = UIColor.yellow.cgColor
            
            occupationLabelTbl.backgroundColor = .clear
            occupationLabelTbl.layer.cornerRadius = 5
            occupationLabelTbl.layer.borderWidth = 1
            occupationLabelTbl.layer.borderColor = UIColor.yellow.cgColor
            
            addressLabelTbl.backgroundColor = .clear
            addressLabelTbl.layer.cornerRadius = 5
            addressLabelTbl.layer.borderWidth = 1
            addressLabelTbl.layer.borderColor = UIColor.yellow.cgColor
        }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
