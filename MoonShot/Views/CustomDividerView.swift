//
//  CustomDividerView.swift
//  MoonShot
//
//  Created by Ангелина Шаманова on 16.2.23..
//

import SwiftUI

struct CustomDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDividerView()
    }
}
