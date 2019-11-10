//
//  Presentation.swift
//  SamplePodTDC
//
//  Created by Henrique Manfroi da Silveira on 10/11/19.
//  Copyright © 2019 Henrique Manfroi da Silveira. All rights reserved.
//

import Foundation

// MARK: - Struct

public struct Presentation {
    
    var title: String = ""
    var authors: [String] = []
    
    public init(title: String, authors: [String]) {
        self.title = title
        self.authors = authors
    }
}
