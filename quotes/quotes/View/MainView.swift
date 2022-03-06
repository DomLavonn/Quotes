//
//  MainView.swift
//  quotes
//
//  Created by Domanik Johnson on 3/6/22.
//

import SwiftUI

struct MainView: View {
    // Start with two way binding: $
    @State var tabIndexVar: Int = 1

    var body: some View {
        
        TabView(selection: $tabIndexVar){
            // MARK: Feature View
            Text("Feature View")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Feature")
                    }
                }.tag(1)
            
            // MARK: Quote View
            QuoteView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }.tag(2)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
