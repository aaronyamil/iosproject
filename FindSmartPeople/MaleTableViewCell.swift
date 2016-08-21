//
//  MaleTableViewCell.swift
//  FindSmartPeople
//
//  Created by Diego Alejandro Orellana Lopez on 8/21/16.
//  Copyright © 2016 Aaron Luna. All rights reserved.
//

import UIKit

class MaleTableViewCell: UITableViewCell {


    @IBOutlet weak var PersonImage: UIImageView!
    @IBOutlet weak var PersonName: UILabel!
    @IBOutlet weak var PersonEmail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
