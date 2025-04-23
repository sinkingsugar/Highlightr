import UIKit
import Highlightr

class ShardsHighlightingExample {
    
    func setupShardsHighlighting() {
        // Initialize Highlightr - Shards language is registered by default
        guard let highlightr = Highlightr() else {
            print("Failed to initialize Highlightr")
            return
        }
        
        // Set a theme
        highlightr.setTheme(to: "xcode")
        
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
        
        // Highlight the code - Shards language is available by default
        if let highlightedCode = highlightr.highlight(shardsCode, as: "shards") {
            // Use the highlighted code in a UITextView or similar
            let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 320, height: 200))
            textView.attributedText = highlightedCode
            
            // Add the text view to your view hierarchy
            // self.view.addSubview(textView)
            
            print("Shards code highlighting successful!")
        } else {
            print("Failed to highlight Shards code")
        }
    }
}