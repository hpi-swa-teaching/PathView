comparing
= another

	^ another class = self class and: [
		self arguments = another arguments and: [
			self members = another members and: [
				self returns = another returns]]]