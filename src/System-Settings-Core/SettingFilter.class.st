"
A SettingFilter is a filter which is used by a SettingBrowser in order to select which nodes of the setting trees are to be shown. A SettingFilter subclass must redefine the #keepHandler: method which return true if the argument handler is to be kept.

Instance Variables

"
Class {
	#name : #SettingFilter,
	#superclass : #Object,
	#category : #'System-Settings-Core-Filter'
}

{ #category : #filtering }
SettingFilter >> keepSettingTreeNode: aSettingNode [
	^ false
]
