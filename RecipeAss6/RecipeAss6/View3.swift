//
//  page3.swift
//  ReceipeApp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class View3: UIViewController {
    
    
    public  let Fname:UILabel = {
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
    
    private let DecLable:UILabel = {
        let label = UILabel()
        label.text = "Ingredients\n3 eggs\n1 water cup of sugar\n1/2 cup of olive oil\n1 cup of milk\n3 tablespoons cacao\n2 tablespoons spreadable chocolate\n1 package of baking powder\n1 package of vanilla\n2-2,5 cup of flour\n\nPreparation\n\nFirstly, you need to take a large bowl to mix all the ingredients. Break the eggs into this large bowl. Then, add 1 cup sugar and whisk well until the mixture is frothy. Start adding milk, liquid oil (preferably olive oil), cocoa and spreadable chocolate to the mixture. At this stage, you need to continue whisking. Then add the vanilla and flour and stir until the mixture becomes homogeneous. Add the baking powder in the final stage.\n\nTake a cake mould or a springform pan. Pour the prepared cake dough into a greased cake mould. Also, you can pour the springform pan as well. Then, bake the cake mixture in the oven preheated at 180 degrees for about 30 minutes. Once cooked, remove the cake from the oven. When the cake cools down, remove the cake from the mould and serve by slicing. If you want to remove the cake easier, you can use a springform pan. If you wish, you can sprinkle icing sugar on top of the cake during service. This will make you cake more attractive. Your cake is ready now. Bon Appétit!"
        label.numberOfLines = 30
        return label
    }()
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        view.backgroundColor = .white
        view.addSubview(myImageView)
        view.addSubview(Fname)
        myImageView.image = UIImage(named: Fname.text!)
        view.addSubview(DecLable)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myImageView.frame = CGRect(x: 10, y: 80, width: 355, height: 300)
        Fname.frame = CGRect(x: 10, y: myImageView.height + 90, width: 355, height: 45)
        DecLable.frame = CGRect(x: 11, y: 450, width: view.width - 20, height: 500)
        
    }
    
    
    
}
