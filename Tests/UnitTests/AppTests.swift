@testable import App
import XCTest

final class TuistTestPlanTests: XCTestCase {
    func test_twoPlusTwo_isFour() {
        XCTAssertEqual(Tester().twoPlusTwo(), 4)
    }
}
