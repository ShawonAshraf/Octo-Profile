//
//  UserImageViewModel.swift
//  Octo-Profile
//
//  Created by Shawon Ashraf on 10/1/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation
import SwiftUI

class UserImageViewModel {
    let defaultImage = UIImage(named: "default")!
    
    func fetchImage(from imageURL: String) -> UIImage {
        if imageURL != "default" {
            guard let url = URL(string: imageURL) else { return defaultImage }
            guard let data = try? Data(contentsOf: url) else { return defaultImage }
            guard let imageFromURL = UIImage(data: data) else { return defaultImage }
            
            return imageFromURL
        }
        return defaultImage
    }
}
