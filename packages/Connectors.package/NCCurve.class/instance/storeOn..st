printing
storeOn: aStream 
	aStream
		nextPutAll: '((';
		nextPutAll: self class name;
		nextPutAll: ' withContours: ((Array new: ';
		print: self contours size;
		nextPutAll: ')'.
	self contours withIndexDo: 
			[:c :ci | 
			aStream
				cr;
				nextPutAll: 'at: ';
				print: ci;
				nextPutAll: ' put: '.
			(c collect: [:p | (p - self offset) / self scale roundTo: 0.001]) 
				storeOn: aStream.
			aStream nextPut: $;].
	aStream
		nextPutAll: ' yourself))';
		cr.
	aStream
		nextPutAll: 'scale: ';
		print: (self scale roundTo: 0.01);
		nextPutAll: ';';
		cr.
	aStream
		nextPutAll: 'offset: ';
		print: (self offset roundTo: 0.001);
		nextPutAll: ';';
		cr.
	aStream
		nextPutAll: 'yourself)';
		cr