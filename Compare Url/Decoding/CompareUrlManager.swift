//
//  CompareUrlManager.swift
//  Compare Url
//
//  Created by Yazan Tarifi on 26/01/2023.
//

import Foundation

public class CompareUrlManager {
    
    
    func encodeUrl(url: String) -> String {
        return self.assignDecodedToEncodedKeys(url: url)
    }
    
    func decodeUrl(url: String) -> String {
        return self.assignEncodedToDecodedKeys(url: url)
    }
    
    private func assignEncodedToDecodedKeys(url: String) -> String {
        var decodedString = url
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Space.rawValue, with: CompareDecodedValue.Space.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.ExclamationMark.rawValue, with: CompareDecodedValue.ExclamationMark.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.DoubleQuote.rawValue, with: CompareDecodedValue.DoubleQuote.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Hash.rawValue, with: CompareDecodedValue.Hash.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Dollar.rawValue, with: CompareDecodedValue.Dollar.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Persent.rawValue, with: CompareDecodedValue.Persent.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.And.rawValue, with: CompareDecodedValue.And.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.SingleQuote.rawValue, with: CompareDecodedValue.SingleQuote.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.StartArc.rawValue, with: CompareDecodedValue.StartArc.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.EndArc.rawValue, with: CompareDecodedValue.EndArc.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Star.rawValue, with: CompareDecodedValue.Star.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Plus.rawValue, with: CompareDecodedValue.Plus.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Comma.rawValue, with: CompareDecodedValue.Comma.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Slash.rawValue, with: CompareDecodedValue.Slash.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Colon.rawValue, with: CompareDecodedValue.Colon.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.SemiColon.rawValue, with: CompareDecodedValue.SemiColon.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.Equal.rawValue, with: CompareDecodedValue.Equal.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.QuestionMark.rawValue, with: CompareDecodedValue.QuestionMark.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.At.rawValue, with: CompareDecodedValue.At.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.LeftBracket.rawValue, with: CompareDecodedValue.LeftBracket.rawValue)
        decodedString = decodedString.replacingOccurrences(of: CompareEncodeValue.RightBracket.rawValue, with: CompareDecodedValue.RightBracket.rawValue)
        return decodedString
    }
    
    private func assignDecodedToEncodedKeys(url: String) -> String {
        var encodedString = url
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Space.rawValue, with: CompareEncodeValue.Space.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.ExclamationMark.rawValue, with: CompareEncodeValue.ExclamationMark.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.DoubleQuote.rawValue, with: CompareEncodeValue.DoubleQuote.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Hash.rawValue, with: CompareEncodeValue.Hash.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Dollar.rawValue, with: CompareEncodeValue.Dollar.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Persent.rawValue, with: CompareEncodeValue.Persent.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.And.rawValue, with: CompareEncodeValue.And.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.SingleQuote.rawValue, with: CompareEncodeValue.SingleQuote.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.StartArc.rawValue, with: CompareEncodeValue.StartArc.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.EndArc.rawValue, with: CompareEncodeValue.EndArc.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Star.rawValue, with: CompareEncodeValue.Star.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Plus.rawValue, with: CompareEncodeValue.Plus.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Comma.rawValue, with: CompareEncodeValue.Comma.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Slash.rawValue, with: CompareEncodeValue.Slash.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Colon.rawValue, with: CompareEncodeValue.Colon.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.SemiColon.rawValue, with: CompareEncodeValue.SemiColon.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.Equal.rawValue, with: CompareEncodeValue.Equal.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.QuestionMark.rawValue, with: CompareEncodeValue.QuestionMark.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.At.rawValue, with: CompareEncodeValue.At.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.LeftBracket.rawValue, with: CompareEncodeValue.LeftBracket.rawValue)
        encodedString = encodedString.replacingOccurrences(of: CompareDecodedValue.RightBracket.rawValue, with: CompareEncodeValue.RightBracket.rawValue)
        return encodedString
    }
    
}
