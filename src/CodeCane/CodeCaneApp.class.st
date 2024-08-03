Class {
	#name : #CodeCaneApp,
	#superclass : #BlSpace,
	#category : #'CodeCane-App'
}

{ #category : #accessing }
CodeCaneApp >> homeScene [
	| aContainer |
	aContainer := BrVerticalPane new
		matchParent;
		alignCenter.
	
	aContainer addChild: (BrLabel new
		aptitude: (BrGlamorousLabelAptitude new fontSize: 30);
		text: 'Helldo world!').
]

{ #category : #accessing }
CodeCaneApp >> initialize [
	super initialize.
	self extent: 800@600.
	self title: 'Code Cane'.
	
]
