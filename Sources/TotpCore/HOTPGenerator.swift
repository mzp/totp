//
//  TOTPGenerator.swift
//  Totp
//
//  Created by mzp on 2018/11/03.
//
import struct Foundation.Date

class HOTPGenerator {
    enum Format {
        case dec6
        case dec8
    }
    private let secret : [UInt8]

    init(secret : [UInt8]) {
        self.secret = secret
    }

    func generate(at count : Int, format: Format) -> String {
        return ""
    }
}
