//
//  UserImageView.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 9/30/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct UserImageView: View {
    var imageURL: String
    let vm = UserImageViewModel()
    
    var body: some View {
        Image(uiImage: vm.fetchImage(from: imageURL))
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct UserImageView_Previews: PreviewProvider {
    static var previews: some View {
        UserImageView(imageURL: "default")
    }
}
