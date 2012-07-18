" Primitives
syn region  postgresqlString start="\"" end="\"" skip="\v\\."
syn region  postgresqlString start="\'" end="\'" skip="\v\\."
syn match   postgresqlNumber "-\?\d\+\(\.\d*\)\?"

" DDL
syn match   postgresqlKeyword "FOREIGN KEY"
syn keyword postgresqlKeyword BEFORE AFTER INSERT OR UPDATE ON FOR EACH ROW EXECUTE PROCEDURE
syn keyword postgresqlKeyword btree REFERENCES
syn keyword postgresqlKeyword BEGIN ROLLBACK COMMIT
syn keyword postgresqlKeyword DROP CREATE INDEX VIEW TABLE
syn match   postgresqlKeyword "not null"

" DML (roughly)
syn keyword postgresqlHeading Table
syn keyword postgresqlHeading Column Type Modifiers
syn match   postgresqlHeading "Indexes:"
syn match   postgresqlHeading "Foreign-key constraints:"
syn match   postgresqlHeading "Triggers:"
syn match   postgresqlTabular "^[-+]\+$"
syn match   postgresqlTabular " | "

" EXPLAIN
syn match   postgresqlHeading "QUERY PLAN"
syn match   postgresqlHeading "Seq Scan"
syn match   postgresqlHeading "Hash \v(Join|Cond)?"
syn match   postgresqlKeyword "cost=\@="
syn match   postgresqlKeyword "rows=\@="
syn match   postgresqlKeyword "width=\@="
syn match   postgresqlKeyword "loops=\@="
syn match   postgresqlKeyword "actual time=\@="
syn match   postgresqlResult  "Buckets:"
syn match   postgresqlResult  "Batches:"
syn match   postgresqlResult  "Memory Usage:"
syn match   postgresqlHeading "Output"
syn match   postgresqlKeyword "->"

" Postgres chatter.
syn match   postgresqlResult "^(.* rows)$" contains=postgresqlNumber
syn match   postgresqlResult "^Timing is on."
syn match   postgresqlResult "^Time: .* ms" contains=postgresqlNumber
syn match   postgresqlResult "Total runtime: .* ms" contains=postgresqlNumber
syn match   postgresqlType   "::\w\+"
syn match   postgresqlError  "^ERROR:\@="
syn match   postgresqlError  "\v(^\s+)@<=\^$"
syn match   postgresqlResult "^LINE \d\+:" contains=postgresqlNumber
syn match	postgresqlBraces '[{}()\[\]]'

hi link postgresqlResult  Comment
hi link postgresqlTabular Delimiter
hi link postgresqlError   Error
hi link postgresqlHeading Identifier
hi link postgresqlType    Identifier
hi link postgresqlBraces  Identifier
hi link postgresqlKeyword Keyword
hi link postgresqlNumber  Number
hi link postgresqlString  String
