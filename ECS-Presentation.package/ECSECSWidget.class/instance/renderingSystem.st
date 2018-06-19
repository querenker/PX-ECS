accessing
renderingSystem

	^ (self systems select: [:system | system class type == #rendering]) first