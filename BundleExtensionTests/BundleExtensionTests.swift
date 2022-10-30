//
//  BundleExtensionTests.swift
//  BundleExtensionTests
//
//  Created by chandrakala pushpala on 10/29/22.
//

import XCTest
@testable import BundleExtension

class BundleExtensionTests: XCTestCase {

    func testBundleExtension() {
        let animalResponseModel: AnimalResponseModel? =  Bundle.main.decode("animals.json")
        XCTAssertEqual(animalResponseModel?.animal?.count, 12, "Respopnse model not decoded properly")
        
    }

}
