//
//  CircleLabel.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 13/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit

class CircleLabel: UILabel {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    func commonInit(){
        self.layer.cornerRadius = self.bounds.width/2
        self.clipsToBounds = true
        self.textColor = UIColor.white
        self.setProperties(borderWidth: 1.0, borderColor:UIColor.black)
        self.textColor = UIColor.darkGray
        self.backgroundColor = UIColor.cyan
    }
    func setProperties(borderWidth: Float, borderColor: UIColor) {
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor.cgColor
    }
}
