//
//  ViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 05/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewHome: UIImageView!
    
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let white = UIColor.white
        //let red = UIColor.red
        
        let lbl = UILabel(frame: CGRect(x:50, y:150, width:200, height:30))
        lbl.text = "Hi Everyone!!"
        lbl.textColor = white
        
        let img = UIImage(named: "iOs.png")
        let imageView = UIImageView(image: img)
        imageView.frame = CGRect(x: 300, y: 100, width: 100, height: 100)
        
        self.view.addSubview(imageView)
        self.view.addSubview(lbl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

