//
//  PresentationView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct PresentationView: View {
    var body: some View {
        ZStack (alignment: .top){
            Color(Constants.customLightPink)
            ImageView(height: 550)
            ScrollView {
                VStack (spacing: 0) {
                    Spacer()
                        .frame(height: 350)
                    PresentationTableView()
                        .padding()
                    InterestingFactsView()
                        .frame(width: 400)
                 MoviesCardView()
                        .frame(width: 380, height: 550)
                        .padding()
                    ExternalWebView()
                } //vstack
            } //scroll view
        } //zstack
    }
    
    struct PresentationView_Previews: PreviewProvider {
        static var previews: some View {
            PresentationView()
        }
    }
}
