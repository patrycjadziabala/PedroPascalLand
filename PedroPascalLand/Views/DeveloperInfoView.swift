//
//  AppInfoView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct DeveloperInfoView: View {
    @State private var isAnimating: Bool = true
    var body: some View {
        ZStack {
            Image(Constants.movieDetailsBackgroundColor)
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .opacity(0.6)
            if isAnimating {
                AnimationView()
            }
            VStack {
                TitleView(title: Constants.developerInfo , color: .black)
                    .shadow(radius: 6)
                
                VStack (spacing: 30) {
                    ForEach(developerInfo, id: \.id) { developerInfo in
                        HStack {
                            Text(developerInfo.name)
                            Spacer()
                            Text(developerInfo.description)
                                .font(.custom(Constants.customFontBubblesBold, size: 22))
                                .shadow(radius: 6)
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
                    .font(.custom(Constants.customFontBubblesBold, size: 22))
                    .foregroundColor(.black)
                    .shadow(radius: 6)
                    Button {
                        isAnimating.toggle()
                    } label: {
                        Text(Constants.stopFloatingHeads)
                            .font(.custom(Constants.customFontBubblesBold, size: 15))
                            .shadow(radius: 6)
                            .background(
                                Capsule()
                                    .strokeBorder(lineWidth: 4)
                                    .shadow(radius: 6)
                                    .padding([.top, .bottom], -7)
                                    .padding([.leading, .trailing], -15)
                            )
                    } //button
                    .offset(y: 30)
                    .foregroundColor(.black)
                    .padding()
                    Spacer()
                    Spacer()
                    Spacer()
                } //vstack
                .offset(y: 50)
                .font(.custom(Constants.customFontBubblesRegular, size: 20))
                .padding()
                Spacer()
            } //vstack
            .offset(y: 45)
        } //zstack
    }
}

struct AppInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperInfoView()
    }
}
