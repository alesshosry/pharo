Extension { #name : #OrderedDictionary }

{ #category : #'*Random-Core' }
OrderedDictionary >> atRandom: aGenerator [
	self emptyCheck.
	^ self at: (self orderedKeys at: (aGenerator nextInteger: self size))
]
