//
//  MarketauxAPI.swift
//  Project App Playground
//
//  Created by Shreyas Veturi on 25/07/2024.
//

import Foundation

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCryptoPrice()
    }
    
    func fetchCryptoPrice() {
        let apiKey = "bHraR8XR9eGBf6zK4xtq3BFDs9x0ik21MhbsTzek"
        let urlString = "https://api.marketaux.com/v1/cryptocurrency/prices?symbol=BTC&api_token=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    print("JSON: \(json)")
                    // Process the JSON to get the price
                    if let data = json["data"] as? [[String: Any]], let first = data.first {
                        let price = first["price"] as? Double
                        print("BTC Price: \(price ?? 0)")
                    }
                }
            } catch let jsonError {
                print("Error serializing JSON: \(jsonError)")
            }
        }
        
        task.resume()
    }
}
