//
//  InsetGalleryView..swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-24.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
        
    }
}
