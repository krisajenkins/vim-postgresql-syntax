"" Primitives
syn region  String start="\"" end="\"" skip="\v\\."
syn match   Number "-\?\d\+\(\.\d*\)\?"
syn match	SpecialChar '[{}()\[\]]'
syn match   Type   "::\w\+"

"" DDL
syn keyword Keyword BEFORE AFTER INSERT OR UPDATE ON FOR EACH ROW EXECUTE PROCEDURE
syn keyword Keyword BEGIN ROLLBACK COMMIT
syn keyword Keyword CONSTRAINT
syn keyword Keyword DROP CREATE INDEX VIEW TABLE
syn keyword Keyword btree REFERENCES
syn keyword Keyword default
syn keyword Keyword table sequence view
syn match   Keyword "FOREIGN KEY"
syn match   Keyword "PRIMARY KEY"
syn match   Keyword "not null"

syn match   Delimiter " | "
syn match   Delimiter "^[-+]\+$"

syn keyword Identifier Column Type Modifiers Schema Name Owner Value Definition
syn keyword Identifier Index
syn keyword Identifier Sequence
syn keyword Identifier Table
syn keyword Identifier VACUUM
syn keyword Identifier View
syn keyword Identifier text integer
syn match   Identifier "Foreign-key constraints:"
syn match   Identifier "Indexes:"
syn match   Identifier "List of relations"
syn match   Identifier "Referenced by:"
syn match   Identifier "Triggers:"
syn match   Identifier "\vtimestamp( without time zone)?"

"" DML (roughly)
syn match   SpecialComment "?column?"

"" EXPLAIN
syn region  Optimizer start="QUERY PLAN" end="^$" keepend contains=OptimizerStep,OptimizerStats

syn keyword OptimizerStep Materialize contained
syn match   OptimizerStep "Filter:" contained
syn match   OptimizerStep "Nested Loop" contained
syn match   OptimizerStep "Seq Scan on" contained
syn match   OptimizerStep "Sort Key: \w\+\.\w\+$" contained contains=OptimizerStepItem
syn match   OptimizerStepItem "\w\+\.\w\+$" contained
syn match	OptimizerStats "(cost=\d\+\.\d\+\.\.\d\+\.\d\+ rows=\d\+ width=\d\+)" contained contains=Number

"syn keyword postgresqlExplain Filter contained
"syn keyword postgresqlExplain Join contained
"syn keyword postgresqlExplain Limit contained
"syn keyword postgresqlExplain Materialize contained
"syn match   postgresqlExplain "Hash \v(Join|Cond)?" contained
"syn match   postgresqlExplain "Nested Loop"
"syn match   postgresqlExplain "Seq Scan on" contained
"syn match   postgresqlExplain "\v(Hash)?Aggregate" contained
"syn match   postgresqlExplain "\vSort (Key)?" contained
"syn match   postgresqlExplainHeading "QUERY PLAN" contained
"
"syn match   Keyword "cost=\@=" contained
"syn match   Keyword "rows=\@=" contained
"syn match   Keyword "width=\@=" contained
"syn match   Keyword "loops=\@=" contained
"syn match   Keyword "actual time=\@=" contained
"syn match   postgresqlResult  "Buckets:" contained
"syn match   postgresqlResult  "Batches:" contained
"syn match   postgresqlResult  "Memory Usage:" contained
"syn match   Identifier "Output" contained
"syn match   Keyword "->" contained
"syn match   postgresqlResult "Total runtime: .* ms" contained contains=postgresqlNumber
"
"" Postgres chatter.
"syn match   Comment "^(.* rows)$" contains=postgresqlNumber
syn match   Comment "^Timing is on."
"syn match   Comment "^Time: .* ms" contains=postgresqlNumber
syn match   Error  "^ERROR:\@="
syn match   Error  "\v^\s+\zs\^$"
syn match   Error "^LINE\ze \d\+:" contains=Number
"
"hi link postgresqlResult  Comment
"hi link postgresqlRowCount  Comment
"hi link postgresqlTabular Delimiter
"hi link postgresqlError   Error
"hi link postgresqlExplainHeading Identifier
"hi link postgresqlExplain Identifier
"hi link postgresqlType    Identifier
"hi link postgresqlBraces  Identifier
"hi link Keyword Keyword
"hi link postgresqlNumber  Number
"hi link postgresqlString  String
"
hi link OptimizerStep Keyword
hi link OptimizerStepItem Identifier
hi link OptimizerStats Comment
