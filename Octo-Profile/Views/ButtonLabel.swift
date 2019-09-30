//
//  ButtonLabel.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import SwiftUI

struct ButtonLabel: View {
    var body: some View {
        HStack {
            Spacer()
            HStack {
                Image(systemName: "tray.and.arrow.down.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                
                Text("Fetch")
                    .font(.system(size: 35))
            }
            Spacer()
        }
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel()
    }
}
