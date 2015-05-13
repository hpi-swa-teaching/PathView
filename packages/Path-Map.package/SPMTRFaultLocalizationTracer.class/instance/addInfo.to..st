visualization
addInfo: aNumber to: aMorph
	| info |
	info := aMorph methodReference asStringOrText, Character cr, 
		self passedAtMethod asString, ' out of ', self allPassed asString, 
		' passed tests', Character cr,
		self failuresAtMethod asString, ' out of ', self allFailures asString, 
		' failed tests', Character cr,
		'Suspiciousness value: ', (aNumber * 100) floor asString, '%', Character cr.
	aMorph isSourceCodeEntityATestMethod
		ifFalse: [info := info, 'Single point of failure probability: ', 
							((aNumber * aMorph color saturation) * 100) floor asString, 
							'%', Character cr].
	aMorph additionalInfo: info.