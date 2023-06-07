//
//  MoviesCardView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct MoviesCardView: View {
    var movie: Movie
    @State private var showDetails: Bool = false
    var body: some View {
        ZStack {
            Image(Constants.movieDetailsBackgroundColor)
                .resizable()
                .opacity(0.9)
            VStack (alignment: .center, spacing: 15) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 12)
                    .frame(height: 300)
                    .offset(y: 5)
                VStack(alignment: .center) {
                    Text(movie.title)
                        .font(.custom(Constants.customFontBubblesBold, size: 30))
                        .shadow(radius: 3)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing,])
                    HStack {
                        Text("Pedro Pascal")
                            .font(.custom(Constants.customFontBubblesBold, size: 24))
                        Text("as: \(movie.role)")
                            .font(.custom(Constants.customFontBubblesRegular, size: 20))
                    } //hstack
                    .offset(y: 5)
                    .shadow(radius: 5)
                } //vstack
            } //vstack
        }
        .frame(height: 430)
        .cornerRadius(30, corners: .allCorners)
    }
}

struct MoviesCardView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesCardView(movie: movieData[0])
    }
}