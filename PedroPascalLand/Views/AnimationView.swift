//
//  AnimationView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct AnimationView: View {
//    @State private var isAnimated: Bool = false
    @State private var randomCircle = Int.random(in: 12...16)
       @State private var isAnimating: Bool = false
       
       // random coordinate
       func randomCoordinate(max: CGFloat) -> CGFloat {
           CGFloat.random(in: 0...max)
       }
       // random size
       func randomSize() -> CGFloat {
           CGFloat(Int.random(in: 10...300))
       }
       // random scale
       func randomScale() -> CGFloat {
           CGFloat(Double.random(in: 0.1...2.0))
       }
       // random speed
       func randomSpeed() -> Double {
           Double.random(in: 0.025...1.0)
       }
       //random delay
       func randomDelay() -> Double {
           Double.random(in: 0...2)
       }
    
    func randomRotation() -> Double {
        Double.random(in: -180.0...180.0)
    }
    func randomPosition(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                ForEach(0...10, id: \.self) { item in
//                    Circle()
                    Image(Constants.pedroFloatingHead)
                        .resizable()
                        .scaledToFit()
//                        .foregroundColor(.gray)
                        .opacity(0.6)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .clipShape(Circle())
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever(autoreverses: true)
                                .speed(1)
                                .delay(randomDelay())
                            , value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                }
            } // zstack
            .drawingGroup()
        } // geometry
        
        
//        ZStack {
//            ForEach(0...9, id: \.self) { image in
//                GeometryReader { geometry in
//                    Image(Constants.pedroFloatingHead)
//                        
////                        .renderingMode(.template)
//                        .resizable()
//                        .scaledToFit()
//                        .cornerRadius(90, corners: .allCorners)
//                        .frame(width: 100)
//                        .position(x: randomPosition(max: geometry.size.width), y: randomPosition(max: geometry.size.height))
//                        .opacity(0.6)
//                        .blur(radius: 0.7)
//                        .rotationEffect(.degrees(randomRotation()))
//                        .animation(Animation.easeInOut(duration: 75).repeatForever(autoreverses: false).speed(3), value: isAnimated).onAppear {
//                            isAnimated = true
//                        }
//                }
//                .edgesIgnoringSafeArea(.top)
//            }
//        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
