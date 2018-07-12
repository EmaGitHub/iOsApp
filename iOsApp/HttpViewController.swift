//
//  HttpViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 05/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit
import Alamofire

class HttpViewController: UIViewController {

    override func viewDidLoad() {
                 super.viewDidLoad()
        
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
    
    @IBOutlet weak var editTextHttp: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonHttpAction(_ sender: UIButton) {
    
        let remoteURL = URL(string: editTextHttp.text!)!
        
        Alamofire.request(remoteURL).response { response in
            print("Request: \(response.request)")
            print("Response: \(response.response)")
            print("Error: \(response.error)")
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")
            }
            
            resultLabel!.text = data
        
        }
        
    }
}
