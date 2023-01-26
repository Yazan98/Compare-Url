//
//  CompareEncodeValue.swift
//  Compare Url
//
//  Created by Yazan Tarifi on 26/01/2023.
//

import Foundation

public enum CompareEncodeValue: String, CustomStringConvertible {
    case Space = "%20" //
    case ExclamationMark = "%21" // !
    case DoubleQuote = "%22" // "
    case Hash = "%23" // #
    case Dollar = "%24" // $
    case Persent = "%25" // %
    case And = "%26" // &
    case SingleQuote = "%27" // '
    case StartArc = "%28" // (
    case EndArc = "%29" // )
    case Star = "%2A" // *
    case Plus = "%2B" // +
    case Comma = "%2C" // ,
    case Slash = "%2F" // /
    case Colon = "%3A" // :
    case SemiColon = "%3B" // ;
    case Equal = "%3D" // =
    case QuestionMark = "%3F" // ?
    case At = "%40" // @
    case LeftBracket = "$5B" // [
    case RightBracket = "%5D" // ]

    public var description: String {
        get {
            return self.rawValue
        }
    }
}
