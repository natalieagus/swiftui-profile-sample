//
//  ContentView.swift
//  profile
//
//  Created by user on 30/8/23.
//

import SwiftUI

struct JKCard: View {
    var body: some View {
        
        var name:String
        
        Color.orange
            .overlay(
                VStack {
                    ProfileImage()               .offset(y: -150)
                        .padding(.bottom, -130)
                    
                    VStack(alignment: .leading) {
                        Text("Low Jin Kiat")
                            .font(.title)
                        HStack {
                            Text("Senior Lecturer")
                                .font(.headline)
                        }
                        
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.black)
                            
                            Text("jklow@sp.edu.sg")
                        }
                        
                        HStack {
                            Image(systemName: "building.fill")
                                .foregroundColor(.black)
                            
                            Text("Singapore Polytechnic     ")
                            
                            
                        }
                        
                    }.padding()
                        .background()
                }
            )
    }
}

struct JKCard_Previews: PreviewProvider {
    static var previews: some View {
        JKCard()
    }
}
