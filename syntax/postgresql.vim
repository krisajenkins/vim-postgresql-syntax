syn region  postgresqlString start="\"" end="\""
syn match   postgresqlNumber "\d\+"

syn keyword postgresqlKeyword Table
syn keyword postgresqlKeyword Column Type Modifiers
syn match   postgresqlKeyword "not null"
syn match   postgresqlKeyword "Indexes:"
syn match   postgresqlKeyword "Foreign-key constraints:"
syn match   postgresqlKeyword "FOREIGN KEY"
syn keyword postgresqlKeyword btree REFERENCES

syn match   postgresqlTabular "^[-+]\+$"
syn match   postgresqlTabular " | "
syn match   postgresqlResult "(\d\+ rows)" "contains=postgresqlNumber

hi link postgresqlString  String
hi link postgresqlNumber  Number
hi link postgresqlKeyword Keyword
hi link postgresqlTabular Delimiter
hi link postgresqlResult  Statement
