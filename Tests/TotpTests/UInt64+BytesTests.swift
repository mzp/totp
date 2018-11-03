//
//  UInt64+BytesTests.swift
//  TotpTests
//
//  Created by mzp on 2018/11/03.
//

import XCTest
@testable import TotpCore

class UInt64_BytesTests: XCTestCase {
    func testBytes() {
        XCTAssertEqual([0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x34], Array(uint64: 0x1234))
    }
}
