//  Copyright © 2016 Stefan van den Oord. All rights reserved.

import Foundation

class BitString : NSObject {
    let data: [UInt8]
    let bitCount: UInt
    
    convenience init(data: Data) {
        // Convert Data to [UInt8] without relying on a custom .bytes (RawSpan) API.
        self.init(bytes: Array(data))
    }
    
    init(bytes: [UInt8]) {
        self.data = bytes
        bitCount = UInt(data.count) * 8
    }
    
    override var description: String {
        return "\(type(of: self))\(data)"
    }
    
}
