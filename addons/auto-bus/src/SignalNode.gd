@icon("icons/SignalNode.svg")
class_name SignalNode
extends Node
signal signal_registered(signal_name)

## used to emit the signal
func emit(args = []):
	get_tree().emit_signal(name,args)
	#print("emitiendo desde " + name)

func _notification(what):
	match what:
		NOTIFICATION_READY:
			if not get_tree().has_user_signal(name):
				get_tree().add_user_signal(name, [])
				emit_signal("signal_registered", name)
			else:
				printerr("repeated signal")
