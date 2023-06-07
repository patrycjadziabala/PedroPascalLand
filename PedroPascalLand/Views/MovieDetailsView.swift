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
                    Text("\(movie.title)")
                        .font(.custom(Constants.customFontBubblesBold, size: 30))
                        .multilineTextAlignment(.center)
                        .shadow(radius: 13)
                
                    HStack {
                        VStack {
                            Text(movie.year)
                            Text(movie.genre)
                                .offset(y: 8)
                        }
                        .padding()
                        Image(movie.icon)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(90, corners: .allCorners)
                        VStack (alignment: .center) {
                            RatingView(movie: movie)
                            Spacer()
                            Spacer()
                            Text("IbDb rating: \(movie.rating*2)")
                        }
                        .padding()
                    }
                    .font(.custom(Constants.customFontBubblesRegular, size: 21))
                    HStack {
                        Text(movie.actor)
                            .font(.custom(Constants.customFontBubblesBold, size: 23))
                        Text("as")
                        Text(movie.role)
                        }
                    .font(.custom(Constants.customFontBubblesRegular, size: 20))
                    }
                } // vstack
            }
        }
    }


struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movieData[3])
    }
}
