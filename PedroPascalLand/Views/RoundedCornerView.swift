//
//  RoundedCornerView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCornerView(radius: radius, corners: corners))
    }
}

struct RoundedCornerView: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


struct RoundedCornerView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCornerView(radius: 200, corners: [.topLeft, .topRight])
            .padding()
            .frame(width: 100, height: 100)
    }
}
