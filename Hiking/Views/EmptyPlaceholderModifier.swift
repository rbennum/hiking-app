//
//  EmptyPlaceholderModifier.swift
//  Hiking
//
//  Created by Bening Ranum on 08/05/23.
//

import SwiftUI

struct EmptyPlaceholderModifier<Items: Collection>: ViewModifier {
    let items: Items
    let placeholder: AnyView

    @ViewBuilder
    func body(content: Content) -> some View {
        if !items.isEmpty {
            content
        } else {
            placeholder
        }
    }
}

extension View {
    func emptyPlaceholder<Items: Collection, PlaceholderView: View>(
        _ items: Items,
        _ placeholder: @escaping () -> PlaceholderView
    ) -> some View {
        modifier(
            EmptyPlaceholderModifier(items: items,
                                     placeholder: AnyView(placeholder()))
        )
    }
}
