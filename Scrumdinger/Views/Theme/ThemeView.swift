//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Yuliya Charniak on 07/02/2024.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme

    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: Theme.bubblegum)
        .frame(width: 200)
}
