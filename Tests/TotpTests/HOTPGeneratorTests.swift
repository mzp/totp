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
        generator = HOTPGenerator(secret: [
            0x31,
            0x32,
            0x33,
            0x34,
            0x35,
            0x36,
            0x37,
            0x38,
            0x39,
            0x30,
            0x31,
            0x32,
            0x33,
            0x34,
            0x35,
            0x36,
            0x37,
            0x38,
            0x39,
            0x30
        ])
    }

    // Test oracle was obatined from http://www.foo.be/hotp/example.html
    func testGenerateDec6() {
        XCTAssertEqual("755224", generator.generate(at: 0, format: .dec6))
        XCTAssertEqual("287082", generator.generate(at: 1, format: .dec6))
        XCTAssertEqual("359152", generator.generate(at: 2, format: .dec6))
        XCTAssertEqual("969429", generator.generate(at: 3, format: .dec6))
        XCTAssertEqual("338314", generator.generate(at: 4, format: .dec6))
        XCTAssertEqual("254676", generator.generate(at: 5, format: .dec6))
        XCTAssertEqual("287922", generator.generate(at: 6, format: .dec6))
        XCTAssertEqual("162583", generator.generate(at: 7, format: .dec6))
        XCTAssertEqual("399871", generator.generate(at: 8, format: .dec6))
        XCTAssertEqual("520489", generator.generate(at: 9, format: .dec6))
    }

    func testGenerateDec8() {
        XCTAssertEqual("84755224", generator.generate(at: 0, format: .dec8))
        XCTAssertEqual("94287082", generator.generate(at: 1, format: .dec8))
        XCTAssertEqual("37359152", generator.generate(at: 2, format: .dec8))
        XCTAssertEqual("26969429", generator.generate(at: 3, format: .dec8))
        XCTAssertEqual("40338314", generator.generate(at: 4, format: .dec8))
        XCTAssertEqual("68254676", generator.generate(at: 5, format: .dec8))
        XCTAssertEqual("18287922", generator.generate(at: 6, format: .dec8))
        XCTAssertEqual("82162583", generator.generate(at: 7, format: .dec8))
        XCTAssertEqual("73399871", generator.generate(at: 8, format: .dec8))
        XCTAssertEqual("45520489", generator.generate(at: 9, format: .dec8))
    }
}
