//
//  TitleView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI
struct TitleView: View {
    var title: String
    var color: Color
    var body: some View {
        Text(title)
            .font(.custom(Constants.customFontBubblesBold, size: 40))
            .foregroundColor(color)
            .shadow(radius: 5)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Interesting facts", color: .red)
            .previewLayout(.sizeThatFits)
    }
}
