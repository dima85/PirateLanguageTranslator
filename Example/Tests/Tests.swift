import UIKit
import XCTest
@testable import PirateLanguageTranslator

class IntegrationTests: XCTestCase {
    
    var translator: PTranslator!
    
    override func setUp() {
        super.setUp()
        
        translator = PirateLanguageTranslator()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_when_request_translation_should_succesfully_return_translated_text() {
//        let expectation = expectationWithDescription("Successfull translation")
//        
//        var translatedText: String!
//        
//        translator.translate("Hello world!", success: { (translated) in
//            translatedText = translated
//            expectation.fulfill()
//            }) { (error) in
//                XCTFail("No error should appear")
//        }
//        
//        waitForExpectationsWithTimeout(5.0, handler: nil)
//        
//        XCTAssertEqual("Avast world!", translatedText)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
