//
//  CardBack.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//

import Foundation
import SwiftUI

/// A struct that represents the back of a card
struct CardBackName: View {
    /// The width of the card
    let width: CGFloat
    /// The height of the card
    let height: CGFloat

    /// The degree of rotation for the card
    @Binding var degree: Double
    
    /// text of the card
    let content: String

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(0x35155D), lineWidth: 2)
                .opacity(0.5)
                .frame(width: width, height: height).shadow(color: .white, radius: 5)

            RoundedRectangle(cornerRadius: 20)
                .fill(Color(0xffffff).opacity(0.95))
                .frame(width: width, height: height)
                .shadow(color: .gray, radius:5, x: 0, y: 0)

            VStack {
                Text(content).font(.system(size: 15)).fontWeight(.bold).multilineTextAlignment(.center).frame(width:150)
            }

        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
   
}

struct CardBackName_Preview: PreviewProvider {
    static var previews: some View {
        CardBackName(width: 200, height: 250, degree: .constant(0), content: "natalie_agus@sutd.edu.sg")
    }
}
