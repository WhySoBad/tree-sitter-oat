(fdecl
  rettype: (retty)
  name: (identifier) @name) @definition.function

(gdecl
  name: (identifier) @name) @definition.global

(call_exp
  name: (identifier) @name) @reference.call
