//
//  FirstViewControllerTableViewCell.swift
//  CX Travel
//
//  Created by 周靖然 on 23/10/2016.
//  Copyright © 2016 Yao Qingning. All rights reserved.
//

import UIKit

class FirstViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myHead: UILabel!
    @IBOutlet weak var myBody: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
