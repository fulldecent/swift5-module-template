import Foundation

let whiteKing = Data(base64Encoded: "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",
    options: NSData.Base64DecodingOptions())!