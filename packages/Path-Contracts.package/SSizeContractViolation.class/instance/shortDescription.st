printing
shortDescription
	^ super shortDescription,
		' >> ', self givenSize asString,
		' > ', self expectedSize asString