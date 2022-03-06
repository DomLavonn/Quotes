//
//  Quote.swift
//  quotes
//
//  Created by Domanik Johnson on 3/5/22.
//

import Foundation

struct Quote: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var quotes: [String]
    var image: String
}
