//
//  ViewController.swift
//  Web API Call
//
//  Created by BlueHorse MacBook Pro on 14/02/18.
//  Copyright © 2018 Bluehorse Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tvDisplay: UILabel!
    var responseString:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        callApi()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
  
    func callApi() {

        //-----------------
        let url = URL(string: "http://jsonplaceholder.typicode.com/users/1")
        URLSession.shared.dataTask(with:url!, completionHandler: {(data, response, error) in
            guard let data = data, error == nil else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                            let s = String(describing: json)
                 print(s)
                DispatchQueue.main.sync(execute: {
                    self.tvDisplay.text = s
                    
                })
                

            } catch let error as NSError {
                print(error)
            }
        }).resume()
    }
    
}

