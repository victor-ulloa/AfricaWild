//
//  ExternalWeblinkView.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-26.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    if let url = URL(string: animal.link) {
                        Link(animal.name, destination: url)
                    }
                    
                }
                .foregroundStyle(.accent)
            }
        }
    }
}
