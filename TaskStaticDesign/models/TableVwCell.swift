//
//  TableVwCell.swift
//  TaskStaticDesign
//
//  Created by Dipanwita Bardhan on 13/06/21.
//

import UIKit

class TableVwCell: UITableViewCell {
    
    //OUTlets
    @IBOutlet weak var backgroundVw : UIView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var frequencyLabel : UILabel!
    @IBOutlet weak var percentageLabel : UILabel!
    @IBOutlet weak var heartImage : UIImageView!
    @IBOutlet weak var selectUnselectImageView : UIImageView!
    @IBOutlet weak var selectUnselectAction : UIButton!
    var position:Int!
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
