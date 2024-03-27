//
//  InsetFactView.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-26.
//

import SwiftUI

struct InsetFactView: View {
    
    var animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}
