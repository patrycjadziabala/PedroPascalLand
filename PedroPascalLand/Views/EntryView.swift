//
//  ContentView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct EntryView: View {
    @State private var showEntry: Bool = true
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(4)
//            .delay(0.25)
    }
    @State private var showHeadline: Bool = false
    var body: some View {
        if showEntry {
            ZStack {
                GeometryReader { geometry in
                    VStack {
                        if geometry.frame(in: .global).minY <= 0 {
                            Image("pedro1")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .frame(height: 767)
                        } else {
                            Image("pedro1")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .frame(height: 767)
                        }
                    } //vstack
                } //geomerty
                VStack {
//                    Spacer()
//                    Spacer()
                    HeaderView()
                        .padding()
//                    Spacer()
                    EnterButtonView(showEntry: $showEntry)
                } //vstack
                .animation(slideInAnimation, value: showHeadline)
                .offset(x: showHeadline ? 0 : 400, y: 100)
            }//zstack
            .onAppear {
                showHeadline = true
            }
            .onDisappear {
                showHeadline = false
            }
        } else {
            PresentationView()
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
