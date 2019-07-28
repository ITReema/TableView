//
//  HomeTableViewCell.swift
//  TableView
//
//  Created by mac_os on 25/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var toolImageView: UIImageView!
    @IBOutlet weak var toolNameLabel: UILabel!

    var tool: tool! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        toolImageView.image = tool.image
        toolNameLabel.text = tool.name
    }

}
