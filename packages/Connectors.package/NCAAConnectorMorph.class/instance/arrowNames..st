arrows
arrowNames: anArray
	"anArray has the keys into my arrow dictionary for the desired arrows"
	line arrows: (anArray collect: [ :ea | self class arrowDictionary at: ea ifAbsent: [ nil ]])