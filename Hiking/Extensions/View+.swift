//
//  View+.swift
//  Hiking
//
//  Created by Bening Ranum on 08/05/23.
//

import SwiftUI

extension View {
    @discardableResult
    func createNavigationTitle(_ title: String) -> some View {
        if #available(iOS 14.0, *) {
            return self.navigationTitle(title)
        } else {
            return self.navigationBarTitle(title)
        }
    }

    @discardableResult
    func createNavigationTitle(_ title: Text,
                               displayMode: NavigationBarItem.TitleDisplayMode) -> some View {
        if #available(iOS 14.0, *) {
            return self.navigationTitle(title)
                .navigationBarTitleDisplayMode(displayMode)
        } else {
            return self.navigationBarTitle(title, displayMode: displayMode)
        }
    }
}
