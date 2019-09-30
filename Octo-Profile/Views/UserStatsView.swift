//
//  UserStatsView.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct UserStatsView: View {
    var followers: Int
    var publicRepos: Int
    
    var body: some View {
        List {
            HStack {
                Text("Followed By")
                    .font(.system(size: 25))
                    .font(.system(.headline))
                Spacer()
                Text("\(followers)")
                    .font(.system(size: 25))
            }
            
            HStack {
                Text("Public Repositories")
                    .font(.system(size: 25))
                    .font(.system(.headline))
                Spacer()
                Text("\(publicRepos)")
                    .font(.system(size: 25))
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView(followers: 0, publicRepos: 0)
    }
}
