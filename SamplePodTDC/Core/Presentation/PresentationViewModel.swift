//
//  PresentationViewModel.swift
//  SamplePodTDC
//
//  Created by Henrique Manfroi da Silveira on 10/11/19.
//  Copyright © 2019 Henrique Manfroi da Silveira. All rights reserved.
//

// MARK: - Class

public class PresentationViewModel {
    
    // MARK: Internal variables
    
    let presentation: Presentation
    
    // MARK: Initializers
    
    public init(presentation: Presentation) {
        self.presentation = presentation
    }
    
    // MARK: Internal methods
    
    func title() -> String {
        self.presentation.title
    }
    
    func authors() -> [String] {
        self.presentation.authors
    }
}
