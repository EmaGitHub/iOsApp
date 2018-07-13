//
//  WebViewViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 13/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit

class WebViewViewController: UIViewController {

    @IBOutlet weak var testText: UITextView!
    var stringaDiPassaggio: String = String()
    
    @IBOutlet weak var testTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.testText.text = self.stringaDiPassaggio
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
