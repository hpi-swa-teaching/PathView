instance creation
on: childrenMorphs

	^ self new 
		targetMorph: childrenMorphs;
		expandSizeOfTarget;
		arrangeTarget;
		buildExpandMorph;
		yourself