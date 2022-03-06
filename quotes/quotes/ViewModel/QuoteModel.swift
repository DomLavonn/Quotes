//
//  QuoteModel.swift
//  quotes
//
//  Created by Domanik Johnson on 3/5/22.
//

import Foundation

class QuoteModel: ObservableObject {
    
   @Published var quotes:[Quote]
    
    init() {
        
        quotes = DataService().getLocaleData()
        
    }
}
