building
buildProjectStatisticWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self pathMap;
		getText: #projectStatisticText;
		yourself.