//
//  ScreenViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 05/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit

class ScreenViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var conto_banca: Double? = 4
        
        self.textView.text = "Nel conto ci sono: \(conto_banca) (optional) \(conto_banca!) (non optional) euro"
        // Nel mio conto ci sono Optional(4.0) euro
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

}
