//
//  DescribeImage.swift
//  Cognitive Services
//
//  Created by Minh Van Ho on 05/11/19.
//  Copyright © 2019 Unitec. All rights reserved.
//

import Foundation

struct DescribeImage: Codable {
    let description: Description?
    let requestId: String?
}

struct Description: Codable {
    let tags: [String]?
    let captions: [Caption]?
}

struct Caption: Codable {
    let text: String?
    let confidence: Float?
}
