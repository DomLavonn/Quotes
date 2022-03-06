//
//  QuoteMainView.swift
//  quotes
//
//  Created by Domanik Johnson on 3/5/22.
//

import SwiftUI

struct QuoteMainView: View {
    var quote: Quote
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .frame(width: 330, height: 320, alignment: .center)
                .clipped()
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                if (quote.quotes.count != 0) {
                    Text(quote.quotes[0])
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                   
                }else {
                    Text("No Text")
                        .padding(.leading)

                    
                }
                Text("- \(quote.name)")
                    .padding([.top, .leading])

                
            }.padding(.horizontal)
            .foregroundColor(Color.white)
        }.padding(.bottom)
    }
}

struct QuoteMainView_Previews: PreviewProvider {
    static var previews: some View {
        var quote = QuoteModel()
        
        QuoteMainView(quote: quote.quotes[0])
    }
}
