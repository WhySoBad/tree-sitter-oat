;; -------------------------------------------------------------------
;; Scopes
;; -------------------------------------------------------------------

(block) @local.scope

(for_stmt) @local.scope

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

(array_def_init_fn
  variable: (identifier) @local.definition
  initializer: (exp) @local.scope)

(if_cast_stmt
  (identifier) @local.definition)

;; -------------------------------------------------------------------
;; References
;; -------------------------------------------------------------------

(identifier) @local.reference