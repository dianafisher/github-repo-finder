//
//  GithubRepoCell.swift
//  GithubDemo
//
//  Created by Diana Fisher on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GithubRepoCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            descriptionLabel.text = repo.repoDescription
            avatarImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            ownerLabel.text = repo.ownerHandle
            starsLabel.text = "\(repo.stars ?? 0)"
            forksLabel.text = "\(repo.forks ?? 0)"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
