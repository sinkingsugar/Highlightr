# Shards Language Support in Highlightr

This document explains how to use the Shards language syntax highlighting in your Swift application using Highlightr.

## Setup

1. Make sure you have the Highlightr framework integrated into your project.
2. The Shards language is registered by default, so no additional setup is required.

## Usage

```swift
import Highlightr

// Initialize Highlightr - Shards language is registered by default
guard let highlightr = Highlightr() else {
    print("Failed to initialize Highlightr")
    return
}

// Set a theme
highlightr.setTheme(to: "xcode") // or any other theme

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
    let textView = UITextView()
    textView.attributedText = highlightedCode
    
    // Add the text view to your view hierarchy
    self.view.addSubview(textView)
}
```

## Syntax Features

The Shards language highlighting supports:

- Comments (starting with semicolon `;`)
- String literals (both double-quoted and triple-quoted)
- Numeric literals (decimal and hexadecimal)
- Enum references (Pattern: `Namespace::EnumValue`)
- Parameters (capitalized words followed by colon)
- Shards (capitalized identifiers or those starting with @)
- Variables (lowercase identifiers)
- Commas and assignment operators

## Customization

You can customize the appearance of the highlighted code by selecting different themes:

```swift
highlightr.setTheme(to: "xcode") // or "monokai", "github", etc.
```

See the list of available themes with:

```swift
let themes = highlightr.availableThemes()
print(themes)
```