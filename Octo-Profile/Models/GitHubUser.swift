//
//  GitHubUser.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation

struct GitHubUser: Codable, Identifiable {
    let id: Int
    let login: String
    let avatar_url: String
    let blog: String
    let bio: String
    let public_repos: Int
    let followers: Int
    let name: String
}
