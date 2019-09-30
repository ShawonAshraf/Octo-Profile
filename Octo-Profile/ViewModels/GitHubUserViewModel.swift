//
//  GitHubUserViewModel.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation

class GitHubUserViewModel: ObservableObject {
    @Published var user = GitHubUser(id: 1, login: "anonymous", avatar_url: "default", blog: "https://ggwp.me", bio: "nothing", public_repos: 0, followers: 0, name: "anonymous")
    
    
    func fetchUserData(for githubUserName: String) {
        if githubUserName != "" {
            guard let url = URL(string: "\(apiUrl)\(githubUserName)") else { return }
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data else { return }
                
                
                DispatchQueue.main.async {
                    self.user = try! JSONDecoder().decode(GitHubUser.self, from: data)
                }
            }.resume()
        }
    }
}
