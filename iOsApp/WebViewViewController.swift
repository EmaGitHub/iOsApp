//
//  WebViewViewController.swift
//  iOsApp
//
//  Created by Emanuele Calvisi on 13/07/2018.
//  Copyright © 2018 Emanuele Calvisi. All rights reserved.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var testText: UITextView!
    var stringaDiPassaggio: String = String()
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.testText.text = "URL: " + self.stringaDiPassaggio
        
        let url = URL(string: self.stringaDiPassaggio)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
        //add observer to get estimated progress value
        //self.webView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil);
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
