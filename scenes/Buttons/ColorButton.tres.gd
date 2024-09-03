extends Button

# Define the sequence of colors
var colors: PackedColorArray = [
	Color(1, 1, 1),  # White
	Color(0, 0, 0),  # Black
	Color(1, 0, 0),  # Red
	Color(1, 0.6, 0),  # Orange
	Color(1, 1, 0),  # Yellow
	Color(0, 1, 0),  # Green
	Color(0, 0, 1)   # Blue
]

var color_name: PackedStringArray = [
	"White",
	"Black",
	"Red",
	"Orange",
	"Yellow",
	"Green",
	"Blue"
]

var current_color_index: int = 0
var current_color_type: int = 0

func _ready():
	update_button_color()
	connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	current_color_index = (current_color_index + 1) % colors.size()
	current_color_type = (current_color_type + 1) % color_name.size()
	print("Color: " + str(color_name[current_color_type]))
	update_button_color()

func update_button_color():
	modulate = colors[current_color_index]
