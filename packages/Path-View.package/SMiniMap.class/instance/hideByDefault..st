accessing
hideByDefault: aBoolean
	"If this is set to true, the receiver will hide itself when being added to a new owner (noteNewOwner:).
	The reason is to address the issue of poor performance, when the mini-map is used. This way, it can be disabled by default."
	
	hideByDefault := aBoolean.