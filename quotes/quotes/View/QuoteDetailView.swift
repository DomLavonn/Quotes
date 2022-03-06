//
//  QuoteDetailView.swift
//  quotes
//
//  Created by Domanik Johnson on 3/5/22.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote:Quote
    
    var body: some View {
        VStack(alignment: .center) {
                Text(quote.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                ForEach(quote.quotes, id:\.self){ qu in
                    Text(qu)
                        .padding()
                }
                
            }.foregroundColor(Color.black)
        }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        var quote = QuoteModel().quotes[0]
        
        QuoteDetailView(quote: quote)
    }
}
