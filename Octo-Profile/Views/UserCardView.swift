//
//  UserCardView.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 9/30/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct UserCardView: View {
    var userName: String
    var avatar_url: String
    var blog: String
    var bio: String
    
    
    var body: some View {
        VStack {
            UserImageView(imageURL: avatar_url)
                .frame(width: 150, height: 150, alignment: .center)
            
            Text("@\(userName)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.top, 35)
            Text(bio)
                .font(.system(size: 22))
                .fontWeight(.semibold)
            Text(blog)
                .fontWeight(.light)
        }
    }
}

struct UserCardView_Previews: PreviewProvider {
    static var previews: some View {
        UserCardView(userName: "anonymouse", avatar_url: "default", blog: "https://ggwp.me", bio: "ggwp")
    }
}
