import XCTest
import SwiftTreeSitter
import TreeSitterOatV1

final class TreeSitterOatV1Tests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_oat_v1())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading oat.v1 grammar")
    }
}
