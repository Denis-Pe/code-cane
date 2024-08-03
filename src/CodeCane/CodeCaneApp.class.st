Class {
	#name : #CodeCaneApp,
	#superclass : #BlSpace,
	#category : #'CodeCane-App'
}

{ #category : #open }
CodeCaneApp class >> openInNewWindow [
	| inst |
	inst := self new.
	
	inst show.
]

{ #category : #accessing }
CodeCaneApp >> homeScene [
	| aContainer |
	aContainer := BrVerticalPane new
		matchParent;
		alignCenter.
	
	aContainer addChild: (BrLabel new
		aptitude: (BrGlamorousLabelAptitude new fontSize: 30);
		text: 'Welcome to Code Cane').
		
	^ aContainer
]

{ #category : #accessing }
CodeCaneApp >> initialize [
	super initialize.
	self extent: 800@600.
	self title: 'Code Cane'.
	self addChild: self homeScene.
]
