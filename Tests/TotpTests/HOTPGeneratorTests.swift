//
//  TOTPGeneratorTests.swift
//  TotpTests
//
//  Created by mzp on 2018/11/03.
//

import XCTest
import struct Foundation.Date
@testable import TotpCore

class TOTPGeneratorTests: XCTestCase {
    var generator : HOTPGenerator!

    override func setUp() {
        generator = HOTPGenerator(secret: [])
    }

    func testGenerate() {
    }
}
