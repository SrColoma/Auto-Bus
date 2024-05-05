@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type(
		"SignalNode",
		"Node",
		preload("src/SignalNode.gd"),
		preload("icons/SignalNode.svg")
	)
	add_custom_type(
		"SignalReceptor",
		"Node",
		preload("src/SignalReceptor.gd"),
		preload("icons/SignalReceptor.svg")
	)


func _exit_tree():
	remove_custom_type("SignalNode")
	remove_custom_type("SignalReceptor")
