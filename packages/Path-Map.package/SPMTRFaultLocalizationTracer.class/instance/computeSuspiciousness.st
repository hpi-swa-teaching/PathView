fault localization
computeSuspiciousness
	self options formula caseOf: {
		[#tarantula] -> [^ self tarantulaSuspiciousness].
		[#ochiai] -> [^ self ochiaiSuspiciousness].
		[#jaccard] -> [^ self jaccardSuspiciousness]
	}
	