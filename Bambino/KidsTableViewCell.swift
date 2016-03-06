//
//  KidsTableViewCell.swift
//  Bambino
//
//  Created by Alex De la Rosa on 06/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class KidsTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbEdad: UILabel!
    @IBOutlet weak var lbPediatra: UILabel!
    @IBOutlet weak var imgImagen: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
