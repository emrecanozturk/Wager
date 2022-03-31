//
//  EventTableViewCell.swift
//  Wager
//
//  Created by Emrecan OZTURK on 1.04.2022.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var statusView: UIView!
    
    var isActive: Bool = false

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        statusView.backgroundColor = isActive ? .red : .green
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(title: String?, group: String?, description: String?, isActive: Bool) {
        headlineLabel.text = title
        groupLabel.text = group
        descriptionLabel.text = description
        self.isActive = isActive
        
        statusView.backgroundColor = isActive ? .red : .green
    }

}
