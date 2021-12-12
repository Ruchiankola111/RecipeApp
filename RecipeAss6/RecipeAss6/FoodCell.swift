//
//  CityCell.swift
//  MyTableView
//
//  Created by DCS on 26/11/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    
    //step 1
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        return imageView
    }()
    private let myLabel:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.layer.cornerRadius = 15
        label.layer.masksToBounds = true
        label.textAlignment = .center
        label.tintColor = UIColor(red: 1.00, green: 0.80, blue: 0.00, alpha: 1.00)
        label.backgroundColor = UIColor(red: 1.00, green: 0.60, blue: 0.20, alpha: 1.00)
        label.textColor = .black
        label.font = UIFont(name: "AppleSDGothicNeo-Thin" , size: 25)
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 2
        return label
    }()
    
    
    //step 2
    func setupCityCellWith(title name: String){
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        
        myImageView.frame = CGRect(x: 6, y:4, width: 360, height: 230)
        myLabel.frame = CGRect(x: 6, y: myImageView.bottom - 35, width: 360, height: 40 )
        
        myImageView.image = UIImage(named: name)
        myLabel.text = name
    }
}

