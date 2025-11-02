package tree_sitter_oat_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_oat "github.com/WhySoBad/tree-sitter-oat/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_oat.Language())
	if language == nil {
		t.Errorf("Error loading oat grammar")
	}
}
