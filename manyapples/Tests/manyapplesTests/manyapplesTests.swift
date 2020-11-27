import XCTest
@testable import manyapples

final class manyapplesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(manyapples().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
