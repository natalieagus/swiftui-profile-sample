//
//  MyProfile.swift
//  Landmarks
//
//  Created by user on 31/8/23.
//

import SwiftUI

// My profile view
struct GlenCard: View {
    var body: some View {
        VStack {
            Image("engineer").resizable()
                .aspectRatio(contentMode: .fit).clipShape(Circle()).padding()
 
            VStack(alignment: .center, content: {
                Text("Tan Chong How Glen")
                    .font(.title)
                Divider()
                Text("Sch of Computing").font(.headline).foregroundColor(.red)
                Text("glen_tan@sp.edu.sg").font(.subheadline)

            }).padding()
            
        }
    }
}

struct GlenCard_Previews: PreviewProvider {
    static var previews: some View {
        GlenCard()
    }
}
