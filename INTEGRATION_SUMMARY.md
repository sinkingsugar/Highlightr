# Shards Language Integration for Highlightr

## Files Added

1. `/Pod/Assets/shards.js` - The Shards language definition for highlight.js
2. `/Pod/Assets/shards.min.js` - Minified version of the Shards language definition
3. `/Example/ShardsHighlightingExample.swift` - Example usage of Shards highlighting
4. `/Example/Tests/ShardsHighlightingTests.swift` - Tests for Shards highlighting
5. `/SHARDS_SUPPORT.md` - Documentation for using Shards with Highlightr

## Changes Made

1. Added `registerLanguage(languageName:languageDefinition:)` method to `Highlightr.swift`
2. Updated the initializer to register Shards language by default
3. Updated the initializer to accept additional custom languages

## How to Use

The Shards language is now registered by default, so you can use it immediately without any additional setup:

```swift
// Initialize Highlightr - Shards language is registered by default
guard let highlightr = Highlightr() else {
    print("Failed to initialize Highlightr")
    return
}

// Now you can highlight Shards code directly
let highlightedCode = highlightr.highlight(shardsCode, as: "shards")
```

## Verification

You can verify that Shards is properly registered by checking the supported languages:

```swift
let languages = highlightr.supportedLanguages()
print(languages) // Should include "shards"
```

## Next Steps

1. Run the tests to verify the implementation
2. Try the example code to see Shards highlighting in action
3. Integrate into your application

For more details, see the `SHARDS_SUPPORT.md` file.