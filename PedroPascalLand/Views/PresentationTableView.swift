//
//  PresentationTableView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct PresentationTableView: View {
    var body: some View {
            HStack {
                VStack {
                    ForEach(Array(basicPersonData.keys), id: \.self, content: { key in
                        VStack (alignment: .trailing) {
                            Text(key)
                                .font(Font.custom(Constants.customFontBubblesBold, size: 20))
                                
                            Divider()
                        } //vstack
                        
                    })
                }
                
                VStack {
                    HStack {
                        Divider()
                    }
                    Image(Constants.logo)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(260, corners: .allCorners)
                        .frame(width: 80)
                    HStack {
                        Divider()
                    }
                } //vstack
                
                VStack {
                    ForEach(Array(basicPersonData.values), id: \.self, content: {
                        value in
                        VStack (alignment: .leading){
                            Text(value)
                                .font(Font.custom(Constants.customFontBubblesRegular, size: 20))
                            Divider()
                        }
                    })
                }
                Spacer()
            } //hstack
            .padding()
            .frame(height: 350)
            .background(Image(Constants.presentationViewBackground)
                .resizable()
                .edgesIgnoringSafeArea(.bottom)
                .frame(height: 350)
                .cornerRadius(80, corners: [.topLeft, .topRight])
                .scaledToFit()
                .frame(width: 400)
                .padding())
    }
}
struct PresentationTableView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationTableView()
            .previewLayout(.sizeThatFits)
    }
}

