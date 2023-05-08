//
//  Hike.swift
//  Hiking
//
//  Created by Bening Ranum on 07/05/23.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        [
            .init(name: "Salmonberry Trail", imageURL: "img_sunset", miles: 6),
            .init(name: "Tom, Dick, and Harry Mountain", imageURL: "img_landscape", miles: 5.7),
            .init(name: "Tamanawas Falls", imageURL: "img_natural", miles: 5)
        ]
    }

    static func empty() -> [Hike] {
        []
    }
}
