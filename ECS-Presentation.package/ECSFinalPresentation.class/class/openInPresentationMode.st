constructors
openInPresentationMode

	| instance |
	instance := self new.
	instance openInWindowLabeled: 'PX Final Presentation ECS'.
	instance enterPresentationMode