//
//  MovieModel.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import Foundation

struct Movie: Identifiable {
  var id = UUID()
  var title: String
  var year: String
  var image: String
  var rating: Int
  var genre: String
  var role: String
}
