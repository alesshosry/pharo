Extension { #name : #Class }

{ #category : #'*TraitsV2' }
Class >> immediateSubclass: aClassName uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList
	classVariableNames: classVarNames package: cat [
	"Added to allow for a simplified subclass creation experience. "

	^ self immediateSubclass: aClassName
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		poolDictionaries: ''
		package: cat
]

{ #category : #'*TraitsV2' }
Class >> immediateSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory [

	^ self
		subclass: aName
		uses: aTraitComposition
		layout: ImmediateLayout
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> setTraitComposition: aTraitComposition [

	^ self classInstaller
		update: self to: [ :builder |
			builder
				fillFor: self;
				traitComposition: aTraitComposition asTraitComposition;
				classTraitComposition: aTraitComposition asTraitComposition classComposition]
]

{ #category : #'*TraitsV2' }
Class >> subclass: t uses: aTraitComposition [

	^ self
		subclass: t
		uses: aTraitComposition
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Unclassified'
]

{ #category : #'*TraitsV2' }
Class >> subclass: aTraitName uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames category: cat [

	^ self
		subclass: aTraitName
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> subclass: aTraitName uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames package: cat [

	^ self
		subclass: aTraitName
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> subclass: aName uses: aTraitCompositionOrArray instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames category: aCategory [

	^ self
		subclass: aName
		uses: aTraitCompositionOrArray
		layout: self classLayout class
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> subclass: aName uses: aTraitCompositionOrArray instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory [

	^ self
		subclass: aName
		uses: aTraitCompositionOrArray
		layout: self classLayout class
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> subclass: aSubclassSymbol uses: aTraitCompositionOrArray layout: layoutClass slots: slotDefinition classVariables: classVarDefinition category: aCategorySymbol [

	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: layoutClass
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: ''
		category: aCategorySymbol
]

{ #category : #'*TraitsV2' }
Class >> subclass: aSubclassSymbol uses: aTraitCompositionOrArray layout: layoutClass slots: slotDefinition classVariables: classVarDefinition package: aCategorySymbol [

	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: layoutClass
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: ''
		category: aCategorySymbol
]

{ #category : #'*TraitsV2' }
Class >> subclass: subclassName uses: aTraitComposition layout: aLayout slots: someSlots classVariables: someClassVariables poolDictionaries: somePoolDictionaries category: aCategory [

	^ self classInstaller
		make: [ :builder |
			builder
				name: subclassName;
				superclass: self;
				slots: someSlots;
				layoutClass: aLayout;
				sharedVariables: someClassVariables;
				sharedPools: somePoolDictionaries;
				traitComposition: aTraitComposition asTraitComposition;
				classTraitComposition: aTraitComposition asTraitComposition classComposition;
				category: aCategory ]
]

{ #category : #'*TraitsV2' }
Class >> subclass: subclassName uses: aTraitComposition layout: aLayout slots: someSlots classVariables: someClassVariables poolDictionaries: somePoolDictionaries package: aCategory [

	^ self classInstaller
		make: [ :builder |
			builder
				name: subclassName;
				superclass: self;
				slots: someSlots;
				layoutClass: aLayout;
				sharedVariables: someClassVariables;
				sharedPools: somePoolDictionaries;
				traitComposition: aTraitComposition asTraitComposition;
				classTraitComposition: aTraitComposition asTraitComposition classComposition;
				category: aCategory ]
]

{ #category : #'*TraitsV2' }
Class >> subclass: subclassName uses: aTraitComposition layout: aLayout slots: someSlots classVariablesNames: someClassVariablesNames poolDictionaries: somePoolDictionaries category: aCategory [

	^ self classInstaller
		make: [ :builder |
			builder
				name: subclassName;
				superclass: self;
				slots: someSlots;
				layoutClass: aLayout;
				sharedVariablesFromString: someClassVariablesNames;
				sharedPools: somePoolDictionaries;
				traitComposition: aTraitComposition asTraitComposition;
				classTraitComposition: aTraitComposition asTraitComposition classComposition;
				category: aCategory ]
]

{ #category : #'*TraitsV2' }
Class >> subclass: subclassName uses: aTraitComposition layout: aLayout slots: someSlots classVariablesNames: someClassVariablesNames poolDictionaries: somePoolDictionaries package: aCategory [

	^ self classInstaller
		make: [ :builder |
			builder
				name: subclassName;
				superclass: self;
				slots: someSlots;
				layoutClass: aLayout;
				sharedVariablesFromString: someClassVariablesNames;
				sharedPools: somePoolDictionaries;
				traitComposition: aTraitComposition asTraitComposition;
				classTraitComposition: aTraitComposition asTraitComposition classComposition;
				category: aCategory ]
]

{ #category : #'*TraitsV2' }
Class >> subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition category: aCategorySymbol [

	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: self classLayout class
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: ''
		category: aCategorySymbol
]

{ #category : #'*TraitsV2' }
Class >> subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition package: aCategorySymbol [

	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: self classLayout class
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: ''
		category: aCategorySymbol
]

{ #category : #'*TraitsV2' }
Class >> subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol [

	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: self classLayout class
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: someSharedPoolNames
		category: aCategorySymbol
]

{ #category : #'*TraitsV2' }
Class >> subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames package: aCategorySymbol [

	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: self classLayout class
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: someSharedPoolNames
		category: aCategorySymbol
]

{ #category : #'*TraitsV2' }
Class >> usesTrait: aTrait [
	"Returns whether self or one of its superclasses are among the users of aTrait"
	^ aTrait users includesAny: self withAllSuperclasses
]

{ #category : #'*TraitsV2' }
Class >> usesTraitLocally: aTrait [
	"Returns whether self is among the users of aTrait. Note that this will return false if aTrait is used by a superclass of self and not self itself. If you want to get true in this case, use #usesTrait:"
	^ aTrait users includes: self
]

{ #category : #'*TraitsV2' }
Class >> variableByteSubclass: className uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames category: cat [

	^ self
		variableByteSubclass: className
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> variableByteSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames category: aCategory [
	| oldClassOrNil actualLayoutClass |
	oldClassOrNil := self environment at: aName ifAbsent: [ nil ].
	actualLayoutClass := (oldClassOrNil notNil and: [ oldClassOrNil classLayout class == CompiledMethodLayout ])
		ifTrue: [ CompiledMethodLayout ]
		ifFalse: [ ByteLayout ].

	^ self
		subclass: aName
		uses: aTraitComposition
		layout: actualLayoutClass
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> variableSubclass: aClassName uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames category: cat [

	^ self
		variableSubclass: aClassName
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> variableSubclass: aClassName uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames package: cat [

	^ self
		variableSubclass: aClassName
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> variableSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames category: aCategory [

	^ self
		subclass: aName
		uses: aTraitComposition
		layout: VariableLayout
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> variableSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory [

	^ self
		variableSubclass: aName
		uses: aTraitComposition
		instanceVariableNames: someInstanceVariableNames
		classVariableNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> variableWordSubclass: className uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames category: cat [

	^ self
		variableWordSubclass: className
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		package: cat
]

{ #category : #'*TraitsV2' }
Class >> variableWordSubclass: className uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames package: cat [
	^ self
		variableWordSubclass: className
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		poolDictionaries: ''
		package: cat
]

{ #category : #'*TraitsV2' }
Class >> variableWordSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames category: aCategory [

	^ self
		variableWordSubclass: aName
		uses: aTraitComposition
		instanceVariableNames: someInstanceVariableNames
		classVariableNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		package: aCategory
]

{ #category : #'*TraitsV2' }
Class >> variableWordSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory [

	^ self
		subclass: aName
		uses: aTraitComposition
		layout: WordLayout
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> weakSubclass: className uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames category: cat [

	^ self
		weakSubclass: className
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> weakSubclass: className uses: aTraitCompositionOrArray instanceVariableNames: instVarNameList classVariableNames: classVarNames package: cat [

	^ self
		weakSubclass: className
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNameList
		classVariableNames: classVarNames
		category: cat
]

{ #category : #'*TraitsV2' }
Class >> weakSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames category: aCategory [

	^ self
		subclass: aName
		uses: aTraitComposition
		layout: WeakLayout
		slots: someInstanceVariableNames asSlotCollection
		classVariablesNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]

{ #category : #'*TraitsV2' }
Class >> weakSubclass: aName uses: aTraitComposition instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory [

	^ self
		weakSubclass: aName
		uses: aTraitComposition
		instanceVariableNames: someInstanceVariableNames
		classVariableNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory
]
