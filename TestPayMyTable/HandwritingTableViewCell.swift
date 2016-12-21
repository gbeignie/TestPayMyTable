//
//  HandwritingTableViewCell.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 21/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import UIKit

class HandwritingTableViewCell: UITableViewCell {

    var handwriting : Handwriting? = nil

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateWithHandwriting(handwriting: Handwriting) {
        self.handwriting = handwriting
        
        self.titleLabel.text        = handwriting.title
    }

    
}
