//
//  CardFront.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//

import Foundation

import SwiftUI

/// A struct that represents the front of a card
struct CardFrontName : View {

    /// The width of the card
    let width : CGFloat
    /// The height of the card
    let height : CGFloat
    /// The degree of rotation for the card
    @Binding var degree : Double
    /// image for the card
    let imageName : String
    let coverColor : UInt
    @ScaledMetric var contentSpace = 10
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.black), lineWidth: 3)
                .opacity(0.5)
                .frame(width: width, height: height).shadow(color: .white, radius: 5)

            RoundedRectangle(cornerRadius: 20)
                .fill(Color(coverColor).opacity(0.95))
                .frame(width: width, height: height)
                .shadow(color: .gray, radius:5, x: 0, y: 0)
            
            VStack(spacing:contentSpace){
                Image(imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                
            }
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

struct CardFrontName_previews: PreviewProvider {
    static var previews: some View {
        CardFrontName(width: 200, height:250, degree: .constant(0), imageName: "email", coverColor: 0xFEC260 )
    }
}
