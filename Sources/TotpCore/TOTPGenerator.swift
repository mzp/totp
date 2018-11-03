//
//  TOTPGenerator.swift
//  TotpCore
//
//  Created by mzp on 2018/11/03.
//
import struct Foundation.Date

public final class TOTPGenerator {
    private let generator: HOTPGenerator

    public init(secret : [UInt8]) {
        self.generator = HOTPGenerator(secret: secret)
    }

    public func generate(at date : Date, format: OTPFormat) -> String? {
        let count = UInt64(date.timeIntervalSince1970) / 30
        return generator.generate(at: count, format: format)
    }
}
