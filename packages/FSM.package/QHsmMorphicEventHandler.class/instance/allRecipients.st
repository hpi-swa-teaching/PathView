accessing
allRecipients
	"Answer a list, without duplication, of all the objects serving as recipients to any of the events I handle.
	Intended for debugging/documentation use only"
	| retval |
	retval := Set new.
	self handlersDo: [:ea | retval add: ea receiver].
	^Array withAll: retval