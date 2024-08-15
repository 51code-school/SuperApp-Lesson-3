//
//  VideoList+URL.swift
//  SuperApp
//
//  Created by Anton Hoang on 27/06/2024.
//  Copyright © 2024 碼願科技有限公司. All rights reserved.
//

import Foundation

extension VideoName: Identifiable {
    var id: String { rawValue }
    
    var url: URL {
        guard let url = Bundle.main.url(forResource: self.rawValue, withExtension: "mp4") else {
            fatalError("Unable to find resource \(self.rawValue).mp4")
        }
        return url
    }
}
