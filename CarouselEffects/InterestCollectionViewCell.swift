//
//  InterestCollectionViewCell.swift
//  CarouselEffect
//
//  Created by Mariak Achuoth on 2019-03-03.
//  Copyright © 2019 Mariak Achuoth. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var InterestTitleLabel: UILabel!
    
    var interest: Interest!{
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        if let interest = interest{
            featuredImageView.image = interest.featuredImage
           // backgroundColorView.backgroundColor = interest.color
            InterestTitleLabel.text = interest.title
        }else{
            featuredImageView.image = nil
             //backgroundColorView.backgroundColor = nil
            InterestTitleLabel.text = nil
        }
        backgroundColorView.layer.cornerRadius = 10.0
        backgroundColorView.layer.masksToBounds = true
        featuredImageView.layer.cornerRadius = 10.0
        featuredImageView.layer.masksToBounds = true
    }
}
