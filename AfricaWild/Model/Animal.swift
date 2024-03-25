//
//  Animal.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-24.
//

import Foundation

struct Animal: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
    
}
