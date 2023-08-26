//
//  CardFlip.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//

import Foundation
import SwiftUI

/// A struct that represents the main view of the card flip animation
struct CardFlipView: View {
    /// The degree of rotation for the back of the card
    @State var backDegree = 0.0
    /// The degree of rotation for the front of the card
    @State var frontDegree = -90.0
    /// A boolean that keeps track of whether the card is flipped or not
    @State var isFlipped = false

    /// The width of the card
    let width: CGFloat
    /// The height of the card
    let height: CGFloat
    /// image for the front card
    let imageName : String
    let content: String
    let coverColor:  UInt
    /// The duration and delay of the flip animation
    let durationAndDelay: CGFloat = 0.3


    /// A function that flips the card by updating the degree of rotation for the front and back of the card
    func flipCard() {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)) {
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)) {
                backDegree = 0
            }
        }
    }

    var body: some View {
        ZStack {
            CardBackName(width: width, height: height, degree: $frontDegree, content: content)
            CardFrontName(width: width, height: height, degree: $backDegree, imageName: imageName, coverColor: coverColor)
        }.onTapGesture {
            flipCard()
        }
    }
}


struct CardFlipView_Preview: PreviewProvider {
    static var previews: some View {
        CardFlipView(width: 160, height: 170, imageName: "memoji", content: "Hello World", coverColor: 0xFEC260)
        
    }
}
