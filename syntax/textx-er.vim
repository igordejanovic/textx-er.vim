if exists("b:current_syntax")
  finish
endif

syntax keyword textXERKeyword
      \ model
      \ entity
      \ enum
      \ attr
      \ applies
      \ to


syntax keyword textXERType
      \ string
      \ int
      \ float
      \ decimal
      \ time
      \ date
      \ money
      \ bool

syntax region textXERString start=/"/ skip=/\\"/ end=/"/ oneline
syntax region textXERString start=/'/ skip=/\\'/ end=/'/ oneline
syntax region textXERMult start="\[" end="\]"


" folding using braces
syntax region textXERFolds start='{' end='}' transparent fold


" Comments
syntax match textXERTodo /TODO:/ contained
syntax match textXERComment "\v\/\/.*$" contains=textXERTodo oneline
syntax region textXERComment start="/\*" end="\*/"
      \ contains=textXERComment,textERXTodo fold


" Highlights
highlight default link textXERTodo Todo
highlight default link textXERComment Comment
highlight default link textXERString String
highlight default link textXERType Type
highlight default link textXERKeyword Keyword
highlight default link textXERMult Statement


let b:current_syntax = "textx-er"
