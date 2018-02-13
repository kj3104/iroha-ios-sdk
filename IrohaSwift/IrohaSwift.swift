//
//  IrohaSwift.swift
//  IrohaSwift
//
//  Created by Kaji Satoshi on 2018/02/13.
//  Copyright © 2018年 luca3104. All rights reserved.
//

import Foundation
import ed25519swift

public struct IrohaSwift {
    public static func keypair () -> (pub:String, pri:String) {
        return Ed25519.keypair()
    }
    
    public static func sign(_ msg:String, _ pri: String, _ pub: String) -> String {
        return Ed25519.sign(msg, pri, pub)
    }
    
    public static func verify(_ sig:String, _ msg:String, _ pub:String) -> Bool {
        return Ed25519.verify(sig, msg, pub)
    }
}

