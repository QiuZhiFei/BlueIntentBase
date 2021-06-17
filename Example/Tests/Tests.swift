import XCTest
import BlueIntentBase

extension String: BlueIntentCompatible { }

extension BlueIntentExtension where Base == String {
  public var length: Int {
    return base.count
  }
}

class Tests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExtension() {
    let string = "test"
    XCTAssert(string.bi.length == 4)
    XCTAssert(string.bi.length == string.count)
  }
  
  func testScopeFunctions() {
    var string: String?
    string = "test"
    
    // 解包
    string?.bi.let({ it in
      // it 为解包值
      XCTAssert(it == string)
    })
    
    // 解包，并提供新的返回值
    let newString = string?.bi.var({ it in
      return "new: \(it)"
    })
    XCTAssert(newString != string)
  }
  
  func testExample() {
    // This is an example of a functional test case.
    XCTAssert(true, "Pass")
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure() {
      // Put the code you want to measure the time of here.
    }
  }
  
}
