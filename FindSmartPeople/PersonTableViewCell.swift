//
//  PersonTableViewCell.swift
//  FindSmartPeople
//
//  Created by Aaron Luna on 8/20/16.
//  Copyright © 2016 Aaron Luna. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var personPhoto: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personEmail: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
