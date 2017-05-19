//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Ross on 08/05/2017.
//  Copyright © 2017 Braaaaap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view, typically from a nib.

        
//        let url = URL(string: "http://www.stackoverflow.com")!
//        
//        webview.loadRequest(URLRequest(url:url))
// 
// 
//        
//        webview.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)
// 
        
        if let url = URL(string: "https://www.stackoverflow.com") { //This URL can be created from the url string
        
            let request = NSMutableURLRequest(url: url) //making a request to visit the website
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) { //creating a task/session using the request that we used in the former line
                
                data, response, error in //checking to see if there is an error in the code below
                
                if error != nil {
                
                print(error!) // display an error
            
                }else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue) // seeing if we can get any data variable, if we can, we get it from the utf8 data
                        
                        print(dataString)
                        
                        DispatchQueue.main.sync(execute: {
                        
                        //Update UI
                        
                        })

                    }
                    
                }
                
                           }
            
            task.resume()
        
        }
        
        print("Hi There!")
 
    }
 
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

