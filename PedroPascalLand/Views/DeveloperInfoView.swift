//
//  AppInfoView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct DeveloperInfoView: View {
    var body: some View {
        ZStack {
            Image(Constants.movieDetailsBackgroundColor)
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .opacity(0.6)
            VStack {
                TitleView(title: Constants.developerInfo , color: .black)
                    .shadow(radius: 6)
                
                VStack (spacing: 30) {
                    ForEach(developerInfo, id: \.id) { developerInfo in
                        HStack {
                            Text(developerInfo.name)
                            Spacer()
                            if developerInfo.isLink {
                                Link(destination: URL(string: developerInfo.description)!) {
                                    Text(developerInfo.description)
                                        .font(.custom(Constants.customFontBubblesBold, size: 25))
                                }
                            } else {
                                Text(developerInfo.description)
                                    .font(.custom(Constants.customFontBubblesBold, size: 25))
                            }
                        }
                        Divider()
                    }
                    VStack {
                        ForEach(linksData, id: \.id) { linksData in
                        Spacer()
                            if linksData.isLink {
                                Link(destination: URL(string: linksData.description)!) {
                                    Text(linksData.description)
                                }
                            } else {
                                Text(linksData.description)
                            }
                           
                        }
                    }
                    .multilineTextAlignment(.center)
                    Spacer()
                } //vstack
                .offset(y: 40)
                .font(.custom(Constants.customFontBubblesRegular, size: 20))
                .padding()
                Spacer()
            }
        }
    }
}

struct AppInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperInfoView()
    }
}
