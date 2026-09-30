extends Sprite2D

@export var normal_texture: Texture2D
@export var blush_texture: Texture2D

var timer := 0.0
var changed := false


func _process(delta):
 if changed:
  timer -= delta

  if timer <= 0:
   texture = normal_texture
   changed = false


func _on_click_area_input_event(viewport, event, shape_idx):
 if event is InputEventMouseButton:
  if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
   texture = blush_texture
   timer = 0.30
   changed = true
