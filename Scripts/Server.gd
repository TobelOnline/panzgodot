extends Node

var network = NetworkedMultiplayerENet.new()
var ip = "127.0.0.1"
var port = 1990

func _ready():
	ConnectToServer()
	
func ConnectToServer():
	network.create_client(ip, port)
	get_tree().set_network_peer(network)
	network.connect("connection_failed", self, "_OnConnectionFailed")
	network.connect("connection_succeeded", self, "_OnConnectionSucceeded")
	
func _OnConnectionFailed():
	print("Failed to connect to server")
	
func _OnConnectionSucceeded():
	print("Succesfully connected")

remote func _set_party(info):
	 # Get the id of the RPC sender.
	print("Player plays " + info)
