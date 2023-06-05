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
            ImageView(height: 550)
            VStack {
                Spacer()
                Spacer()
                ZStack {
                    Image(Constants.PresentationViewBackground)
                        .resizable()
                        .edgesIgnoringSafeArea(.bottom)
                        .frame(height: 350)
                        .cornerRadius(80, corners: [.topLeft, .topRight])
                        .scaledToFit()
                        .frame(width: 400)
                        .padding()
                    PresentationTableView()
                        .padding()
                }
            }
        }
    }
}

struct PresentationView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationView()
    }
}
