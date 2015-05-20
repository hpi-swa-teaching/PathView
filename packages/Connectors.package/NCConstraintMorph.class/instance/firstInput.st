constraints
firstInput
	| ips |
	ips := self inputs.
	^ips isEmpty ifTrue: [ ] ifFalse: [ ips first ] 