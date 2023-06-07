//
//  PedroPascalLandTabView.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import SwiftUI

struct PedroPascalLandTabView: View {
    var body: some View {
        TabView {
            PresentationView()
                .tabItem {
                    Label(Constants.home, systemImage: Constants.house)
                } //tabItem
                .toolbarBackground(.hidden, for: .bottomBar)
            DeveloperInfoView()
                .tabItem {
                    Label(Constants.developerInfo, systemImage: Constants.info)
                }
                .toolbarBackground(.hidden, for: .bottomBar)
        }
        .tint(.pink)
    }
}

struct PedroPascalLandTabView_Previews: PreviewProvider {
    static var previews: some View {
        PedroPascalLandTabView()
    }
}
