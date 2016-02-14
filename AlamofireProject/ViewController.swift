//
//  ViewController.swift
//  AlamofireProject
//
//  Created by Pao Mac PC on 14.02.16.
//  Copyright © 2016 Anat.Kant. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "http://www.umori.li/api/sources")
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    
                    //let TableArray = [String]()
                    //TableArray.append(response.result.)
                    //print("Europe cities \(JSON["name"] as! NSDictionary)")
                }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

