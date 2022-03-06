//
//  DataService.swift
//  quotes
//
//  Created by Domanik Johnson on 3/5/22.
//

import Foundation


class DataService {
    
    func getLocaleData() -> [Quote] {
        
        // get path from bundle
        let pathObj = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        if let retPath = pathObj {
            
            //get URL obj
            let url = URL(fileURLWithPath: retPath)
            
            do {
                
            //get data obj
             let data = try Data(contentsOf: url)
                
             // Create decoder
             let decoder = JSONDecoder()
                
            // Decode json
                do {
                    
                 var quotesArr =  try decoder.decode([Quote].self, from: data)
                    
                    // Loop through to assing id
                    for item in 0..<quotesArr.count {
                        quotesArr[item].id = UUID()
                    }
                    
                    return quotesArr
                    
                } catch{
                    print("Coming from decoding \(error)")

                }
                
            } catch{
                print("Coming from getting data obj \(error)")
            }
            
            
        }
        
        // Return empty quote array
        return [Quote]()
        
    }
}
