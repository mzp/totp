//
//  KeyFormat.swift
//  TotpCore
//
//  Created by mzp on 2018/11/03.
//

enum OTPFormat {
    case dec6
    case dec8

    var intValue: Int {
        switch self {
        case .dec6:
            return 6
        case .dec8:
            return 8
        }
    }
}
