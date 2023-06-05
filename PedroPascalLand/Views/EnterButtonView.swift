//
//  EnterButtonView.swift
//  PedroPascalLand
//
//  Created by Patka on 05/06/2023.
//

import SwiftUI

struct EnterButtonView: View {
    @Binding var showEntry: Bool
    
    var body: some View {
        Button {
            showEntry.toggle()
        } label: {
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("Enter")
                    .foregroundColor(.white)
                    .shadow(radius: 2)
            } //hstack
            .padding([.top, .bottom, .leading, .trailing], 2)
            .padding([.leading, .trailing])
            .background(
            Capsule()
                .strokeBorder(lineWidth: 1)
                .foregroundColor(.white)
                .shadow(radius: 2)
            )
        } // button
    }
}

struct EnterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EnterButtonView(showEntry: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}
