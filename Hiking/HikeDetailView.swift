//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Bening Ranum on 08/05/23.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    @State private var zoomed: Bool = false

    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            Text(String(format: "%.2f miles", hike.miles))
        }
        .padding(.leading)
        .padding(.trailing)
        .createNavigationTitle(
            Text(hike.name),
            displayMode: .inline
        )
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: .init(name: "Sulfuric Canyon",
                                   imageURL: "img_landscape",
                                   miles: 10.0))
    }
}
