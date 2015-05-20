as yet unclassified
printOn: aStream
	aStream nextPutAll: 'NCLineCurveInfo(';
		print: line;
		nextPutAll: ' target='; print: (targetPoint truncateTo: 0.01);
		nextPutAll: ' seg='; print: segmentIndex;
		nextPutAll: ' closest='; print: (closestPoint truncateTo: 0.01);
		nextPutAll: ' minDist='; print: (minDist truncateTo: 0.01);
		nextPutAll: ' minT='; print: ( minT truncateTo: 0.01);
		nextPutAll: ')'