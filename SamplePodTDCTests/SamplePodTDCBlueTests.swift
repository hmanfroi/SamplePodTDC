//
//  SamplePodTDCBlueTests.swift
//  SamplePodTDCTests
//
//  Created by Henrique Manfroi da Silveira on 24/11/19.
//  Copyright © 2019 Henrique Manfroi da Silveira. All rights reserved.
//

import XCTest
@testable import SamplePodTDCBlue

class SamplePodTDCBlueTests: XCTestCase {

    var vc: PresentationViewController?
    var presentation: Presentation?
    var vm: PresentationViewModel?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        presentation = Presentation(title: "titleValue", authors: ["authorFirstValue"])
        vm = PresentationViewModel(presentation: presentation!)
        vc = PresentationViewController(viewModel: vm!)
        vc?.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBackgroundColor() {
        XCTAssert(vc?.view.backgroundColor == UIColor.blue)
    }

    func testVm() {
        XCTAssert(vm!.title() == "titleValue")
    }

}
