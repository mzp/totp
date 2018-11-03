//
//  UInt64+Bytes.swift
//  TotpCore
//
//  Created by mzp on 2018/11/03.
//
import Foundation

extension Array where Element == UInt8 {
    init(uint64: UInt64) {
        var value = uint64
        let data = Data(bytes: &value, count: MemoryLayout.size(ofValue: value))
        let bytes = Array<UInt8>(data)
        if CFByteOrderGetCurrent() == Int(CFByteOrderLittleEndian.rawValue) {
            self.init(bytes.reversed())
        } else {
            self.init(bytes)
        }
    }
}
