initialization
forgetDispatchesTo: aSelector 
	"aSelector is no longer implemented by my corresponding Player, so don't call it any more"

	| forgotten |
	forgotten := Set new.
	self handlersKeysAndValuesDo: [:k :v | v selector == aSelector ifTrue: [forgotten add: k]].
	forgotten do: [:k | self handlers removeKey: k]