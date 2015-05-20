toolbar-actions
getClasses
	"Retrieve a sorted list of currenlty registered Smalltalk classes in this image"

	^ SmalltalkImage current allClasses sort: [:a :b | a name < b name].

	