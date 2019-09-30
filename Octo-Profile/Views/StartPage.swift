//
//  StartPage.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct StartPage: View {
    @State var githubUserName: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Octo-Profile")
                    .font(.system(size: 50, weight: .bold, design: .monospaced))
                    .padding(.all)
            
                
                TextField("GitHub User Name", text: $githubUserName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.all)
                    .font(.system(size: 35, weight: .bold, design: .monospaced))
                
                NavigationLink(destination: UserDetailView(userName: self.githubUserName)) {
                    SearchButton()
                        .padding(.top, 15)
                }
            }
        }
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
