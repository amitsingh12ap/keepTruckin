//
//  SearchedCityInfoCell.swift
//  ASKeepTruckin
//
//  Created by 13216146 on 24/09/20.
//  Copyright © 2020 13216146. All rights reserved.
//

import UIKit

class SearchedCityInfoCell: UITableViewCell {

    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var subHeaderLbl: UILabel!
    @IBOutlet weak var trailingLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(with model: Geonames) {
        self.headerLbl.text = model.toponymName
        self.subHeaderLbl.text = model.adminName1
        self.trailingLbl.text = model.countryName
    }
    
}
