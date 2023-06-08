//
//  RatingView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct RatingView: View {
    var movie: Movie
    var body: some View {
        HStack {
            ForEach(1...movie.rating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(.pink)
                    .shadow(radius: 10)
            }
        } //hstack
    }
    
    
    struct RatingView_Previews: PreviewProvider {
        static var previews: some View {
            RatingView(movie: movieData[0])
        }
    }
}
