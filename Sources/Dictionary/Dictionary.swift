//
//  Dictionary.swift
//  Dictionary
//
//  Created by Bernardo Breder on 15/01/17.
//
//

import Foundation

extension Dictionary {
    
    public func map<K,V>(_ f: (Element) throws -> (K,V)) rethrows -> [K: V] {
        var dic = [K: V]()
        for element in self {
            let entry = try f(element)
            dic[entry.0] = entry.1
        }
        return dic
    }
    
    public func mapKeys<T>(_ f: (Element) throws -> T) rethrows -> [T: Value] {
        var dic = [T: Value]()
        for element in self {
            dic[try f(element)] = element.value
        }
        return dic
    }
    
    public func mapValues<T>(_ f: (Element) throws -> T) rethrows -> [Key: T] {
        var dic = [Key: T]()
        for element in self {
            dic[element.key] = try f(element)
        }
        return dic
    }
        
}
