//
//  ContentView.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

let apiUrl = "https://api.github.com/users/"

struct ContentView: View {
    
    var body: some View {
        StartPage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
