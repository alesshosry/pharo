"
A ReCompactSourceCodeRuleTest is a test class for testing the behavior of ReCompactSourceCodeRule
"
Class {
	#name : #ReCompactSourceCodeRuleTest,
	#superclass : #TestCase,
	#category : #'Renraku-Tests-Rules'
}

{ #category : #tests }
ReCompactSourceCodeRuleTest >> testCriticizeFinalDotIsEnabledByDefault [

	self assert: ReCompactSourceCodeRule criticizeFinalDotInMethodBody
]
