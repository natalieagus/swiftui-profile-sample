//
//  AnimateColorText.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//

import Foundation
import SwiftUI

struct AnimateColorText: View {
    @State private var flag = false
    let text : String;
    let from: UIColor
    let to: UIColor
    
    var body: some View {
        VStack {

            AnimatableColorText(from: from, to: to, pct: flag ? 1 : 0) {
                Text(text).font(
                    .system(
                        size:30
                    )
                    .weight(.bold)
                )
            }.task {
                withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses:true)) {
                    self.flag.toggle()
                }
            }


        }
    }
}

struct AnimatableColorText: View {
    let from: UIColor
    let to: UIColor
    let pct: CGFloat
    let text: () -> Text
    
    var body: some View {
        let textView = text()
        
        return textView.foregroundColor(Color.clear)
            .overlay(Color.clear.modifier(AnimatableColorTextModifier(from: from, to: to, pct: pct, text: textView)))
    }
    
    struct AnimatableColorTextModifier: AnimatableModifier {
        let from: UIColor
        let to: UIColor
        var pct: CGFloat
        let text: Text
        
        var animatableData: CGFloat {
            get { pct }
            set { pct = newValue }
        }

        func body(content: Content) -> some View {
            return text.foregroundColor(colorMixer(c1: from, c2: to, pct: pct))
        }
        
        // This is a very basic implementation of a color interpolation
        // between two values.
        func colorMixer(c1: UIColor, c2: UIColor, pct: CGFloat) -> Color {
            guard let cc1 = c1.cgColor.components else { return Color(c1) }
            guard let cc2 = c2.cgColor.components else { return Color(c1) }
            
            let r = (cc1[0] + (cc2[0] - cc1[0]) * pct)
            let g = (cc1[1] + (cc2[1] - cc1[1]) * pct)
            let b = (cc1[2] + (cc2[2] - cc1[2]) * pct)

            return Color(red: Double(r), green: Double(g), blue: Double(b))
        }

    }
}

struct AnimateColorText_Preview: PreviewProvider {
    static var previews: some View {
        AnimateColorText(text:"Hello World", from: UIColor.systemRed, to: UIColor.systemPurple)
    }
}
