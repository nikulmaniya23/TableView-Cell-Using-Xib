//
//  simpleTableViewCell.swift
//  table-cell-xib-sample
//
//  Created by iMac on 24/10/20.
//

import UIKit

class simpleTableViewCell: UITableViewCell {
    @IBOutlet var labelName : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
