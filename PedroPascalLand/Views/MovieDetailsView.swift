//
//  MovieDetailsView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie: Movie
    var body: some View {
        ZStack {
            Image(Constants.movieDetailsBackgroundColor)
                .resizable()
                .edgesIgnoringSafeArea(.top)
            ScrollView {
                VStack (spacing: 20) {
                    Image(movie.image)
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 30)
                        .cornerRadius(50, corners: [.topLeft, .topRight])
                    Text(movie.title)
                        .font(.custom(Constants.customFontBubblesBold, size: 30))
                        .multilineTextAlignment(.center)
                        .shadow(radius: 13)
                    RatingView(movie: movie)
                    HStack (alignment: .center) {
                        VStack (alignment: .leading) {
                            Text(movie.year)
                            Text(movie.genre)
                                .offset(y: 8)
                        }
                        .offset(x: 8)
                        Image(movie.icon)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(90, corners: .allCorners)
                            .offset(x: 15)
                         
                        VStack (alignment: .center) {
                            Spacer()
                            Text("IbDb rating: \(movie.rating*2)")
                                .multilineTextAlignment(.center)
                                .offset(x: 8)
                            Spacer()
                        }
                        .padding()
                    }
                    .padding()
                    .font(.custom(Constants.customFontBubblesRegular, size: 21))
                    HStack {
                        Text(movie.actor)
                            .font(.custom(Constants.customFontBubblesBold, size: 23))
                        Text("as")
                        Text(movie.role)
                        }
                    .font(.custom(Constants.customFontBubblesRegular, size: 20))
                    ZStack {
                        Image(Constants.movieDetailsBackgroundColor)
                            .resizable()
                            .frame(height: 500)
                            .opacity(0.9)
                            .cornerRadius(60, corners: .allCorners)
                        Text(movie.plot)
                            .multilineTextAlignment(.center)
                        .font(.custom(Constants.customFontBubblesRegular, size: 15))
                    }
                    } //vstack
                }
            }
        }
    }


struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movieData[4])
    }
}
