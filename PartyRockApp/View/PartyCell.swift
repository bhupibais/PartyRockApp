//
//  PartyCellTableViewCell.swift
//  PartyRockApp
//
//  Created by BhupinderJit Bais on 2017-08-12.
//  Copyright © 2017 BhupinderJit Bais. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI (partyRock: PartyRock)
   {
      videoTitle.text = partyRock.vidoeTitle
    
      let url = URL(string: partyRock.imageURL)!
    
    DispatchQueue.global().async {
        do
        {
            let data = try Data(contentsOf: url)
            DispatchQueue.global().sync {
                self.videoPreviewImage.image = UIImage(data: data)
            }
            
        } catch {
            //handle the error
        }
    }
    
  }

}
