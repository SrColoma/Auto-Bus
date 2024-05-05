# Auto-Bus
## Description
The purpose of the plugin is to dynamically create an event bus for each [SignalNode] without the need to create a singleton to manage it.

The plugin adds 2 nodes:
SignalNode <- a node representing a signal where the 'name' property is the signal's name.
SignalReceptor <- a node representing a signal receiver, where the 'react_to' property is the name of the signal it expects to receive.