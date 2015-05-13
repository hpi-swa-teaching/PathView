printing
shortDescription
	^ super shortDescription,
		' >> ', self givenType asString,
		' != ', self expectedType asString