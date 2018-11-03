import XCTest

import TotpTests

var tests = [XCTestCaseEntry]()
tests += TotpTests.allTests()
XCTMain(tests)