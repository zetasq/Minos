//
//  RandomBytesTest.swift
//  Minos
//
//  Created by Zhu Shengqi on 22/10/2016.
//  Copyright © 2016 Zhu Shengqi. All rights reserved.
//

import Foundation

import XCTest
@testable import Minos

class RandomBytesTest: XCTestCase {
    static let generationCount = 30
    static let bytesLength = 10000
    
    func testBytes() {
        var actualGenerationCount = 0
        
        for _ in 0..<RandomBytesTest.generationCount {
            if let bytes = randomBytes(length: RandomBytesTest.bytesLength) {
                XCTAssertEqual(bytes.count, RandomBytesTest.bytesLength, "Bytes' length not equal to requested")
                actualGenerationCount += 1
//                let hexString = bytes.map { String(format: "%02X", $0) }.joined()
//                print("0x" + hexString)
            }
        }
        XCTAssertEqual(actualGenerationCount, RandomBytesTest.generationCount, "failed to generate \(RandomBytesTest.generationCount - actualGenerationCount) random bytes arrays")
    }
}
