import XCTest
import Highlightr

class ShardsHighlightingTests: XCTestCase {
    
    func testShardsHighlighting() {
        // Initialize Highlightr - Shards language is registered by default
        guard let highlightr = Highlightr() else {
            XCTFail("Failed to initialize Highlightr")
            return
        }
        
        // Check if Shards is in the supported languages
        let languages = highlightr.supportedLanguages()
        XCTAssertTrue(languages.contains("shards"), "Shards language should be supported by default")
        
        // Sample Shards code
        let shardsCode = """
        ; This is a comment
        @seq [
          Print Text: "Hello, World!"
          Math.Add A: 5 B: 10 > result
          Print Text: result
          
          Enum::Value
          
          @if [
            = true true
            @then [
              Print Text: "Condition is true"
            ]
          ]
        ]
        """
        
        // Highlight the code
        let highlightedCode = highlightr.highlight(shardsCode, as: "shards")
        XCTAssertNotNil(highlightedCode, "Should be able to highlight Shards code by default")
    }
}