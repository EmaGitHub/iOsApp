//
//  HttpViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 05/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

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
    
        self.makeRequest(remoteUrl: editTextHttp.text!)
        
        //resultLabel!.text = String(decoding: , as:UTF8.self)
        
        }
    
    func makeRequest(remoteUrl: String){
        
        let parameters: Parameters = ["": ""]
        
        
        let url = "https://www.google.it"
        Alamofire.request( url, parameters: parameters).validate().responseString { response in
            switch response.result {
            case .success(let data):
                //let json = JSON(data)
                //let text = json["rawString"]
                print(data)
                self.resultLabel.text = data
                
            case .failure(let error):
                print("Request failed with error: \(error)")
            }
        }
        
    }
        
}

