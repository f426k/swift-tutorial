//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/07.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon: Self { Self() }
}
