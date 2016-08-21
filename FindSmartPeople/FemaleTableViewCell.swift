//
//  FemaleTableViewCell.swift
//  FindSmartPeople
//
//  Created by Diego Alejandro Orellana Lopez on 8/21/16.
//  Copyright © 2016 Aaron Luna. All rights reserved.
//

import UIKit

class FemaleTableViewCell: UITableViewCell {

    @IBOutlet weak var PersonEmail: UILabel!
    @IBOutlet weak var PersonName: UILabel!

    @IBOutlet weak var PersonImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
