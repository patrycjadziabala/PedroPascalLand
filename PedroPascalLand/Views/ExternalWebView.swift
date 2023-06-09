//
//  ExternalWebView.swift
//  PedroPascalLand
//
//  Created by Patka on 09/06/2023.
//

import SwiftUI

struct ExternalWebView: View {
    var body: some View {
        VStack {
            TitleView(title: Constants.findOutMore, color: .white)
            Spacer()
            Link(destination: URL(string: "https://www.imdb.com/name/nm0050959/")!)  {
                Group {
                        Text(Constants.iMDb)
                            .font(.custom(Constants.customFontBubblesRegular, size: 18))
                        Image(systemName: Constants.filmImage)
                } //group
                .tint(.black)
            } //link
            Spacer()
            Link(destination: URL(string: "https://en.wikipedia.org/wiki/Pedro_Pascal")!)  {
                Group {
                        Text(Constants.wiki)
                            .font(.custom(Constants.customFontBubblesRegular, size: 18))
                        Image(systemName: Constants.network)
                } //group
                .tint(.black)
            } //link
        } //vstack
        .frame(height: 150)
    }
}

struct ExternalWebView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebView()
    }
}
