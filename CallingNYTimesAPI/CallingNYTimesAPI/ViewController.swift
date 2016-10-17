//
//  ViewController.swift
//  CallingNYTimesAPI
//
//  Created by Flatiron School on 10/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NewYorkTimesAPIClient.getBestSellerInformationWith { (arrayOfDictionary) in
            print("**************************")
            print(arrayOfDictionary)
            print("**************************")

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

