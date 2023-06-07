//
//  Interesting FactsView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct InterestingFactsView: View {
    var body: some View {
        VStack(spacing: 0) {
            TitleView(title: Constants.interestingFacts, color: .white)
            TabView {
                ForEach(factsData, id: \.self) { fact in
                    Group {
                        Text(fact)
                            .font(.system(size: 20))
                            .shadow(radius: 8)
                            .multilineTextAlignment(.center)
                    } //group
                    .padding()
                    .background(
                        Color(.systemCyan)
                            .opacity(0.3)
                            .cornerRadius(70, corners: .allCorners)
                            .frame(height: 180)
                    )
                }
            }
            .tabViewStyle(.page)
            .frame(height: 200)
        }
    }
}

struct InterestingFactsView_Previews: PreviewProvider {
    static var previews: some View {
        InterestingFactsView()
    }
}
