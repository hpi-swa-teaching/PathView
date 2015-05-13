instance creation
forMorph: aMorph
	
	| instance |
	instance := self new.
	instance scroller addMorph: aMorph..
	^ instance