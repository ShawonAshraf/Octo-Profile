//
//  UserDetailView.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    @ObservedObject var viewModel = GitHubUserViewModel()
    var userName: String
    
    var body: some View {
        VStack {
            UserCardView(userName: viewModel.user.login, avatar_url: viewModel.user.avatar_url, blog: viewModel.user.blog, bio: viewModel.user.bio)
                .padding(.top, 50)
                .padding(.bottom, 50)
            
            UserStatsView(followers: viewModel.user.followers, publicRepos: viewModel.user.public_repos)
                .padding(.bottom, 40)
            
            Spacer()
        }
        .navigationBarTitle(Text(viewModel.user.name))
        .onAppear {
            self.viewModel.fetchUserData(for: self.userName)
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(userName: "ShawonAshraf")
    }
}
