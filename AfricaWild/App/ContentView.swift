//
//  ContentView.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2023-11-15.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Africa")
        }
    }
}

#Preview {
    ContentView()
}
