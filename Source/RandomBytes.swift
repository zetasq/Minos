//
//  RandomBytes.swift
//  Minos
//
//  Created by Zhu Shengqi on 22/10/2016.
//  Copyright © 2016 Zhu Shengqi. All rights reserved.
//

import Darwin

public func randomBytes(length: Int) -> [UInt8]! {
    assert(length > 0, "Non positive length of bytes")

    guard let fp = fopen("/dev/random", "rb") else {
        return nil
    }
    
    var bytes: [UInt8] = Array(repeating: 0, count: length)
    
    let readSize = fread(&bytes, 1, length, fp)
    fclose(fp)
    
    if readSize == length {
        return bytes
    } else {
        return nil
    }
}
