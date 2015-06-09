layout and labels
isEquivalentTo: otherExpandableMorph  
	^ (self class = otherExpandableMorph class) &
	   (self klass = otherExpandableMorph klass) &
	   (self labelString = otherExpandableMorph labelString)