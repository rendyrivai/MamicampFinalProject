//
//  KostTableViewCell.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import UIKit

class KostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageKostView: UIImageView!
    @IBOutlet weak var namaKost: UILabel!
    @IBOutlet weak var categoryKost: UILabel!
    @IBOutlet weak var priceKost: UILabel!
    @IBOutlet weak var detailKost: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
