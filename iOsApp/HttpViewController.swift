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
        
                self.editTextHttp.text = "https://"
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
    @IBOutlet weak var resultTextView: UITextView!
    
    @IBAction func buttonHttpAction(_ sender: UIButton) {
    
        self.makeRequest(remoteUrl: editTextHttp.text!)

        }
    
    func makeRequest(remoteUrl: String){
        
        let parameters: Parameters = ["": ""]
        
        let url = self.editTextHttp.text!
        Alamofire.request( url, parameters: parameters).validate().responseString { response in
            switch response.result {
            case .success(let data):

                self.resultTextView.text = data
                
            case .failure(let error):
                print("Request failed with error: \(error)")
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // Controllo se il segue ha un identifier o meno, se non ce l'ha esco dalla func
        guard let identifier = segue.identifier else {
            print("il segue non ha un identifier, esco dal prepareForSegue")
            return
        }
        
        // Controllo l'identifier perché potrebbero esserci più di un Segue che parte da questo VC
        switch identifier {
        case "webViewSegue":
            // Accedo al destinationViewController del segue e lo casto del tipo di dato opportuno
            // Modifico la variabile d'appoggio con il contenuto che voglio inviare
            let vc_destinazione = segue.destination as! WebViewViewController
            vc_destinazione.stringaDiPassaggio = self.editTextHttp.text!
            
        default:
            return
        }
    }
    @IBAction func segueAction(_ sender: Any) {
        
        self.performSegue(withIdentifier: "webViewSegue", sender: nil)
    }

    
    
}

