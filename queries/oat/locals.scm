;; -------------------------------------------------------------------
;; Scopes
;; -------------------------------------------------------------------

(block) @local.scope

;; -------------------------------------------------------------------
;; Definitions
;; -------------------------------------------------------------------

(fdecl
  (params
    param: (arg
      name: (identifier) @local.definition)))

(for_stmt
  param: (vdecl
    name: (identifier) @local.definition))


(gdecl
  name: (identifier) @local.definition)

(vdecl_stmt
  name: (identifier) @local.definition)

;; -------------------------------------------------------------------
;; References
;; -------------------------------------------------------------------

(identifier) @local.reference