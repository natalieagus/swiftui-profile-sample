//
//  CustomCardView.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//
import Foundation
import SwiftUI

struct CustomView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("First button pressed")
            }, label: {
                CustomRowView(buttonTitle: "First Button")
            })
            
            Button(action: {
                print("Second button pressed")
            }, label: {
                CustomRowView(buttonTitle: "Second Button")
            })
            
            Button(action: {
                print("Third button pressed")
            }, label: {
                CustomRowView(buttonTitle: "Third Button")
            })

            
            Spacer()
        }
        .padding()
    }
}

struct CustomRowView: View {
    
    @State var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .padding(.vertical, 40)
            .background(Color.blue)
            .cornerRadius(12)
    }
}


struct CustomViewsz_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
