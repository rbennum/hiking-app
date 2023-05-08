//
//  HikeListView.swift
//  Hiking
//
//  Created by Bening Ranum on 07/05/23.
//

import SwiftUI

struct HikeListView: View {
    let hikes = Hike.all()

    var body: some View {
        NavigationView {
            List(hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetailView(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .createNavigationTitle("Hikings")
            .emptyPlaceholder(hikes) {
                Image(systemName: "nosign")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HikeListView()
    }
}

struct HikeCell: View {
    let hike: Hike

    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f miles", hike.miles))
            }
        }
    }
}
