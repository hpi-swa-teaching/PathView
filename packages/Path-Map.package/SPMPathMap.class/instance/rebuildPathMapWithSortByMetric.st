visualization
rebuildPathMapWithSortByMetric
	self 
		sortMorphsByStaticMetric: true;
		rebuildRootMorph;
		sortMorphsByStaticMetric: false;
		isDirty: false.