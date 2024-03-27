//
//  Video.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-26.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
    
}
