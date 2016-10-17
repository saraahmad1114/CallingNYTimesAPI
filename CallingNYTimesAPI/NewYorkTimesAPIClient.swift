//
//  NewYorkTimesAPIClient.swift
//  CallingNYTimesAPI
//
//  Created by Flatiron School on 10/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class NewYorkTimesAPIClient {

    class func getBestSellerInformationWith (completion:(NSArray)->()){
        
        let url = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?api-key=\(Secrets.NYTimesAPIKey)"
        
        let nsURL = NSURL(string: url)
        
        guard let unwrappedNSURL = nsURL else {print("NSURL DID NOT UNWRAP"); return}
        
        let request = NSURLRequest(URL: unwrappedNSURL)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) in
            guard let unwrappedData = data else {print("DATA DID NOT UNWRAP"); return}
            
            let responseDictionary = try? NSJSONSerialization.JSONObjectWithData(unwrappedData, options: []) as! NSDictionary
            
            guard let unwrappedResponseDictionary = responseDictionary else {print("RESPONSE DICTIONARY DID NOT UNWRAP"); return}
            
            let resultsArray = unwrappedResponseDictionary["results"] as? NSArray
            
            guard let unwrappedResultsArray = resultsArray else {print("RESULTS ARRAY DID NOT UNWRAP"); return}
            
            for singleDictionary in unwrappedResultsArray {
            
                let singleDictionary = singleDictionary as? NSDictionary
                
            
            }
            
            
        }
        
        
    }

}
