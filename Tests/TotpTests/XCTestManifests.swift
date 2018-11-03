import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HOTPGeneratorTests.allTests),
        testCase(TOTPGeneratorTests.allTests),
        testCase(UInt64_BytesTests.allTests)
    ]
}
#endif
