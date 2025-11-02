import XCTest
import SwiftTreeSitter
import TreeSitterOat

final class TreeSitterOatTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_oat())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading oat grammar")
    }
}
