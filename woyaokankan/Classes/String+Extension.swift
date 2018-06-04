//
//  String+Extension.swift
//  EatojoyBiz
//
//  Created by senyuhao on 12/04/2018.
//  Copyright © 2018 HK01. All rights reserved.
//

import Foundation

extension String {
    
    public func validEmail() -> Bool {
        let pattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: self)
    }
    
    public func validPassWord() -> Bool {
        let pattern = "^^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,20}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: self)
    }
    
    public func validPhone() -> Bool {
        let pattern = "^[0-9]{8}|[0-9]{11}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: self)
    }
    
    public func pureNum() -> Bool {
        let scan: Scanner = Scanner(string: self)
        var val: Int = 0
        return scan.scanInt(&val) && scan.isAtEnd
    }
    
    public func intValue() -> Int? {
        let decimal = NSDecimalNumber(string: self)
        if decimal == NSDecimalNumber.notANumber {
            return nil
        }
        return decimal.intValue
    }
    
    public func floatValue() -> Float? {
        let decimal = NSDecimalNumber(string: self)
        if decimal == NSDecimalNumber.notANumber {
            return nil
        }
        return decimal.floatValue
    }
    
    public func doubleValue() -> Double? {
        let decimal = NSDecimalNumber(string: self)
        if decimal == NSDecimalNumber.notANumber {
            return nil
        }
        return decimal.doubleValue
    }
    
//    public func sizeWithFont(font: UIFont, size: CGSize) -> CGRect {
//        return (self as NSString).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
//    }
    
    public func lastValue() -> String? {
        let values = components(separatedBy: "=")
        return values.last
    }
    
    public func dealPhone() -> String {
        if isEmpty {
            return ""
        }
        let counts = count - 4
        let endString = suffix(from: index(startIndex, offsetBy: counts))
        let startString = prefix(1)
        var holder = ""
        for _ in 0..<count - 1 {
            holder += "*"
        }
        return startString + holder + endString
    }
}
