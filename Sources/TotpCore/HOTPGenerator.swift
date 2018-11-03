//
//  TOTPGenerator.swift
//  Totp
//
//  Created by mzp on 2018/11/03.
//
import struct Foundation.Date
import class CryptoSwift.HMAC

class HOTPGenerator {
    enum Format {
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
    private let hmac: HMAC

    init(secret : [UInt8]) {
        self.hmac = HMAC(key: secret, variant: .sha1)
    }

    func generate(at count : UInt64, format: Format) -> String? {
        guard let hash = try? hmac.authenticate(Array(uint64: count)) else {
            return nil
        }
        let offset = Int(hash[19] & 0x0f)
        let code = Int(hash[offset] & 0x7f) << 24
                | Int(hash[offset + 1]) << 16
                | Int(hash[offset + 2]) << 8
                | Int(hash[offset + 3])
        return String(String(code).suffix(format.intValue))
    }
}
