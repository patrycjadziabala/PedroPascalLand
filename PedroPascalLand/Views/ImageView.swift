//
//  ImageView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI
struct ImageView: View {
    var height: Double
    
    var body: some View {
        
    
        
        Image(Constants.pedro10)
            .resizable()
            .scaledToFill()
            .frame(height: height)
            .ignoresSafeArea()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(height: 350)
    }
}
