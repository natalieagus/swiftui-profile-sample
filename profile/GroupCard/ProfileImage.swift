//
//  profileImage.swift
//  profile
//
//  Created by user on 30/8/23.
//

import SwiftUI

struct ProfileImage: View {
    var body: some View {
        Image("jk").clipShape(Circle())
            .overlay {
            Circle().stroke(.white, lineWidth: 4)
            .shadow(radius: 7)
            
                
        }
    }
}

struct profileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
