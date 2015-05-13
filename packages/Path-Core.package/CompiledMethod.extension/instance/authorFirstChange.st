*Path-Core
authorFirstChange
	<description: 'Method creator'>
	| firstChange |
	firstChange := self firstChange.
	firstChange ifNil: [^ 'Unknown'].
	^ firstChange first