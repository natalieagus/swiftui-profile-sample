//
//  VanillaCardFlipView.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//

import Foundation

import SwiftUI

struct DoubleFlashCardView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Flashcard(front: {
                Text("Front").glowBorder(color: Color.cyan, lineWidth: 2);
            }, back: {
                Text("Back").glowBorder(color: Color.red, lineWidth: 2);
            })
            Flashcard(front: {
                Text("Front").glowBorder(color: Color.cyan, lineWidth: 2);
            }, back: {
                Text("Back").glowBorder(color: Color.red, lineWidth: 2);
            })
        }
        .padding()
    }
}

struct DoubleFlashCardView_Preview: PreviewProvider {
    static var previews: some View {
        DoubleFlashCardView()
    }
}

