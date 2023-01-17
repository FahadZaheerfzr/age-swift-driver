import XCTest
@testable import age_swift

final class age_swiftTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let age = Age()

        let connection_param:[String:Any] = ["host":"127.0.0.1","port":5430, "user":"fahadzaheer", "dbname":"fahad"]

        age.connect(connectionParam: connection_param, graph: "hello")
                
        let text = "SELECT * FROM weather;"
        
        age.query(statement: text, connection: age.connection!)
    }
}
