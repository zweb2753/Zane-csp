//
//  Flameable.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation

public protocol flameable
{
    var flameState : Bool {get set}
    func flame() -> Void
    func isFlamed() -> Bool
}
