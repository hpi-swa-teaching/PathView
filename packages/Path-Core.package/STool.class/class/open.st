instance creation
open
	| tool |
	tool := self new.
	ToolBuilder open: tool.
	^ tool