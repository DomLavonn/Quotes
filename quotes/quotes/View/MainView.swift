//
//  MainView.swift
//  quotes
//
//  Created by Domanik Johnson on 3/6/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            // MARK: Feature View
            Text("Feature View")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Feature")
                    }
                }
            
            // MARK: Quote View
            QuoteView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
