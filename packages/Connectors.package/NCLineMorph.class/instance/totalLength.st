accessing
totalLength
	"Answer the full length of my segments. Can take a long time if I'm curved."
	^self segments detectSum: [ :seg | seg length ]