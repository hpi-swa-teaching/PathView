instance creation
for: aTextStyler 
	| instance |
	instance := self new parentStyler: aTextStyler;
				 view: aTextStyler view.
	aTextStyler view: instance.
	^ instance