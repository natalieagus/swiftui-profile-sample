//
//  CarouselView.swift
//  profile
//
//  Created by Natalie Agus on 31/8/23.
//

import Foundation
import SwiftUI

struct CarouselView: View {
    var groupMembers = 4
    @State private var index = 0
    var body: some View {
        VStack {
            TabView(selection: $index) {
                JannyCard().tag(0)
                JKCard().tag(1)
                GlenCard().tag(2)
                ContentView().tag(3)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            Button("Jump to anyone") {
                withAnimation {
                    // wrapping this around state change animates that state change
                    index = .random(in: 0 ... 3)
                }
            }
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
