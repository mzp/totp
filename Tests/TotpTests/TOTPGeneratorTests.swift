//
//  TOTPGenerator.swift
//  TotpTests
//
//  Created by mzp on 2018/11/03.
//

import XCTest
import struct Foundation.Date
@testable import TotpCore

class TOTPGeneratorTests: XCTestCase {
    var generator : TOTPGenerator!

    override func setUp() {
        generator = TOTPGenerator(secret:
            "12345678901234567890".unicodeScalars.map { UInt8($0.value) }            
        )
    }

    // Test oracle was obatined from https://tools.ietf.org/html/rfc6238
    func testGenerateDec8() {
        XCTAssertEqual("94287082", generator.generate(at: sec(59), format: .dec8))
        XCTAssertEqual("07081804", generator.generate(at: sec(1111111109), format: .dec8))
        XCTAssertEqual("14050471", generator.generate(at: sec(1111111111), format: .dec8))
        XCTAssertEqual("89005924", generator.generate(at: sec(1234567890), format: .dec8))
        XCTAssertEqual("69279037", generator.generate(at: sec(2000000000), format: .dec8))
        XCTAssertEqual("65353130", generator.generate(at: sec(20000000000), format: .dec8))
    }

    private func sec(_ value: Int) -> Date {
        return Date(timeIntervalSince1970: Double(value))
    }
}
