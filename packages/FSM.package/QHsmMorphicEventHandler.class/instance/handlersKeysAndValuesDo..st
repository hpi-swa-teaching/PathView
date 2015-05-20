private
handlersKeysAndValuesDo: aBlock
	"Evaluate aBlock with all of my message names and sends"
	handlers ifNil: [ ^self ].
	handlers keysAndValuesDo: [ :k :v | aBlock value: k value: v ]