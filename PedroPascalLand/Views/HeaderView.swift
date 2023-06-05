//
//  HeaderView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
            ZStack (alignment: .leading) {
                Rectangle()
                    .frame(width: 350, height: 100)
                    .foregroundColor(.gray.opacity(0.5))
                VStack (alignment: .leading) {
                    Text(String("\(Constants.entryViewHeaderText)"))
                        .font(Font.custom(String("\(Constants.customFontBubblesRegular)"), size: 18))
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                        .padding(.top)
                    Text(String("\(Constants.nameText)"))
                        .font(Font.custom(String("\(Constants.customFontBubblesBold)"), size: 45))
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }
            }
        }
    }

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
        
    }
}
