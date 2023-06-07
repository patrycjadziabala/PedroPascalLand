//
//  AnimationView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct AnimationView: View {
    @State private var isAnimated: Bool = false
    func randomRotation() -> Double {
        Double.random(in: -180.0...180.0)
    }
    func randomPosition(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    var body: some View {
        ZStack {
            ForEach(0...9, id: \.self) { image in
                GeometryReader { geometry in
                    Image(Constants.pedroFloatingHead)
                        
//                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(90, corners: .allCorners)
                        .frame(width: 100)
                        .position(x: randomPosition(max: geometry.size.width), y: randomPosition(max: geometry.size.height))
                        .opacity(0.6)
                        .blur(radius: 0.7)
                        .rotationEffect(.degrees(randomRotation()))
                        .animation(Animation.easeInOut(duration: 75).repeatForever(autoreverses: false).speed(3), value: isAnimated).onAppear {
                            isAnimated = true
                        }
                }
                .edgesIgnoringSafeArea(.top)
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
