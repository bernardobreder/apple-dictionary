//
//  DictionaryTests.swift
//  Dictionary
//
//  Created by Bernardo Breder.
//
//

import XCTest
@testable import DictionaryTests

extension DictionaryTests {

	static var allTests : [(String, (DictionaryTests) -> () throws -> Void)] {
		return [
			("test", test),
		]
	}

}

XCTMain([
	testCase(DictionaryTests.allTests),
])

