//
//  SearchButton.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
        HStack {
            Spacer()
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text("search")
                    .font(.system(.largeTitle, design: .monospaced))
                    
            }
            Spacer()
        }.padding().accentColor(.black)
    }
}

struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton()
    }
}
