//
//  ViewController.swift
//  Browser
//
//  Created by Oleg Bilyk on 9/14/17.
//  Copyright © 2017 Oleg Bilyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func search(_ sender: AnyObject) {
        if let text = textField.text {
            
            if let search = URL(string: text) {
                let field = URLRequest(url: search)
                webView.loadRequest(field)
            }
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
      webView.goBack()
    }
    
    @IBAction func forward(_ sender: Any) {
      webView.goForward()
    }
        override func viewDidLoad() {
            let google = NSURL(string: "https://google.com")
            let request = NSURLRequest(url: google! as URL)
            webView.loadRequest(request as URLRequest)
            
            
                    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}
