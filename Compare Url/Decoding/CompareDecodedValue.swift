//
//  CompareDecodedValue.swift
//  Compare Url
//
//  Created by Yazan Tarifi on 26/01/2023.
//

import Foundation

public enum CompareDecodedValue: String, CustomStringConvertible {
    case Space = " "
    case ExclamationMark = "!"
    case DoubleQuote = "\""
    case Hash = "#"
    case Dollar = "$"
    case Persent = "%"
    case And = "&"
    case SingleQuote = "\'"
    case StartArc = "("
    case EndArc = ")"
    case Star = "*"
    case Plus = "+"
    case Comma = ","
    case Slash = "/"
    case Colon = ":"
    case SemiColon = ";"
    case Equal = "="
    case QuestionMark = "?"
    case At = "@"
    case LeftBracket = "["
    case RightBracket = "]"

    public var description: String {
        get {
            return self.rawValue
        }
    }
}
