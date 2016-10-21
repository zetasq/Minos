//
//  RandomNumber.swift
//  Minos
//
//  Created by Zhu Shengqi on 21/10/2016.
//  Copyright © 2016 Zhu Shengqi. All rights reserved.
//

import Darwin

public protocol RandomNumberGenerable {
    static func random() -> Self!
}

// MARK: - UnsignedInterger
extension UInt64: RandomNumberGenerable {
    public static func random() -> UInt64! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        var value: UInt64 = 0
        for _ in 0..<MemoryLayout<UInt64>.size {
            value <<= 8
            value |= UInt64(UInt8(truncatingBitPattern: fgetc(fp)))
        }
        
        fclose(fp)
        return value
    }
}

extension UInt32: RandomNumberGenerable {
    public static func random() -> UInt32! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        var value: UInt32 = 0
        for _ in 0..<MemoryLayout<UInt32>.size {
            value <<= 8
            value |= UInt32(UInt8(truncatingBitPattern: fgetc(fp)))
        }
        
        fclose(fp)
        return value
    }
}

extension UInt16: RandomNumberGenerable {
    public static func random() -> UInt16! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        var value: UInt16 = 0
        for _ in 0..<MemoryLayout<UInt16>.size {
            value <<= 8
            value |= UInt16(UInt8(truncatingBitPattern: fgetc(fp)))
        }
        
        fclose(fp)
        return value
    }
}

extension UInt8: RandomNumberGenerable {
    public static func random() -> UInt8! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        let value = UInt8(truncatingBitPattern: fgetc(fp))
        
        fclose(fp)
        return value
    }
}

// MARK: - SignedInterger
extension Int64: RandomNumberGenerable {
    public static func random() -> Int64! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        var value: Int64 = 0
        for _ in 0..<MemoryLayout<Int64>.size {
            value <<= 8
            value |= Int64(UInt8(truncatingBitPattern: fgetc(fp)))
        }
        
        fclose(fp)
        return value
    }
}

extension Int32: RandomNumberGenerable {
    public static func random() -> Int32! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        var value: Int32 = 0
        for _ in 0..<MemoryLayout<Int32>.size {
            value <<= 8
            value |= Int32(UInt8(truncatingBitPattern: fgetc(fp)))
        }
        
        fclose(fp)
        return value
    }
}

extension Int16: RandomNumberGenerable {
    public static func random() -> Int16! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        var value: Int16 = 0
        for _ in 0..<MemoryLayout<Int16>.size {
            value <<= 8
            value |= Int16(UInt8(truncatingBitPattern: fgetc(fp)))
        }
        
        fclose(fp)
        return value
    }
}

extension Int8: RandomNumberGenerable {
    public static func random() -> Int8! {
        guard let fp = fopen("/dev/random", "r") else {
            return nil
        }
        
        let value = Int8(truncatingBitPattern: fgetc(fp))
        
        fclose(fp)
        return value
    }
}
