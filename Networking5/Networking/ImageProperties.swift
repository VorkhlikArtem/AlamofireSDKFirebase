//
//  ImageProperties.swift
//  Networking
//
//  Created by Артём on 03.11.2022.
//  Copyright © 2022 Artem. All rights reserved.
//

import UIKit

struct ImageProperties {
    
    let key: String
    let data: Data
    
    init?(withImage image: UIImage, forKey key: String) {
        self.key = key
        guard let data = image.pngData() else { return nil }
        self.data = data
    }
}
