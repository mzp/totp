import Foundation
import TotpCore
import Base32

if CommandLine.arguments.count < 2 {
    print("Usage: \(String(describing: CommandLine.arguments.first)) <secret>")
    exit(1)
}

guard let secret = base32Decode(CommandLine.arguments[1]) else {
    exit(1)
}

let generator = TOTPGenerator(secret: secret)
var previousCode: String?
while true {
    let now = Date()
    if let code = generator.generate(at: now, format: .dec6), code != previousCode {
        print(code)
        previousCode = code
    }
    Thread.sleep(forTimeInterval: 1)
}
