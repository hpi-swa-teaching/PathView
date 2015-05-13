accessing
selectedOptions

	^ self options at: self selectedAnalysis ifAbsent: [SPMOptions new]