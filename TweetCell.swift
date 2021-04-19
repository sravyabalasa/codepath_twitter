//
//  TweetCell.swift
//  Twitter
//
//  Created by Sravya Balasa on 4/18/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet var tweetImageView: UIImageView!
    @IBOutlet var tweetText: UILabel!
    @IBOutlet var tweetUsername: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
