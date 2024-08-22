@icon("icons/SignalReceptor.svg")
class_name SignalReceptor
extends Node

## the name of the signal to react to
@export var react_to : String = ""

## emitted when the signal of 'react_to' is received
signal react(args)

func _notification(what):
	match what:
		NOTIFICATION_READY:
			call_deferred("_connect_to_signal")

func _connect_to_signal():
	if get_tree().has_user_signal(react_to):
		get_tree().connect(react_to, func(args):
			react.emit(args)
		)
	else:
		printerr("no existe senial con nombre " + react_to)
