//
//  ColorViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 05/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getCurrentDate()
        
        let myCustomLabel = CircleLabel(frame: CGRect(x: self.view.frame.size.width / 2 - 100, y: self.view.frame.size.height / 2 - 100, width: 200, height: 200))
        myCustomLabel.textColor = UIColor.white
        
        self.view.addSubview(myCustomLabel)

             DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.getCurrentDate()
                })
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDateSec: UILabel!
    
    func getCurrentDate() {

        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd/MMM/yyyy HH:mm:ss"

        let result = formatter.string(from: date)
        
        lblDate.text = "Current Time: " + result
        lblDate.backgroundColor = getRandomColor()
        lblDateSec.text = "Current Time: " + result
        lblDateSec.backgroundColor = getRandomColor()
    }
    
    
    func getRandomColor() -> UIColor{
        
        
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
    
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
}
