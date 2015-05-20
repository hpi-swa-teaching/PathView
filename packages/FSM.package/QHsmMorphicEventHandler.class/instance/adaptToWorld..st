initialization
adaptToWorld: aWorld 
	"If any of my recipients refer to a world or a hand, make them now refer
	to the corresponding items in the new world."

	self handlersDo: [:h | h adaptToWorld: aWorld]