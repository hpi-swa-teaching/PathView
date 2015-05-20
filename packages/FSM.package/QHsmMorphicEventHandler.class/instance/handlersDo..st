private
handlersDo: aBlock
	"Evaluate aBlock with all of my message sends"
	handlers ifNil: [ ^self ].
	handlers do: [ :ea | aBlock value: ea ]