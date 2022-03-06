//
//  ContentView.swift
//  quotes
//
//  Created by Domanik Johnson on 3/5/22.
//

import SwiftUI

struct QuoteView: View {
    
@ObservedObject var quotes = QuoteModel()
    
    var body: some View {
        
        NavigationView {

        ScrollView{
            
                ForEach(quotes.quotes){ item in
                   
                    NavigationLink(destination: QuoteDetailView(quote: item), label:{
                        QuoteMainView(quote: item)
                    })
                        
                    }
        
        }.navigationBarTitle("Quotes")
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
