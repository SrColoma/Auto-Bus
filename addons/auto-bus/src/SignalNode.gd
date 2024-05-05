@icon("icons/SignalNode.svg")
class_name SignalNode
extends Node

## used to emit the signal
func emit(args = []):
	get_tree().emit_signal(name,args)


func _notification(what):
	match what:
		NOTIFICATION_READY:
			if not get_tree().has_user_signal(name):
				get_tree().add_user_signal(name,[])
