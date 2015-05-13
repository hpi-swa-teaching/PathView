*Path-Core
authorLastChange
	<description: 'Last change'>
	| lastChange |
	lastChange := self lastChange.
	lastChange ifNil: [^ 'Unknown'].
	^ lastChange first