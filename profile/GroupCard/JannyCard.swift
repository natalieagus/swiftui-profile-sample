//
//  ContentView.swift
//  myProfile
//
//  Created by user on 27/8/23.
//

import SwiftUI

// My profile view
struct JannyCard: View {
    var body: some View {
        VStack {
            Text("Ms Janny Chan")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .italic()
            Text("Singapore Polytechnic")
                .font(.title2)
                .bold()
                .foregroundColor(.white)
            Text("School of Computing")
                .font(.subheadline)
                .bold()
                .foregroundColor(.white)
            
            Image("myPhoto")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                
              
            Text("Email: janny_chan@sp.edu.sg")
                .foregroundColor(.cyan)
                .italic()
            
            Text("Contact No: 67721914")
                .foregroundColor(.indigo)
            
        }
        .padding()
    }
}


struct JannyCard_Previews: PreviewProvider {
    static var previews: some View {
        JannyCard()
    }
}
