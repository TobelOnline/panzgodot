GDPC                                                                               @   res://.import/FogOfWar.png-7de6f8c9df27969d36c0bbcb425c8a46.stex@�     �       Y��0�J��+�6�>h@   res://.import/Hornisse.png-0837c73aa3bfaf4a2d562f4da68b5ea9.stex��     �      �
��l�9`�j��``<   res://.import/icon.png-f9ba9008f31679cd240e2c5f33a9a4fb.stex��     �      T�[~.��e��y��d�D   res://.import/move_arrow.png-4e572f66c96d8fb6aaa8e7fb05fb53e4.stex  P�     �      ��u�<ڡR�Լ�J)   res://Scenes/FOGTile.tscn   �      8      �%$�W�Y(���   res://Scenes/Game.tscn  �	      Ry     m�+�9�@:�?��V��   res://Scenes/UI.tscnP�     �      �*Qx^���D�Mn1   res://Scenes/Unit.tscn  ��           �`;�S�8��ө�%��    res://Scripts/FOGTile.gd.remap  P�     *       �*��A�|�08I]>r   res://Scripts/FOGTile.gdc   �     (      �W>Z@��v��hc~�5   res://Scripts/Game.gd.remap ��     '       M�����*+��e��:�   res://Scripts/Game.gdc  @�     �      BS*����f�1�C$   res://Scripts/GameManager.gd.remap  ��     .       9ԉ�.�δF���fD�~    res://Scripts/GameManager.gdc   �     �      
���3�%�Ϯs�pk�    res://Scripts/Server.gd.remap   ��     )       .OWs��������0�   res://Scripts/Server.gdc��     f      ��r�����D	^x�HAF   res://Scripts/UI.gd.remap   �     %       �A5�>����Ƽ`;   res://Scripts/UI.gdc �     )      ��[�k�[>�`�[@��   res://Scripts/Unit.gd.remap @�     '       ���#a��1�r
wk�   res://Scripts/Unit.gdc  0�           ���[(�Yk�Օ�πc$   res://Sprites/FogOfWar.png.import   ��     �      fN�x&tJ�p�6��}$   res://Sprites/Hornisse.png.import   @�     �      ����*�ha<-�\�    res://Sprites/icon.png.import   ��     �      G�bd�S;ߨA���$   res://Sprites/move_arrow.png.import  �     �      _ew�v��Z�J^x��   res://default_env.tres  ��     �       um�`�N��<*ỳ�8   res://project.binary@     |      m��`�H����fF8J�]   res://sprites/icon.png  p�     �      $Uʥ��ֶ�����n�            [gd_scene load_steps=4 format=2]

[ext_resource path="res://sprites/FogOfWar.png" type="Texture" id=1]
[ext_resource path="res://scripts/FOGTile.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Area2D" type="Area2D" groups=[
"FOG",
]]
collision_layer = 16
collision_mask = 16
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 16, 16 )
shape = SubResource( 1 )
        [gd_scene load_steps=5 format=2]

[ext_resource path="res://scenes/FOGTile.tscn" type="PackedScene" id=1]
[ext_resource path="res://scenes/Unit.tscn" type="PackedScene" id=2]
[ext_resource path="res://scripts/Game.gd" type="Script" id=3]
[ext_resource path="res://Scenes/UI.tscn" type="PackedScene" id=4]

[node name="Game" type="Node2D"]
script = ExtResource( 3 )

[node name="Unit" parent="." instance=ExtResource( 2 )]
position = Vector2( 40, 120 )

[node name="Unit2" parent="." instance=ExtResource( 2 )]
position = Vector2( 488, 544 )

[node name="Unit3" parent="." instance=ExtResource( 2 )]
position = Vector2( 40, 88 )

[node name="FogOfWar" type="TileMap" parent="."]
visible = false
format = 1

[node name="Area2D" parent="FogOfWar" instance=ExtResource( 1 )]

[node name="Area2D2" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 0 )

[node name="Area2D3" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 0 )

[node name="Area2D4" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 0 )

[node name="Area2D5" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 32 )

[node name="Area2D6" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 32 )

[node name="Area2D7" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 32 )

[node name="Area2D8" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 32 )

[node name="Area2D9" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 64 )

[node name="Area2D10" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 64 )

[node name="Area2D11" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 64 )

[node name="Area2D12" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 64 )

[node name="Area2D13" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 0 )

[node name="Area2D14" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 0 )

[node name="Area2D15" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 0 )

[node name="Area2D16" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 0 )

[node name="Area2D17" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 32 )

[node name="Area2D18" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 32 )

[node name="Area2D19" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 32 )

[node name="Area2D20" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 32 )

[node name="Area2D21" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 64 )

[node name="Area2D22" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 64 )

[node name="Area2D23" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 64 )

[node name="Area2D24" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 64 )

[node name="Area2D25" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 96 )

[node name="Area2D26" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 96 )

[node name="Area2D27" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 96 )

[node name="Area2D28" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 96 )

[node name="Area2D29" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 128 )

[node name="Area2D30" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 128 )

[node name="Area2D31" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 128 )

[node name="Area2D32" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 128 )

[node name="Area2D33" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 160 )

[node name="Area2D34" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 160 )

[node name="Area2D35" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 160 )

[node name="Area2D36" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 160 )

[node name="Area2D37" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 96 )

[node name="Area2D38" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 96 )

[node name="Area2D39" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 96 )

[node name="Area2D40" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 96 )

[node name="Area2D41" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 128 )

[node name="Area2D42" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 128 )

[node name="Area2D43" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 128 )

[node name="Area2D44" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 128 )

[node name="Area2D45" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 160 )

[node name="Area2D46" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 160 )

[node name="Area2D47" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 160 )

[node name="Area2D48" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 160 )

[node name="Area2D49" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 0 )

[node name="Area2D50" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 0 )

[node name="Area2D51" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 0 )

[node name="Area2D52" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 0 )

[node name="Area2D53" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 32 )

[node name="Area2D54" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 32 )

[node name="Area2D55" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 32 )

[node name="Area2D56" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 32 )

[node name="Area2D57" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 64 )

[node name="Area2D58" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 64 )

[node name="Area2D59" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 64 )

[node name="Area2D60" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 64 )

[node name="Area2D61" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 0 )

[node name="Area2D62" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 0 )

[node name="Area2D63" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 0 )

[node name="Area2D64" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 0 )

[node name="Area2D65" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 32 )

[node name="Area2D66" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 32 )

[node name="Area2D67" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 32 )

[node name="Area2D68" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 32 )

[node name="Area2D69" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 64 )

[node name="Area2D70" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 64 )

[node name="Area2D71" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 64 )

[node name="Area2D72" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 64 )

[node name="Area2D73" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 96 )

[node name="Area2D74" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 96 )

[node name="Area2D75" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 96 )

[node name="Area2D76" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 96 )

[node name="Area2D77" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 128 )

[node name="Area2D78" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 128 )

[node name="Area2D79" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 128 )

[node name="Area2D80" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 128 )

[node name="Area2D81" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 160 )

[node name="Area2D82" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 160 )

[node name="Area2D83" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 160 )

[node name="Area2D84" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 160 )

[node name="Area2D85" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 96 )

[node name="Area2D86" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 96 )

[node name="Area2D87" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 96 )

[node name="Area2D88" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 96 )

[node name="Area2D89" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 128 )

[node name="Area2D90" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 128 )

[node name="Area2D91" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 128 )

[node name="Area2D92" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 128 )

[node name="Area2D93" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 160 )

[node name="Area2D94" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 160 )

[node name="Area2D95" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 160 )

[node name="Area2D96" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 160 )

[node name="Area2D193" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 0 )

[node name="Area2D194" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 0 )

[node name="Area2D195" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 0 )

[node name="Area2D196" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 0 )

[node name="Area2D197" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 32 )

[node name="Area2D198" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 32 )

[node name="Area2D199" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 32 )

[node name="Area2D200" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 32 )

[node name="Area2D201" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 64 )

[node name="Area2D202" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 64 )

[node name="Area2D203" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 64 )

[node name="Area2D204" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 64 )

[node name="Area2D205" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 0 )

[node name="Area2D206" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 0 )

[node name="Area2D207" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 0 )

[node name="Area2D208" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 0 )

[node name="Area2D209" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 32 )

[node name="Area2D210" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 32 )

[node name="Area2D211" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 32 )

[node name="Area2D212" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 32 )

[node name="Area2D213" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 64 )

[node name="Area2D214" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 64 )

[node name="Area2D215" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 64 )

[node name="Area2D216" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 64 )

[node name="Area2D217" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 96 )

[node name="Area2D218" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 96 )

[node name="Area2D219" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 96 )

[node name="Area2D220" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 96 )

[node name="Area2D221" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 128 )

[node name="Area2D222" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 128 )

[node name="Area2D223" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 128 )

[node name="Area2D224" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 128 )

[node name="Area2D225" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 160 )

[node name="Area2D226" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 160 )

[node name="Area2D227" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 160 )

[node name="Area2D228" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 160 )

[node name="Area2D229" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 96 )

[node name="Area2D230" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 96 )

[node name="Area2D231" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 96 )

[node name="Area2D232" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 96 )

[node name="Area2D233" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 128 )

[node name="Area2D234" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 128 )

[node name="Area2D235" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 128 )

[node name="Area2D236" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 128 )

[node name="Area2D237" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 160 )

[node name="Area2D238" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 160 )

[node name="Area2D239" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 160 )

[node name="Area2D240" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 160 )

[node name="Area2D241" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 0 )

[node name="Area2D242" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 0 )

[node name="Area2D243" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 0 )

[node name="Area2D244" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 0 )

[node name="Area2D245" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 32 )

[node name="Area2D246" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 32 )

[node name="Area2D247" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 32 )

[node name="Area2D248" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 32 )

[node name="Area2D249" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 64 )

[node name="Area2D250" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 64 )

[node name="Area2D251" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 64 )

[node name="Area2D252" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 64 )

[node name="Area2D253" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 0 )

[node name="Area2D254" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 0 )

[node name="Area2D255" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 0 )

[node name="Area2D256" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 0 )

[node name="Area2D865" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 0 )

[node name="Area2D866" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 0 )

[node name="Area2D867" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 0 )

[node name="Area2D868" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 0 )

[node name="Area2D869" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 0 )

[node name="Area2D870" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 0 )

[node name="Area2D871" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 0 )

[node name="Area2D872" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 0 )

[node name="Area2D873" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 32 )

[node name="Area2D874" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 32 )

[node name="Area2D875" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 32 )

[node name="Area2D876" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 32 )

[node name="Area2D877" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 32 )

[node name="Area2D878" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 32 )

[node name="Area2D879" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 32 )

[node name="Area2D880" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 32 )

[node name="Area2D881" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 64 )

[node name="Area2D882" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 64 )

[node name="Area2D883" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 64 )

[node name="Area2D884" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 64 )

[node name="Area2D885" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 64 )

[node name="Area2D886" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 64 )

[node name="Area2D887" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 64 )

[node name="Area2D888" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 64 )

[node name="Area2D889" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 96 )

[node name="Area2D890" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 96 )

[node name="Area2D891" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 96 )

[node name="Area2D892" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 96 )

[node name="Area2D893" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 96 )

[node name="Area2D894" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 96 )

[node name="Area2D895" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 96 )

[node name="Area2D896" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 96 )

[node name="Area2D897" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 128 )

[node name="Area2D898" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 128 )

[node name="Area2D899" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 128 )

[node name="Area2D900" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 128 )

[node name="Area2D901" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 128 )

[node name="Area2D902" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 128 )

[node name="Area2D903" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 128 )

[node name="Area2D904" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 128 )

[node name="Area2D905" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 160 )

[node name="Area2D906" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 160 )

[node name="Area2D907" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 160 )

[node name="Area2D908" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 160 )

[node name="Area2D909" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 160 )

[node name="Area2D910" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 160 )

[node name="Area2D911" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 160 )

[node name="Area2D912" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 160 )

[node name="Area2D913" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 192 )

[node name="Area2D914" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 192 )

[node name="Area2D915" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 192 )

[node name="Area2D916" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 192 )

[node name="Area2D917" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 192 )

[node name="Area2D918" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 192 )

[node name="Area2D919" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 192 )

[node name="Area2D920" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 192 )

[node name="Area2D921" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 224 )

[node name="Area2D922" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 224 )

[node name="Area2D923" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 224 )

[node name="Area2D924" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 224 )

[node name="Area2D925" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 224 )

[node name="Area2D926" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 224 )

[node name="Area2D927" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 224 )

[node name="Area2D928" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 224 )

[node name="Area2D929" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 256 )

[node name="Area2D930" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 256 )

[node name="Area2D931" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 256 )

[node name="Area2D932" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 256 )

[node name="Area2D933" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 256 )

[node name="Area2D934" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 256 )

[node name="Area2D935" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 256 )

[node name="Area2D936" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 256 )

[node name="Area2D937" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 288 )

[node name="Area2D938" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 288 )

[node name="Area2D939" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 288 )

[node name="Area2D940" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 288 )

[node name="Area2D941" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 288 )

[node name="Area2D942" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 288 )

[node name="Area2D943" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 288 )

[node name="Area2D944" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 288 )

[node name="Area2D945" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 320 )

[node name="Area2D946" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 320 )

[node name="Area2D947" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 320 )

[node name="Area2D948" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 320 )

[node name="Area2D949" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 320 )

[node name="Area2D950" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 320 )

[node name="Area2D951" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 320 )

[node name="Area2D952" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 320 )

[node name="Area2D953" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 352 )

[node name="Area2D954" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 352 )

[node name="Area2D955" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 352 )

[node name="Area2D956" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 352 )

[node name="Area2D957" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 352 )

[node name="Area2D958" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 352 )

[node name="Area2D959" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 352 )

[node name="Area2D960" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 352 )

[node name="Area2D961" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 384 )

[node name="Area2D962" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 384 )

[node name="Area2D963" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 384 )

[node name="Area2D964" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 384 )

[node name="Area2D965" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 384 )

[node name="Area2D966" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 384 )

[node name="Area2D967" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 384 )

[node name="Area2D968" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 384 )

[node name="Area2D969" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 416 )

[node name="Area2D970" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 416 )

[node name="Area2D971" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 416 )

[node name="Area2D972" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 416 )

[node name="Area2D973" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 416 )

[node name="Area2D974" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 416 )

[node name="Area2D975" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 416 )

[node name="Area2D976" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 416 )

[node name="Area2D977" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 448 )

[node name="Area2D978" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 448 )

[node name="Area2D979" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 448 )

[node name="Area2D980" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 448 )

[node name="Area2D981" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 448 )

[node name="Area2D982" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 448 )

[node name="Area2D983" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 448 )

[node name="Area2D984" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 448 )

[node name="Area2D985" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 480 )

[node name="Area2D986" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 480 )

[node name="Area2D987" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 480 )

[node name="Area2D988" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 480 )

[node name="Area2D989" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 480 )

[node name="Area2D990" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 480 )

[node name="Area2D991" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 480 )

[node name="Area2D992" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 480 )

[node name="Area2D993" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 512 )

[node name="Area2D994" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 512 )

[node name="Area2D995" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 512 )

[node name="Area2D996" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 512 )

[node name="Area2D997" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 512 )

[node name="Area2D998" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 512 )

[node name="Area2D999" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 512 )

[node name="Area2D1000" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 512 )

[node name="Area2D1001" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 544 )

[node name="Area2D1002" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 544 )

[node name="Area2D1003" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 544 )

[node name="Area2D1004" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 544 )

[node name="Area2D1005" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 544 )

[node name="Area2D1006" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 544 )

[node name="Area2D1007" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 544 )

[node name="Area2D1008" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 544 )

[node name="Area2D1009" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 576 )

[node name="Area2D1010" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 576 )

[node name="Area2D1011" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 576 )

[node name="Area2D1012" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 576 )

[node name="Area2D1013" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 576 )

[node name="Area2D1014" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 576 )

[node name="Area2D1015" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 576 )

[node name="Area2D1016" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 576 )

[node name="Area2D1017" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 608 )

[node name="Area2D1018" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 608 )

[node name="Area2D1019" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 608 )

[node name="Area2D1020" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 608 )

[node name="Area2D1021" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 608 )

[node name="Area2D1022" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 608 )

[node name="Area2D1023" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 608 )

[node name="Area2D1024" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 608 )

[node name="Area2D1025" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 640 )

[node name="Area2D1026" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 640 )

[node name="Area2D1027" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 640 )

[node name="Area2D1028" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 640 )

[node name="Area2D1029" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 640 )

[node name="Area2D1030" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 640 )

[node name="Area2D1031" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 640 )

[node name="Area2D1032" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 640 )

[node name="Area2D1033" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 672 )

[node name="Area2D1034" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 672 )

[node name="Area2D1035" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 672 )

[node name="Area2D1036" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 672 )

[node name="Area2D1037" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 672 )

[node name="Area2D1038" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 672 )

[node name="Area2D1039" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 672 )

[node name="Area2D1040" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 672 )

[node name="Area2D1041" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 704 )

[node name="Area2D1042" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 704 )

[node name="Area2D1043" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 704 )

[node name="Area2D1044" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 704 )

[node name="Area2D1045" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 704 )

[node name="Area2D1046" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 704 )

[node name="Area2D1047" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 704 )

[node name="Area2D1048" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 704 )

[node name="Area2D1049" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1024, 736 )

[node name="Area2D1050" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1056, 736 )

[node name="Area2D1051" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1088, 736 )

[node name="Area2D1052" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1120, 736 )

[node name="Area2D1053" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1152, 736 )

[node name="Area2D1054" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1184, 736 )

[node name="Area2D1055" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1216, 736 )

[node name="Area2D1056" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 1248, 736 )

[node name="Area2D257" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 32 )

[node name="Area2D258" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 32 )

[node name="Area2D259" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 32 )

[node name="Area2D260" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 32 )

[node name="Area2D261" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 64 )

[node name="Area2D262" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 64 )

[node name="Area2D263" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 64 )

[node name="Area2D264" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 64 )

[node name="Area2D265" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 96 )

[node name="Area2D266" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 96 )

[node name="Area2D267" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 96 )

[node name="Area2D268" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 96 )

[node name="Area2D269" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 128 )

[node name="Area2D270" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 128 )

[node name="Area2D271" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 128 )

[node name="Area2D272" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 128 )

[node name="Area2D273" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 160 )

[node name="Area2D274" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 160 )

[node name="Area2D275" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 160 )

[node name="Area2D276" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 160 )

[node name="Area2D277" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 96 )

[node name="Area2D278" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 96 )

[node name="Area2D279" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 96 )

[node name="Area2D280" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 96 )

[node name="Area2D281" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 128 )

[node name="Area2D282" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 128 )

[node name="Area2D283" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 128 )

[node name="Area2D284" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 128 )

[node name="Area2D285" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 160 )

[node name="Area2D286" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 160 )

[node name="Area2D287" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 160 )

[node name="Area2D288" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 160 )

[node name="Area2D289" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 192 )

[node name="Area2D290" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 192 )

[node name="Area2D291" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 192 )

[node name="Area2D292" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 192 )

[node name="Area2D293" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 224 )

[node name="Area2D294" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 224 )

[node name="Area2D295" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 224 )

[node name="Area2D296" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 224 )

[node name="Area2D297" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 256 )

[node name="Area2D298" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 256 )

[node name="Area2D299" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 256 )

[node name="Area2D300" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 256 )

[node name="Area2D301" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 192 )

[node name="Area2D302" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 192 )

[node name="Area2D303" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 192 )

[node name="Area2D304" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 192 )

[node name="Area2D305" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 224 )

[node name="Area2D306" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 224 )

[node name="Area2D307" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 224 )

[node name="Area2D308" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 224 )

[node name="Area2D309" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 256 )

[node name="Area2D310" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 256 )

[node name="Area2D311" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 256 )

[node name="Area2D312" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 256 )

[node name="Area2D313" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 288 )

[node name="Area2D314" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 288 )

[node name="Area2D315" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 288 )

[node name="Area2D316" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 288 )

[node name="Area2D317" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 320 )

[node name="Area2D318" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 320 )

[node name="Area2D319" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 320 )

[node name="Area2D320" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 320 )

[node name="Area2D321" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 352 )

[node name="Area2D322" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 352 )

[node name="Area2D323" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 352 )

[node name="Area2D324" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 352 )

[node name="Area2D325" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 288 )

[node name="Area2D326" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 288 )

[node name="Area2D327" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 288 )

[node name="Area2D328" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 288 )

[node name="Area2D329" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 320 )

[node name="Area2D330" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 320 )

[node name="Area2D331" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 320 )

[node name="Area2D332" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 320 )

[node name="Area2D333" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 352 )

[node name="Area2D334" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 352 )

[node name="Area2D335" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 352 )

[node name="Area2D336" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 352 )

[node name="Area2D337" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 192 )

[node name="Area2D338" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 192 )

[node name="Area2D339" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 192 )

[node name="Area2D340" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 192 )

[node name="Area2D341" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 224 )

[node name="Area2D342" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 224 )

[node name="Area2D343" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 224 )

[node name="Area2D344" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 224 )

[node name="Area2D345" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 256 )

[node name="Area2D346" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 256 )

[node name="Area2D347" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 256 )

[node name="Area2D348" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 256 )

[node name="Area2D349" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 192 )

[node name="Area2D350" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 192 )

[node name="Area2D351" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 192 )

[node name="Area2D352" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 192 )

[node name="Area2D353" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 224 )

[node name="Area2D354" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 224 )

[node name="Area2D355" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 224 )

[node name="Area2D356" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 224 )

[node name="Area2D357" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 256 )

[node name="Area2D358" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 256 )

[node name="Area2D359" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 256 )

[node name="Area2D360" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 256 )

[node name="Area2D361" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 288 )

[node name="Area2D362" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 288 )

[node name="Area2D363" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 288 )

[node name="Area2D364" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 288 )

[node name="Area2D365" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 320 )

[node name="Area2D366" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 320 )

[node name="Area2D367" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 320 )

[node name="Area2D368" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 320 )

[node name="Area2D369" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 352 )

[node name="Area2D370" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 352 )

[node name="Area2D371" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 352 )

[node name="Area2D372" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 352 )

[node name="Area2D373" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 288 )

[node name="Area2D374" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 288 )

[node name="Area2D375" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 288 )

[node name="Area2D376" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 288 )

[node name="Area2D377" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 320 )

[node name="Area2D378" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 320 )

[node name="Area2D379" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 320 )

[node name="Area2D380" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 320 )

[node name="Area2D381" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 352 )

[node name="Area2D382" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 352 )

[node name="Area2D383" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 352 )

[node name="Area2D384" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 352 )

[node name="Area2D385" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 384 )

[node name="Area2D386" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 384 )

[node name="Area2D387" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 384 )

[node name="Area2D388" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 384 )

[node name="Area2D389" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 416 )

[node name="Area2D390" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 416 )

[node name="Area2D391" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 416 )

[node name="Area2D392" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 416 )

[node name="Area2D393" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 448 )

[node name="Area2D394" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 448 )

[node name="Area2D395" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 448 )

[node name="Area2D396" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 448 )

[node name="Area2D397" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 384 )

[node name="Area2D398" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 384 )

[node name="Area2D399" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 384 )

[node name="Area2D400" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 384 )

[node name="Area2D401" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 416 )

[node name="Area2D402" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 416 )

[node name="Area2D403" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 416 )

[node name="Area2D404" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 416 )

[node name="Area2D405" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 448 )

[node name="Area2D406" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 448 )

[node name="Area2D407" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 448 )

[node name="Area2D408" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 448 )

[node name="Area2D409" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 480 )

[node name="Area2D410" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 480 )

[node name="Area2D411" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 480 )

[node name="Area2D412" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 480 )

[node name="Area2D413" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 512 )

[node name="Area2D414" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 512 )

[node name="Area2D415" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 512 )

[node name="Area2D416" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 512 )

[node name="Area2D417" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 544 )

[node name="Area2D418" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 544 )

[node name="Area2D419" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 544 )

[node name="Area2D420" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 544 )

[node name="Area2D421" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 480 )

[node name="Area2D422" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 480 )

[node name="Area2D423" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 480 )

[node name="Area2D424" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 480 )

[node name="Area2D425" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 512 )

[node name="Area2D426" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 512 )

[node name="Area2D427" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 512 )

[node name="Area2D428" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 512 )

[node name="Area2D429" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 544 )

[node name="Area2D430" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 544 )

[node name="Area2D431" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 544 )

[node name="Area2D432" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 544 )

[node name="Area2D433" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 384 )

[node name="Area2D434" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 384 )

[node name="Area2D435" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 384 )

[node name="Area2D436" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 384 )

[node name="Area2D437" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 416 )

[node name="Area2D438" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 416 )

[node name="Area2D439" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 416 )

[node name="Area2D440" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 416 )

[node name="Area2D441" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 448 )

[node name="Area2D442" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 448 )

[node name="Area2D443" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 448 )

[node name="Area2D444" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 448 )

[node name="Area2D445" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 384 )

[node name="Area2D446" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 384 )

[node name="Area2D447" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 384 )

[node name="Area2D448" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 384 )

[node name="Area2D449" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 416 )

[node name="Area2D450" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 416 )

[node name="Area2D451" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 416 )

[node name="Area2D452" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 416 )

[node name="Area2D453" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 448 )

[node name="Area2D454" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 448 )

[node name="Area2D455" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 448 )

[node name="Area2D456" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 448 )

[node name="Area2D457" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 480 )

[node name="Area2D458" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 480 )

[node name="Area2D459" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 480 )

[node name="Area2D460" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 480 )

[node name="Area2D461" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 512 )

[node name="Area2D462" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 512 )

[node name="Area2D463" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 512 )

[node name="Area2D464" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 512 )

[node name="Area2D465" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 544 )

[node name="Area2D466" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 544 )

[node name="Area2D467" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 544 )

[node name="Area2D468" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 544 )

[node name="Area2D469" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 480 )

[node name="Area2D470" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 480 )

[node name="Area2D471" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 480 )

[node name="Area2D472" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 480 )

[node name="Area2D473" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 512 )

[node name="Area2D474" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 512 )

[node name="Area2D475" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 512 )

[node name="Area2D476" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 512 )

[node name="Area2D477" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 544 )

[node name="Area2D478" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 544 )

[node name="Area2D479" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 544 )

[node name="Area2D480" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 544 )

[node name="Area2D481" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 384 )

[node name="Area2D482" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 384 )

[node name="Area2D483" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 384 )

[node name="Area2D484" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 384 )

[node name="Area2D485" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 416 )

[node name="Area2D486" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 416 )

[node name="Area2D487" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 416 )

[node name="Area2D488" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 416 )

[node name="Area2D489" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 448 )

[node name="Area2D490" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 448 )

[node name="Area2D491" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 448 )

[node name="Area2D492" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 448 )

[node name="Area2D493" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 384 )

[node name="Area2D494" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 384 )

[node name="Area2D495" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 384 )

[node name="Area2D496" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 384 )

[node name="Area2D497" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 416 )

[node name="Area2D498" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 416 )

[node name="Area2D499" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 416 )

[node name="Area2D500" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 416 )

[node name="Area2D501" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 448 )

[node name="Area2D502" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 448 )

[node name="Area2D503" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 448 )

[node name="Area2D504" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 448 )

[node name="Area2D505" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 480 )

[node name="Area2D506" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 480 )

[node name="Area2D507" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 480 )

[node name="Area2D508" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 480 )

[node name="Area2D509" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 512 )

[node name="Area2D510" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 512 )

[node name="Area2D511" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 512 )

[node name="Area2D512" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 512 )

[node name="Area2D513" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 544 )

[node name="Area2D514" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 544 )

[node name="Area2D515" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 544 )

[node name="Area2D516" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 544 )

[node name="Area2D517" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 480 )

[node name="Area2D518" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 480 )

[node name="Area2D519" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 480 )

[node name="Area2D520" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 480 )

[node name="Area2D521" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 512 )

[node name="Area2D522" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 512 )

[node name="Area2D523" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 512 )

[node name="Area2D524" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 512 )

[node name="Area2D525" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 544 )

[node name="Area2D526" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 544 )

[node name="Area2D527" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 544 )

[node name="Area2D528" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 544 )

[node name="Area2D529" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 384 )

[node name="Area2D530" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 384 )

[node name="Area2D531" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 384 )

[node name="Area2D532" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 384 )

[node name="Area2D533" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 416 )

[node name="Area2D534" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 416 )

[node name="Area2D535" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 416 )

[node name="Area2D536" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 416 )

[node name="Area2D537" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 448 )

[node name="Area2D538" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 448 )

[node name="Area2D539" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 448 )

[node name="Area2D540" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 448 )

[node name="Area2D541" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 384 )

[node name="Area2D542" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 384 )

[node name="Area2D543" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 384 )

[node name="Area2D544" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 384 )

[node name="Area2D545" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 416 )

[node name="Area2D546" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 416 )

[node name="Area2D547" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 416 )

[node name="Area2D548" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 416 )

[node name="Area2D549" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 448 )

[node name="Area2D550" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 448 )

[node name="Area2D551" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 448 )

[node name="Area2D552" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 448 )

[node name="Area2D553" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 480 )

[node name="Area2D554" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 480 )

[node name="Area2D555" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 480 )

[node name="Area2D556" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 480 )

[node name="Area2D557" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 512 )

[node name="Area2D558" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 512 )

[node name="Area2D559" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 512 )

[node name="Area2D560" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 512 )

[node name="Area2D561" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 544 )

[node name="Area2D562" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 544 )

[node name="Area2D563" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 544 )

[node name="Area2D564" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 544 )

[node name="Area2D565" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 480 )

[node name="Area2D566" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 480 )

[node name="Area2D567" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 480 )

[node name="Area2D568" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 480 )

[node name="Area2D569" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 512 )

[node name="Area2D570" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 512 )

[node name="Area2D571" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 512 )

[node name="Area2D572" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 512 )

[node name="Area2D573" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 544 )

[node name="Area2D574" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 544 )

[node name="Area2D575" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 544 )

[node name="Area2D576" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 544 )

[node name="Area2D577" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 576 )

[node name="Area2D578" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 576 )

[node name="Area2D579" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 576 )

[node name="Area2D580" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 576 )

[node name="Area2D581" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 608 )

[node name="Area2D582" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 608 )

[node name="Area2D583" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 608 )

[node name="Area2D584" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 608 )

[node name="Area2D585" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 640 )

[node name="Area2D586" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 640 )

[node name="Area2D587" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 640 )

[node name="Area2D588" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 640 )

[node name="Area2D589" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 576 )

[node name="Area2D590" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 576 )

[node name="Area2D591" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 576 )

[node name="Area2D592" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 576 )

[node name="Area2D593" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 608 )

[node name="Area2D594" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 608 )

[node name="Area2D595" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 608 )

[node name="Area2D596" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 608 )

[node name="Area2D597" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 640 )

[node name="Area2D598" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 640 )

[node name="Area2D599" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 640 )

[node name="Area2D600" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 640 )

[node name="Area2D601" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 672 )

[node name="Area2D602" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 672 )

[node name="Area2D603" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 672 )

[node name="Area2D604" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 672 )

[node name="Area2D605" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 704 )

[node name="Area2D606" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 704 )

[node name="Area2D607" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 704 )

[node name="Area2D608" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 704 )

[node name="Area2D609" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 736 )

[node name="Area2D610" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 736 )

[node name="Area2D611" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 736 )

[node name="Area2D612" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 736 )

[node name="Area2D613" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 672 )

[node name="Area2D614" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 672 )

[node name="Area2D615" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 672 )

[node name="Area2D616" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 672 )

[node name="Area2D617" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 704 )

[node name="Area2D618" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 704 )

[node name="Area2D619" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 704 )

[node name="Area2D620" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 704 )

[node name="Area2D621" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 736 )

[node name="Area2D622" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 736 )

[node name="Area2D623" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 736 )

[node name="Area2D624" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 736 )

[node name="Area2D625" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 576 )

[node name="Area2D626" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 576 )

[node name="Area2D627" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 576 )

[node name="Area2D628" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 576 )

[node name="Area2D629" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 608 )

[node name="Area2D630" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 608 )

[node name="Area2D631" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 608 )

[node name="Area2D632" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 608 )

[node name="Area2D633" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 640 )

[node name="Area2D634" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 640 )

[node name="Area2D635" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 640 )

[node name="Area2D636" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 640 )

[node name="Area2D637" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 576 )

[node name="Area2D638" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 576 )

[node name="Area2D639" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 576 )

[node name="Area2D640" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 576 )

[node name="Area2D641" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 608 )

[node name="Area2D642" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 608 )

[node name="Area2D643" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 608 )

[node name="Area2D644" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 608 )

[node name="Area2D645" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 640 )

[node name="Area2D646" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 640 )

[node name="Area2D647" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 640 )

[node name="Area2D648" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 640 )

[node name="Area2D649" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 672 )

[node name="Area2D650" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 672 )

[node name="Area2D651" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 672 )

[node name="Area2D652" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 672 )

[node name="Area2D653" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 704 )

[node name="Area2D654" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 704 )

[node name="Area2D655" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 704 )

[node name="Area2D656" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 704 )

[node name="Area2D657" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 736 )

[node name="Area2D658" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 736 )

[node name="Area2D659" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 736 )

[node name="Area2D660" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 736 )

[node name="Area2D661" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 672 )

[node name="Area2D662" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 672 )

[node name="Area2D663" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 672 )

[node name="Area2D664" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 672 )

[node name="Area2D665" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 704 )

[node name="Area2D666" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 704 )

[node name="Area2D667" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 704 )

[node name="Area2D668" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 704 )

[node name="Area2D669" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 736 )

[node name="Area2D670" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 736 )

[node name="Area2D671" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 736 )

[node name="Area2D672" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 736 )

[node name="Area2D673" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 576 )

[node name="Area2D674" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 576 )

[node name="Area2D675" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 576 )

[node name="Area2D676" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 576 )

[node name="Area2D677" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 608 )

[node name="Area2D678" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 608 )

[node name="Area2D679" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 608 )

[node name="Area2D680" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 608 )

[node name="Area2D681" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 640 )

[node name="Area2D682" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 640 )

[node name="Area2D683" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 640 )

[node name="Area2D684" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 640 )

[node name="Area2D685" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 576 )

[node name="Area2D686" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 576 )

[node name="Area2D687" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 576 )

[node name="Area2D688" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 576 )

[node name="Area2D689" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 608 )

[node name="Area2D690" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 608 )

[node name="Area2D691" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 608 )

[node name="Area2D692" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 608 )

[node name="Area2D693" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 640 )

[node name="Area2D694" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 640 )

[node name="Area2D695" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 640 )

[node name="Area2D696" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 640 )

[node name="Area2D697" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 672 )

[node name="Area2D698" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 672 )

[node name="Area2D699" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 672 )

[node name="Area2D700" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 672 )

[node name="Area2D701" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 704 )

[node name="Area2D702" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 704 )

[node name="Area2D703" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 704 )

[node name="Area2D704" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 704 )

[node name="Area2D705" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 640, 736 )

[node name="Area2D706" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 672, 736 )

[node name="Area2D707" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 704, 736 )

[node name="Area2D708" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 736, 736 )

[node name="Area2D709" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 672 )

[node name="Area2D710" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 672 )

[node name="Area2D711" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 672 )

[node name="Area2D712" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 672 )

[node name="Area2D713" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 704 )

[node name="Area2D714" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 704 )

[node name="Area2D715" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 704 )

[node name="Area2D716" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 704 )

[node name="Area2D717" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 512, 736 )

[node name="Area2D718" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 544, 736 )

[node name="Area2D719" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 576, 736 )

[node name="Area2D720" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 608, 736 )

[node name="Area2D721" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 576 )

[node name="Area2D722" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 576 )

[node name="Area2D723" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 576 )

[node name="Area2D724" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 576 )

[node name="Area2D725" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 608 )

[node name="Area2D726" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 608 )

[node name="Area2D727" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 608 )

[node name="Area2D728" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 608 )

[node name="Area2D729" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 640 )

[node name="Area2D730" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 640 )

[node name="Area2D731" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 640 )

[node name="Area2D732" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 640 )

[node name="Area2D733" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 576 )

[node name="Area2D734" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 576 )

[node name="Area2D735" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 576 )

[node name="Area2D736" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 576 )

[node name="Area2D737" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 608 )

[node name="Area2D738" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 608 )

[node name="Area2D739" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 608 )

[node name="Area2D740" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 608 )

[node name="Area2D741" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 640 )

[node name="Area2D742" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 640 )

[node name="Area2D743" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 640 )

[node name="Area2D744" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 640 )

[node name="Area2D745" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 672 )

[node name="Area2D746" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 672 )

[node name="Area2D747" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 672 )

[node name="Area2D748" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 672 )

[node name="Area2D749" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 704 )

[node name="Area2D750" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 704 )

[node name="Area2D751" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 704 )

[node name="Area2D752" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 704 )

[node name="Area2D753" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 896, 736 )

[node name="Area2D754" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 928, 736 )

[node name="Area2D755" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 960, 736 )

[node name="Area2D756" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 992, 736 )

[node name="Area2D757" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 672 )

[node name="Area2D758" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 672 )

[node name="Area2D759" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 672 )

[node name="Area2D760" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 672 )

[node name="Area2D761" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 704 )

[node name="Area2D762" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 704 )

[node name="Area2D763" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 704 )

[node name="Area2D764" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 704 )

[node name="Area2D765" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 768, 736 )

[node name="Area2D766" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 800, 736 )

[node name="Area2D767" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 832, 736 )

[node name="Area2D768" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 864, 736 )

[node name="Area2D97" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 192 )

[node name="Area2D98" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 192 )

[node name="Area2D99" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 192 )

[node name="Area2D100" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 192 )

[node name="Area2D101" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 224 )

[node name="Area2D102" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 224 )

[node name="Area2D103" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 224 )

[node name="Area2D104" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 224 )

[node name="Area2D105" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 256 )

[node name="Area2D106" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 256 )

[node name="Area2D107" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 256 )

[node name="Area2D108" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 256 )

[node name="Area2D109" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 192 )

[node name="Area2D110" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 192 )

[node name="Area2D111" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 192 )

[node name="Area2D112" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 192 )

[node name="Area2D113" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 224 )

[node name="Area2D114" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 224 )

[node name="Area2D115" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 224 )

[node name="Area2D116" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 224 )

[node name="Area2D117" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 256 )

[node name="Area2D118" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 256 )

[node name="Area2D119" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 256 )

[node name="Area2D120" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 256 )

[node name="Area2D121" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 288 )

[node name="Area2D122" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 288 )

[node name="Area2D123" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 288 )

[node name="Area2D124" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 288 )

[node name="Area2D125" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 320 )

[node name="Area2D126" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 320 )

[node name="Area2D127" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 320 )

[node name="Area2D128" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 320 )

[node name="Area2D129" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 128, 352 )

[node name="Area2D130" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 160, 352 )

[node name="Area2D131" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 192, 352 )

[node name="Area2D132" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 224, 352 )

[node name="Area2D133" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 288 )

[node name="Area2D134" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 288 )

[node name="Area2D135" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 288 )

[node name="Area2D136" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 288 )

[node name="Area2D137" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 320 )

[node name="Area2D138" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 320 )

[node name="Area2D139" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 320 )

[node name="Area2D140" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 320 )

[node name="Area2D141" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 0, 352 )

[node name="Area2D142" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 32, 352 )

[node name="Area2D143" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 64, 352 )

[node name="Area2D144" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 96, 352 )

[node name="Area2D145" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 192 )

[node name="Area2D146" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 192 )

[node name="Area2D147" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 192 )

[node name="Area2D148" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 192 )

[node name="Area2D149" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 224 )

[node name="Area2D150" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 224 )

[node name="Area2D151" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 224 )

[node name="Area2D152" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 224 )

[node name="Area2D153" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 256 )

[node name="Area2D154" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 256 )

[node name="Area2D155" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 256 )

[node name="Area2D156" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 256 )

[node name="Area2D157" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 192 )

[node name="Area2D158" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 192 )

[node name="Area2D159" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 192 )

[node name="Area2D160" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 192 )

[node name="Area2D161" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 224 )

[node name="Area2D162" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 224 )

[node name="Area2D163" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 224 )

[node name="Area2D164" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 224 )

[node name="Area2D165" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 256 )

[node name="Area2D166" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 256 )

[node name="Area2D167" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 256 )

[node name="Area2D168" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 256 )

[node name="Area2D169" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 288 )

[node name="Area2D170" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 288 )

[node name="Area2D171" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 288 )

[node name="Area2D172" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 288 )

[node name="Area2D173" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 320 )

[node name="Area2D174" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 320 )

[node name="Area2D175" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 320 )

[node name="Area2D176" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 320 )

[node name="Area2D177" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 384, 352 )

[node name="Area2D178" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 416, 352 )

[node name="Area2D179" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 448, 352 )

[node name="Area2D180" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 480, 352 )

[node name="Area2D181" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 288 )

[node name="Area2D182" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 288 )

[node name="Area2D183" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 288 )

[node name="Area2D184" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 288 )

[node name="Area2D185" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 320 )

[node name="Area2D186" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 320 )

[node name="Area2D187" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 320 )

[node name="Area2D188" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 320 )

[node name="Area2D189" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 256, 352 )

[node name="Area2D190" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 288, 352 )

[node name="Area2D191" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 320, 352 )

[node name="Area2D192" parent="FogOfWar" instance=ExtResource( 1 )]
position = Vector2( 352, 352 )

[node name="UI" parent="." instance=ExtResource( 4 )]
margin_top = 768.0
margin_bottom = 800.0
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/UI.gd" type="Script" id=1]

[node name="UI" type="Control"]
margin_right = 1280.0
margin_bottom = 32.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="BG" type="ColorRect" parent="."]
margin_right = 1280.0
margin_bottom = 32.0
color = Color( 0.392157, 0.392157, 0.392157, 1 )

[node name="Button" type="Button" parent="."]
margin_left = 581.376
margin_top = 7.46655
margin_right = 648.376
margin_bottom = 27.4666
text = "End Turn"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MovesLabel" type="Label" parent="."]
margin_left = 381.376
margin_top = 7.46655
margin_right = 576.376
margin_bottom = 21.4666
rect_pivot_offset = Vector2( 43.3165, 7.05603 )
text = "StepsLeft: 3 (3)"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TurnsLabel" type="Label" parent="."]
margin_left = 181.376
margin_top = 7.46655
margin_right = 376.376
margin_bottom = 21.4666
rect_pivot_offset = Vector2( 43.3165, 7.05603 )
text = "Turns: 1"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="FPSLabel" type="Label" parent="."]
margin_left = 31.0
margin_top = 6.0
margin_right = 77.0
margin_bottom = 20.0
text = "FPS: 60"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Button" to="." method="_on_Button_pressed"]
[connection signal="toggled" from="Button" to="." method="_on_Button_toggled"]
               [gd_scene load_steps=24 format=2]

[ext_resource path="res://sprites/Hornisse.png" type="Texture" id=1]
[ext_resource path="res://scripts/Unit.gd" type="Script" id=2]
[ext_resource path="res://sprites/move_arrow.png" type="Texture" id=3]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 1 )
region = Rect2( 32, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=3]
atlas = ExtResource( 1 )
region = Rect2( 64, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=4]
atlas = ExtResource( 1 )
region = Rect2( 96, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=5]
atlas = ExtResource( 1 )
region = Rect2( 128, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=6]
atlas = ExtResource( 1 )
region = Rect2( 160, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=7]
atlas = ExtResource( 1 )
region = Rect2( 192, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=8]
atlas = ExtResource( 1 )
region = Rect2( 224, 0, 32, 32 )

[sub_resource type="SpriteFrames" id=9]
animations = [ {
"frames": [ SubResource( 1 ), SubResource( 2 ), SubResource( 3 ), SubResource( 4 ), SubResource( 5 ), SubResource( 6 ), SubResource( 7 ), SubResource( 8 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="AtlasTexture" id=10]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 0, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=11]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 32, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=12]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 64, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=13]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 96, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=14]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 128, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=15]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 160, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=16]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 192, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=17]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 224, 0, 32, 32 )

[sub_resource type="AtlasTexture" id=18]
flags = 4
atlas = ExtResource( 3 )
region = Rect2( 256, 0, 32, 32 )

[sub_resource type="SpriteFrames" id=19]
animations = [ {
"frames": [ SubResource( 10 ), SubResource( 11 ), SubResource( 12 ), SubResource( 13 ), SubResource( 14 ), SubResource( 15 ), SubResource( 16 ), SubResource( 17 ), SubResource( 18 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=20]

[node name="Unit" type="Area2D"]
collision_layer = 17
collision_mask = 2147483649
script = ExtResource( 2 )

[node name="UnitSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 9 )
centered = false

[node name="MoveCursor" type="AnimatedSprite" parent="."]
frames = SubResource( 19 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
light_mask = 17
position = Vector2( 16, 16 )
shape = SubResource( 20 )

[node name="CollisionShape2D2" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -16, 16 )
shape = SubResource( 20 )

[node name="CollisionShape2D3" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -16, -16 )
shape = SubResource( 20 )

[node name="CollisionShape2D4" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 16, -16 )
shape = SubResource( 20 )

[node name="CollisionShape2D5" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 48, -16 )
shape = SubResource( 20 )

[node name="CollisionShape2D6" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 48, 16 )
shape = SubResource( 20 )

[node name="CollisionShape2D7" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 16, 48 )
shape = SubResource( 20 )

[node name="CollisionShape2D8" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -16, 48 )
shape = SubResource( 20 )

[node name="CollisionShape2D9" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 48, 48 )
shape = SubResource( 20 )

[node name="CollisionShape2D10" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 80, 16 )
shape = SubResource( 20 )

[node name="CollisionShape2D11" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 16, -48 )
shape = SubResource( 20 )

[node name="CollisionShape2D12" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -48, 16 )
shape = SubResource( 20 )

[node name="CollisionShape2D13" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 16, 80 )
shape = SubResource( 20 )

[node name="CollisionShape2D14" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 48, 80 )
shape = SubResource( 20 )

[node name="CollisionShape2D15" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -16, 80 )
shape = SubResource( 20 )

[node name="CollisionShape2D16" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -48, 48 )
shape = SubResource( 20 )

[node name="CollisionShape2D17" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -48, -16 )
shape = SubResource( 20 )

[node name="CollisionShape2D18" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( -16, -48 )
shape = SubResource( 20 )

[node name="CollisionShape2D19" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 48, -48 )
shape = SubResource( 20 )

[node name="CollisionShape2D20" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 80, -16 )
shape = SubResource( 20 )

[node name="CollisionShape2D21" type="CollisionShape2D" parent="."]
light_mask = 16
position = Vector2( 80, 48 )
shape = SubResource( 20 )
[connection signal="input_event" from="." to="." method="_on_Unit_input_event"]
 GDSC             "      ���ׄ�   �����϶�                                                 	   	   
   
                                                                                                    3YYYYYYYYY0�  PQV�  -YYYYYYYYYYYYYYY`        GDSC   	         6      ���ӄ�   �����϶�   �������Ķ���   ������Ӷ   �������Ŷ���   ����׶��   ������Ӷ   �������Ӷ���   �����������������ƶ�            FOG                                                  	   	   
   
                                 !      .      4      3YYYYYYYYY0�  PQV�  W�  T�  �  YYY0�  P�  QV�  )�  �  PQT�  P�  QV�  �  T�  Y`             GDSC            4      ���Ӷ���   ����Ѷ��   ���������޶�   ����Ŷ��   �������Ӷ���   �����϶�                                GEht los                         	      
                     	      
   !      "      #      $      *      /      0      1      2      3YYY;�  YYY;�  V�  �  YY;�  V�  �  Y;�  V�  �  YYYY0�  PQV�  �?  P�  Q�  YYY`               GDSC            j      ���Ӷ���   ������ݶ   �����������������������¶���   ����   �ƶ�   ���¶���   �����϶�   ��������������Ķ   ������������¶��   �������Ӷ���   ���������������Ķ���   ������¶   ������������������Ҷ   ���������������������Ҷ�   	   127.0.0.1      �        connection_failed         _OnConnectionFailed       connection_succeeded      _OnConnectionSucceeded        Failed to connect to server       Succesfully connected                                                    !   	   "   
   (      1      :      E      P      Q      W      \      ]      c      h      3YY;�  �  T�  PQY;�  Y;�  �  YY0�  PQV�  �  PQ�  Y0�  PQV�  �  T�  P�  R�  Q�  �	  PQT�
  P�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  Y0�  PQV�  �?  P�  Q�  Y0�  PQV�  �?  P�  QY`          GDSC         #   �      ������ڶ   �����������   ����Ķ��   ����������Ķ   �������Ӷ���   �����϶�   �������������ڶ�   ���¶���   ���������ڶ�   �������������ڶ�   ���������ڶ�   �����������������Ҷ�   �������������Ҷ�   ������ض   �����������������Ҷ�   �������Ŷ���   ����׶��   �������ڶ���   �����Ӷ�   ��������������������Ҷ��      @             /root/GameManager         End turn      FPS:          fps:                                                        	      
               "      $      %      ,      3      4      ;      B      C      J      O      U      V      \      a      g      h      o            �       �   !   �   "   �   #   3YY:�  Y;�  �  YYYYY5;�  �  P�  QYYY0�  PQV�  -YY0�  P�  QV�  W�  T�  �  YY0�	  P�  QV�  W�
  T�  �  YY0�  P�  QV�  �?  P�  Q�  �  T�  PQYY0�  PQV�  �?  P�  Q�  �  T�  PQ�  Y0�  P�  QV�  W�  T�  �  �>  P�  T�  PQQ�  �  �  �  &�  �  V�  �  �  �  �?  P�  �>  P�  T�  PQQQY`       GDSC   1      �        ���ׄ�   ����Ŷ��   ��������Ŷ��   ��������Ŷ��   ������������Ŷ��   ��������Ķ��   ����Ŷ��   ���������Ҷ�   ��������ض��   �����϶�   ���������Ķ�   ������Ӷ   �������Ŷ���   ����׶��   �������������Ķ�   ��������������������Ŷ��   ����������׶   �������޶���   ����������޶   �������������������¶���   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   �����������ζ���   �����������   ���������Ҷ�   ������ٶ   �������Ӷ���   ����������Ķ   �������Ӷ���   ����Ѷ��   �������Ӷ���   �����¶�   �����������������Ķ�   ����¶��   ����������������������Ҷ   ���Ӷ���   �������ض���   ���������޶�   ���������������Ӷ���   �����ᶶ   �������Ŷ���   ������������������������ض��   ��������Ӷ��   ζ��   ϶��   ��Ķ   ���������Ӷ�   
                                              /root/Game/FogOfWar           
   Overlap :      	   Clicked:           on Shape:        Changed to game mode 1 (move)         End move   
   left_click        Links click       decrease moves                                                                                 '   	   /   
   7      8      9      A      B      I      J      K      L      R      Y      Z      a      j      p      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1     2     3      4   &  5   -  6   .  7   1  8   7  9   8  :   9  ;   :  <   ;  =   A  >   F  ?   L  @   M  A   N  B   U  C   [  D   \  E   ]  F   ^  G   _  H   `  I   a  J   h  K   i  L   u  M   {  N   |  O   }  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p     q     r     s     t     u   #  v   +  w   1  x   7  y   8  z   B  {   J  |   Q  }   W  ~   X     f  �   n  �   t  �   z  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �   5  �   =  �   D  �   J  �   K  �   L  �   M  �   N  �   U  �   V  �   d  �   l  �   m  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   3YYYY8;�  V�  SY8;�  V�  �  SY8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YYY;�  V�  �  SYY;�  �  PQYYYY0�	  PQV�  W�
  T�  �  YY0�  P�  QV�  ;�  T�  PQ�  )�  �  V�  &�  T�  �  �>  P�  T�  PQQT�  P�  QV�  �  T�  �  YYY0�  P�  R�  R�  QV�  �  &�  4�  �  T�  �  �  T�  PQ�  T�  PQ�  �  V�  �  ;�  T�  PQ�  )�  �  V�  �  T�  PQ�  �  T�  �  �  �?  P�	  �>  P�  QQ�  �  �  Y�  �  �  �?  P�
  �>  PT�  PT�  PQQQ�  �>  P�  QQ�  �  /�  T�  V�  �  V�  �  &T�  �  V�  �  T�  �  �  &�  T�  V�?  P�  Q�  T�  �  �  W�
  T�  �  �  �  �  V�  T�   PQYYYYY0�   PQV�  �?  P�  Q�  �  T�  �  �  �  �  W�
  T�  �  �  T�  �  �  YYYYYY0�!  P�  QV�  �  &�  T�  �  T�  V�  T�"  PQ�  �  �  &�#  T�$  P�  QT�  V�  �?  P�  Q�  &�  T�  �  V�  �  �%  PQ�  �  &T�  	�  V�  T�   PQYYYYYY0�%  PQV�  T�&  T�&  �  �  T�'  �  �  �(  P�  Q�  �  &�  �  P�  R�  QV�  �?  P�  Q�  T�  T�  �  �  �  �  YYYYY0�"  PQV�  �  ;�)  �  T�'  �  �  ;�*  �+  PQ�  �  �  P�  R�  Q�  �  W�
  T�,  P�  Q�  �  &�*  T�-  P�&  T�-  �)  QV�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�-  	�&  T�-  V�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�.  P�&  T�.  �)  QV�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�.  	�&  T�.  V�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�-  P�&  T�-  �)  Q�*  T�.  	�&  T�.  V�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�-  P�&  T�-  �)  Q�*  T�.  �&  T�.  �)  V�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�-  	P�&  T�-  Q�*  T�.  	�&  T�.  V�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  �  �  &�*  T�-  	P�&  T�-  Q�*  T�.  �&  T�.  �)  V�  W�
  T�,  P�  Q�  �  T�-  �  �  �  T�.  �  YYYYY0�(  P�/  QV�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  Q�  �  &�  T�-  �  �  T�.  �  V�  W�0  T�,  P�  QY`  GDST                 ~   PNG �PNG

   IHDR           szz�   sRGB ���   4IDATX���1   ð���ҧ�my�I��y� @�  @� �\��B�a�Z�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/FogOfWar.png-7de6f8c9df27969d36c0bbcb425c8a46.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/FogOfWar.png"
dest_files=[ "res://.import/FogOfWar.png-7de6f8c9df27969d36c0bbcb425c8a46.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST                �  PNG �PNG

   IHDR          ����   sRGB ���  WIDATx��\�n�0����+{��ex䑢c��E�D��S�8���p�c�O?x*��m@��M�q ��q�n��O#��o-�ҷ����8<���&�/{ w���V��dȢ�>w������i�#����c^X�2�.F+��s��ö��!�ul:�KmD�w��*t����)pn���P휴Y�q��I�����jC��z��y�/?̺YU;�a�͢�M~�v��U?:�`wX� >�+��ѐW�
�Ȫ�'�����o l�}݇�	�J��"�t���`��^_E4�Qs��@7���2��@6�%��!JD��A��w]ލw�~�M�Yi��` V�����K?�1^��f�I���z�j�5_�>�=�����Yu����]���;�!&��q��y^=%��@]W���Y�����#҉�x����஺�L3-�*Q,��<YU�<-�hX~�g C?����(��]Q ,�W�����Z&����~�A2��ұ�����ٰ2 ,�ސ�2A�d��+M�ۘD�C�Ne��z���� 2���"uG�5��f��%7�wK�'�m ���-Y�Y& ;}��Y����2��zFXa$�U�W�{<0��J�g��2 )�;;U���ˠ�OY���5�3Bw����@�qd�F\��<F9�|q�P��E� ]�+���&��W��sz����3�;�M�^QȽj(�\Q������c��{��n�.f������r��\E�M^���AFV��!���i��|��4h�~f�y�_���1���&�4E����W��
��3L.b3�|�F�T�ʪ~�,�Y9��S��]�%'C���L��{V��d���g��-�U��,�]Y�W��BV�2f�,֞H���j�r�7 ��� ���lf�D��/ys����l��5)Y�wQ@i�~Fvg��U+�C6U�hꪡ���Et�@:"�>gb��u�6Ô,�s�K`�D���$G����2�&�I�3�P�#��E�u�������v>Ġ:@�߻�!{�~�$��ߏ��y��g@md�D�����z�[��b������h���,�XZ��)�~�5/�+Lo%/����J,����$��j�-�H~T��)��d� ��u�����`!;q3�����Ɯ�_��c�v_��{�&�` � ��ty���U��ZWLqk9+̏���W0A�����"�	���l�,K��U�>�v0�ދGgܯ@�0Fl�����;��/�Y�/�\�{?�,���<�3`u�-S�a�:-Y��LC���.5!��������������!����|�ll��� 4��&��3A�z+��핻ߓ5V�}��l���3�2v0y�l�j�a�o� u�JG��v$Ϣd`�c�Ӂ�b�T+�σ��#���w�	Jdb���?F_�#
�� 꺫t2[O��h�"�:h�ޭ3�X�6�0��=�;����w/4�W��3{E���,�t1���e�Lܾ��+���W%!
FU�h��}�~�z;�mE�"[�������{��l {���pE����hjU��ӑ�}@��8�� �ު�V|� Ƹ&	�ag�lfow�n�3�E���܉�����qn�v�&O    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Hornisse.png-0837c73aa3bfaf4a2d562f4da68b5ea9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Hornisse.png"
dest_files=[ "res://.import/Hornisse.png-0837c73aa3bfaf4a2d562f4da68b5ea9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST�   �           �  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  vIDATx��y|T����̒�I&�� ��-� (.� X�X��Z\z[m��u����Zۏ��^�Wo[��V�
��RD��Ⱦ� !		IȾ͖Y��I&3��̚Lp���9y���<Ϝ���<�+^�C�f�4
,��X�� J�X����$"I��(��$I�I���!~|�6���*�T��1Z=��b��W�`(%�U(5�#9V	qa��(!@B�#�Y-�ǁ��	@4a�8�J�T�U(��$��
�  �	��F�P�+�굀���}�6aC�����q��>$@=b=�RP#�����S� .����F�,F�P.
	�1����\�L��L���24v�$	�Ռ�jFr8<�.���b��!���	@/(薜��� �,@��D�*yL�e���e
%J���&,=E C.�Y'��� ����HH1�A<�/WƠ��G��1�<F�L��b��f1�����E�X$ �D�ɩ%�s� �v��B�!&6!*�1� ��&�Pi����ЙN#PgrdKw��+cP����XG��C���8'	��t&G6���ӈϺ[��(��ďpW���&A]��&N#>�AR��ڣ�:.�ڿ�a����$��$��}�EQ�\�"ʅ�\�Be�cA�$�����L���E�V�QpH�<yQ.�e+8�i��5�d2�\�x�V�t�4�B�H������Dw�Y(j�_�x�V@���U�
9�
X0���E>Qɺm�hn���)�ܲ�
�M�ġ�<^���X���+���K�H�'b���W6�4.���Mw
������p8�|�Q־��֎n���������b�%sE�W��f�ЉJ�����'9]{.�{)��cNT1J��|>7-��)r|��鋽<��~��{na�Ջ|*[V]��~���_��l񫝑f�*���tn^~)+�\D�fp�tm�����(>ۉC��?7;}[6���?�u��>����������j�ՆbDA`v^"OJa\J���F�� ���nj�-3�x+@�� ��<u��(���}Um�;���������gڙ7!�L�Oo^�S��?>�y���]�?|��#5 :��_wU��d�$NJa��T
g�8��[V\�-+����
�~�=�Z��A,m��߹�P�����{װx��\gۍ���/l+���f�[���u�;M\73��y���s�N�a���s3x쮛{-�綜�M�X&���V_���ёz�2�$��#���S�NK�o�p�����y�� ��/��| �$�uE������)k�a�KC�o՛)�Ԓ��A���bo�u��f
�9�f��V6����.Q֨c��zJ�:Q)D�5����J��=���]�o��Y�{������9�3�OR|ֿW�;���$��,�d���[�p|6�\�$I��o���V��N��|���9�:�~�HD� C���Ke��ݕ�\V�� ܷ�z��~+�q��S hhn�[o��p���������u�k�O�E�t��3[�T�w��oΰ� QX<w� ���$���3���W�{�D"��3�?�xU�!�gZ|U���쫲fjچ6�½������7�V\»ߜ����4t���1�m�w:�s��h�rT
ىj�����{_#��
���j�� �u�X���`���}u��H$�?]nc�� � #I�� � ӭ�0Ҹ���"��V �Y�`m��Ľ���<�6#b��f���Ig���'O�Tg~Qܶ�u�0������V�3�8t�ҧ��O"1>��F����Ea{�1J�>t�/��q~�־�����A�Ūcx��Uܸt���V�y��{_s3S���c�����|��4�}�d���7�䢙�w<�k��l�Z/X��x��;�r��'�d���Ũb����f�w�����O���]��=V^���w��	I�F�����21;/eo�ʴ�y,�t�W���?èV)�������ocR^րk��NgBv:��9����3��5+=~�����4w�)�p��d"s�M��%i��QY{�%�`��~FrB����-���c���/�'�n1�ى&2U��m��W,������fV\�����s�!���cێ5�UY3��'����B!�@IE���V���\�B~{�]�����t~����B�e'x�9]{�I����h���S��-�#ҹ�0�G���F��ŭ�kdbn�G�҆.^�QAe���+'q��<�����|���A��; $�o�y�'���?B�C��t+/}R��,|r���NS��]��W��i��9Q�p?"��v#�+[Y����w��ߟ�צ7�_�W�/+=�Z��tP�Gn�3�{��i-��\KG�}	�' '#��~�ohTμªf=On,�g_�j`�1g ��L�Ka��t�ĆbZ�c���n��'�(�В��i���|��,�~|��&݀:��t�SH�U"E._P�{��L��BX@^z�.�g;?mz3�PLw��-W�C�hm'_�j&]�����f��u�:��/K����Ӯ7�M��]ъ�q~_��!����%Sӝ�
�����x�~� \�aQ�۾{�+��fw�Ǩ��mLo������g�u��)$���vv���7��[`��)��bYQ&�(������±�j��yDP~n�+lཽ5��΢GE����ָ����w������� 2����~+J�Ә+;�ͺ}�Aw*���WKY�X�������1|��j��K�:�9L������@>LQ|�!I����^;i��<��ƥA]3`HN�����\�o}]E]{d{�.�ڍ��u������HN|1��@��q���u������QB��Cu��9���rjU��z�������#	�3+���?^_Z��%�!�P�Ṥ ��E����������_r?�l
I��S�&I���eS\�ۿ>Dck�S�A}�s���x����O�F�`yh�W�ackϿ�!��� c��}W�բ�)�d�(�纙Y,���f�$�߿�>cp�@�F�����������
\Ύ(�#+Q�=W���o���ǃ��(��w7SU��J!��ME�씸1�(�/���Z�����W���k��"V���^�Wx�����p\(.���qL�q��z���6p=�@YXxYuol��:��	.��8*���.��:~c�vʪC7�Ҩ��c?��R4��21�π(Lώ� C��-y)�ڍT4�h�Q��=�}$��Ӳ�)��R��%7Y��6#�M:*�t�l��G"
 �u�{���;B���*��!a�Xin�t��B^���VL�0�cK
3�\5���n����Rδ�n�ń�X_1��4����-WOw���I���r6H_����b�yf�B.cBN�Kk��y�v����&?-�Wo�Ϛ���N(Xs�x^�m� �{S�����sӂ�!ˍaK�^\��-��K&�b��������c��G�(d"w\�Ϫ���JV���K�Q�)��f����~��"J���.�ĵE��6�DL�U�6�c���Ǜ?fݺ�444��M�6��y����'r���s��J�KV���\>�u|���|�MN��r�����[~��߽ޣ�=Wp��#b2�"&9􁥓�u۾�j���c�䥗^�>���S<��G��_� ���#~NC�icX9+����I���N}d��������Q�444��K/��c��j���������D
� *��������[8p`�z��_�W_�`fn��k��M�/��k's���y�����0|E�>���� �ڵ���^��������<�-�O��!rD(���8� ����_��Ou׾���9)R��[d̏/���J!�x�E_v���_Z�S���?�����X&���p
�-����|ܝ����8�e�d���]� ����F_555tv��f��ᠤ��9_�5�D���y~�+*|˥�.��x��6��ce����<ZD�T�x��C�x��:ᠯ��6}���F���
P�"��)�Yɓ';�W�@BJ_S��7�(��ڹ�=�� ��FniRs��!5շùs琞���f�i�3�,6;iii̝;ǧ:���̙�_�`�Q!!�� ����<���8��#��S��<��GxwO͈8�l�w�8��G�(j�����}���~�����E
 ��H=��V���E<��'��<Y5''�?��<YYY���fÁ������\7YYY�����|*:66�'~���o=s�l'��ԏTW�%b��^�~�Wo���Y���̙�֭�(/+������\�O�Ί�+P�T�6^�V:�)iI�m��r�|���x�Ϳ�u�VN�<I]]���L�2��+W�����6Yyq��!�<�D�4u�����S\y����q�탖?X�������W��,����w�� ];��ɬ�i5�oZ}��{*[y�2:��Y�+P"J :�V��t�k�epü
3��ܯhұ����%�m�V��ͥ�i��K���o><�u3�X9;{�[�$*�tl:\ώ���� }�(mr=���8
3��n�SѤڀz��
��U.�U4�xmG���Kα��N����8*�tT6E�Po("Vܩl҇�a��-���!r��|}Gh��Pޤ�|-�1& \�J�c��F�
�-'� �rBn��>��r:�Ztft=V�z0Y��u�XԴ��%�G9�{��O�E&��R!���A�����B�R���!!�)�!W �W4p�FI�7�$�>}�M:��{��h��k�E*q1r���MF�ʵX�w�h1� Q\��3Ԭ��l4�4w-������CIX�W��LP����O�E&L��.�`F�o�������������f=�|"��s_�oqͪf=vI��Հ���go�P۾V8Y���z�|LL�CaBJ,
�Ȣ�)\<��f���(/h�LL��_.��??+���=�=�ʾ�6�6g�8�G���k���'�������-.f������̵��a۱s�|���"�
����q7�d��Z!�d�?>'�?f�o��~��&�p������B�abк?C�����r��hz.Ԫ�~Og�t�ƫ~_C��{$��v��KP�eܾ��Z�]��NT�7��=C��q�'/^��^޿�t1_���2��]'���w�y$�y��w��JP����ym2q�������5��Aw!q���`���0Z�(=8F&�u�69IjN�y�B&0��^��(��yߛ/d&����z�r����Z.�3�Yy��*o��.�c��R�nZ�7h^��!�H�����v,���x��;L�ɛK��NT�C�v�HF6�r(=V���;}y��|��&�
p�D%w��\E|N^�0���E?`g1od��1�0;/i�r�A���w�+��T�nu�� ����W(���&�6@I�L=����Xf����~^���6*�t�6�	&Y$�D]���&���x�s��7;/�e{�z��������`�Xٲ� 7/������X�oI�}T����ƒ�ǧĢ�ٵj�̵�Z�F���O�URިc�ц��-��$0=;��n犜-:3��6E]��5B9ݬ�!IXm5m�1�n���ߗ��XC�	�D��m��i٥���T�K�h�J0���1�aWF�����x�����\������_S#0�2�X�����C˦�}J�BB�������Ͼ9J�9��i_	�T���ƭ�	j~{��Q%�\��UEd&8���:/��a���D:�����F���	���ƙ�7���E��z&�'�������_�Lض���=���`�gjtf���	�*o��U>#�B�37�b��p���ma�'�C�Έl�Α�*�+g9��3�U��Kd_U=�w�XH�(������_y�#���E��q (.���`b�i �iU|gV6�����3}�*� 7����U3�v�5��_?d�֝aisT �DE�]:.�W�lG.� ?����i5�!'�E9	<���\[��a?���cç�}��3j
 Pz�,�e��'Q�l')V��Yd&��nя� ������߮*�XԪ���_�}�{��ھ�ӗ��x�&����������'����aI]'���cWy���|�\�)�,�������on�����j�7_1t4{��������?��k.�֎�bc�f>=�H�0n�HeZv<ˊ2Y25��9t�o����M��w�X�"J��;}kV.��E�
 �fN�ws����T�Df"I~Z,s����x�c�hw8�u��o�'GJ��Jx�H�#)>�K.b�U����8o9���Ɇ.N�wQ٤��hq%���q$j�dĹFCE/U�5����lٹ?�;��
�������E\s�l��|�jӛi7X�l��i�Ҭ�A�����qd�q�k�ݬ�^Q��Zҵ*5

2�$�*}^�Ko����l�rX\��0f�����(d�ԉ̞�Ozr`�&ᦩ��ce�=UŁ�r��7_i��
�MVZ��Ld��|�s2HI�2!����pP]�D{����&�OUQ|�:�=|G�B�Gvz
)�Z&��"35���XA`J~�G��X59��]u��茞�c��� ��n����m��SOCsd%w����zfP(ihn������3�ݕ1�(!yXH�.�ed񖭄�Ah�,ta̾E�@�
-� I��=i�D޲$�Y��#��n�vy�Mx�V�2�=��Fel0@�E`��!�pرYz�raa���p�ze�MD̂ lt/l5���I����� a� b{�Vz��'%Ir͂8v,Ʊ邍2�����/I&���k���
�E�t�d����"��(Cc1�Y�{���7/ ƹ�cx�nh�1b6tE?cI�0���x�*�+��
g�<F��j5� +r�aA�����b�nkC��E���QF�ل�ǀ䵦�$�b��V�5
�y�����aH���^��F�rE2E2��K�D	=v�$	�Ռ�j x 	�l�x��~ �����+4 {�&���b� �<.�p`5������%$8f6Y�+���
�X$K�����+|,&@-��W$�J{�"�	�W�E@���4e���,$�<d��&K���$$�$�Y����C���[	�	_ջ���b�7�V@. [����$"I�l�ed�$	A8	�C�#:�O$l6p�P�T��(��ݲ�n4#�� (c���C�&�̭    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-f9ba9008f31679cd240e2c5f33a9a4fb.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/icon.png"
dest_files=[ "res://.import/icon.png-f9ba9008f31679cd240e2c5f33a9a4fb.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST               �  PNG �PNG

   IHDR          ���4   sRGB ���  ;IDATx��ێ� a������*R�B���g���`É�bJ)0I�1�.���� �q�O~`���8�Ax�<�?�8��9DZ0" $�7����� Bb����!> �+�1RXD���	Xa��AyJ~2[r����N��/H@
&��ȉc�� @�9y��<6�4�o4�d"������ �S��km��s�-�,^	����Ŏ��d�6��O����^��Ė��7S+Y5�>]�I��H=e��Z����O�PiBܿ����w��i_�O�w������N���#��ɯK�������M�v�F?����<~���L� @��Ŕ��R�u�7}�]�9����<~���|�YE�����+���e
�$҇f�쮷Xa�N�d�)�'�w4��t��n��p��3j'W�i�����WʵϠ��]ݤ`��4�P��>��u�`nW��Q�z�2)���J���� ނ���� ��N���S�{��s�d4��Zj��T�ұ;���J�:��&I� *hy�",Z�G��� �� B��'G{� NB[�g"  ���?�?�UW��l�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/move_arrow.png-4e572f66c96d8fb6aaa8e7fb05fb53e4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/move_arrow.png"
dest_files=[ "res://.import/move_arrow.png-4e572f66c96d8fb6aaa8e7fb05fb53e4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Scripts/FOGTile.gdc"
      [remap]

path="res://Scripts/Game.gdc"
         [remap]

path="res://Scripts/GameManager.gdc"
  [remap]

path="res://Scripts/Server.gdc"
       [remap]

path="res://Scripts/UI.gdc"
           [remap]

path="res://Scripts/Unit.gdc"
         �PNG

   IHDR   �   �   �>a�   sRGB ���  �IDATx��y|T����̒�$�L��F��������bEo�R���^�z�j�����~�WkUz�z�ꯥ�U�r��,.��(;� !�B�/3�d�s�2��d2�I&8�����y�3�s�y��Y^�a�[z3]2m�y�b�j�h[!ظ$I�� �]#L�$	A8�M�Z���2�}�(��h�r*vo���o�R
r��Z-�
e��H��Bt��&�HHz����	�L^_Z����������@%�)�)�2A�ֆ�  D��V�P��d�u����z)�F�U�!Ym�"Ԋ��vg�I�����ՂL��ܳ��o.0�[��@\$�Hq�� ��� �� w=�/X-f�$�f#��f�(#A��&�6c;X�٠8 f�jbb#24��� �ΕQD��B��}�	�S�� H�Ԣ�,�{��=G> t�����6Eh�6���+#P�$�!�P��L�r^�d� ���m� �z d �3/!->�� |ǹ�BIDdLx�7�RH�,f��I���(�G��'����)V�x���"�bǾ�a������8����}R>�(�	*�#��_E��1���0A@� �����H�8A���W*@Z�RA~�_D��R���#�Q�+b�V�R@��E��oG��	�R�(����O�_)"r�sA�B9�36x���M�`���r�:��xp[�&M%�E��0'�c+	B�R�K!��}(�E���JI��h/��/V��V@��ǩ/G����0��3�YP���Slر����Q]79A��+�b��\������r����d����0c�Z��DT\�ʆ��Ҹb����#��~�l6�~}�uon���gD�N����w�f�esE�W��b�ȩ
����ˣ���k�����-.�N TJ��r�,���)>����~�����:���ng���T������x;�<J��4�vƚ	+ �ӓ�u��Zz	ё�-�u���l��l6I���: ���w����|j++5��/��y��益�9YZ.�M`RB��z�>~q���x��-^ˌ7��:@J����_���7[9P�΁�v��u�������`��x�2?�uO�����=��p�њ��vp�����">JɼIq,�M`qN*��lt���W^��+����r�y���F��YRά_;�P��K�x���kY2�e���}��u/�(����z1��u�\?+���Tv}}�.]��eg���=�"�ט��4�zW�2��T���eY+k���Dj��X���Tzr�I	|��1?�:x��]�?�����{۷�I_���ڮr^�]I�9f�4d�6���T�q����6&���Y��o%o�]hT���p����V��s:�o����B$+>A���BIU=uM�#����. !��s�?z�>��a��z���#{����I�ʲ��?9��e�'�s��v�A�$���fDm���٭�y�Îs������p1��~A*Z��h��$A���7�ۉ��$=9�Ɩvz�}�w�JG��*ڨl��רS_C}a-��[���������UK��%�{���$�����ݞs_��!	�O��w�ǋQ��^��˞Rߧe{J[�mZY
�:�C(2a� ��b����+�&��e��l��h��� @F��H��BF�V��#������P�� ��B�(> ��V��=>.�8���B���t;��cF�Kb\� a�}`t��ƹ������ 8�ڍVK��:���x3&:@vf
ٙ�t��9z�ҧ:
�x�Վ��� c�s_�c5�^GNU�Tw��\�1�Tן���9X]t�_5B�็��ʅ3]��>T̺7�����^�:���\��˖��o���E������=� �?���x�z��##%��ﺉ���r9���I�\�&F��k��4[��?���y����떠�Pr���eЈ�7)�??� �fMu�������e��uM@�5�+o�����,-��N*�s�X~�|�,��{p�Q�Rr�w��3�AnV�ǵ&�'3%=�O�>����1����\�������#y)v�C�Ld��nX���nuM,�d&�~�����(~Y��/�?AI�ȼyB���^>9�L�V���D�Yy�B���Q���ʫ���w�d�td�AulǉF���0r< ٙ�(r���_�p���^į��g���#g����~^r4\���tנ�ʺ&r'J��;ΰ��7�P��$���H�����9��.�J�yuW9�m�^������k���G�w��������G���݁�6^���a��5���s4v����A����.��Wĩ�n��j�u��������h�O�bc���F���r��y��S˱�N�Ɍ�`ɼ�/��������������7"U��ª=Om.�j��n�e�	�#��T�C`��v��"��G����]���Oѐ�����,V�;x��><My�Σ��lgQvqQJd�ȕ�l�^�_�� ���KO���t��]o����鿰�j�I����3-$k"8Z���w��h��os�`�������9z#��r�}�mXl�u[l��Y:-�n�P*���Ň�"�a"� �q�����o:A}�o+`z��ݥ������?����5�.mEo�-���d����兩��@Jb�~'J�G�~�=��3Sn[ ����:3:ʛu����q|�m�&;�#�ۈ� �d"����P*��\iSԍ�Sa���@���J��g��{.�GU��y�r�����;�`����'l��;�`:�'M���_n^6�k�- ��ܽf��x��U�w����b�����_V9��^���X����- jU�#�����G�v�86�����-��P��O�spsw�7B�$�y �[ �������T.�KH���ey�,+\Fv��� �k�d�GǏ,/ .2�`*��E*ydy��x�G8�����>Ͽ���x�Z��+
��f�<����sx������4��J z����k�:B��$8�1���g��8��$I�y�]z�F��Z	<|���;�8��&�a�8Ҵj�&�q�q���@@f������s �2~z�4����P����i�<U��x�����v .b�Xy���v�w�Ȉ廋&��a��.�Č����om�x�C������V�������;.���0��Rȸ�)���7���:p�n�
��?v���,#R�\&��3 
3�c�K�05ECVB$�}�7�(o�Q��3�},����c�Oѐ��!3>���}�5�h�q���o�(�����������+�]� �lF����.G�?d�G����䧸�$?E�5��&��V=�o/��m|/�$F����d'����h��{_˛u�~{	gGi+��l�,��R�eL�HqH�H�ea�޹�c���N��;����~��^:�W�X�1���hx��ܲ0k�r�A�B�ܓ+��u���hi�×��^OYiˠ�B&r��٬��[��@�z^w]���I�-e�e����E�r?Z��u��OB&�*Q�2��í�a�F�M��=������ ��9��?Gɑ��U��+s�G��7��L�ǹ��tn��6n�����]�Ǳ�ΐ�t
��Ї�M%*bP�f3O<�3^z�e��8Sr��~����]S~t���I�V�Ng��t�4#3�>���1�����c?y�e�y饗y��a6:�FE�yh�TB�� �B���x�s����C�Yoûسg/ �2�>������,�����uSy������i1j�2� �ݻ���NA{��!��m�˹���!3E	�M�v$f���c���|����uX��E��d�<c~pe�� �2�W�P�a�Zy��u>�ٸ�=���:�EA �Ǿ�� ��+..��e�[otuuQ[k��-H�m��t/�
o�1�Fmm-]]��,��l�p9竰����h�opy�o����㢂�0��H�XQ����ǋ���V�iS�f�5 w��"�^'�1Ц����X��BB *�2rN-��<u��|���QP0�YG�T�l���<^�� 4t���&5w�\}�1�7o.��ɘ,�1Y�i��d����ļys}�����ܹ�e{�Bą>$@��7�ͣ?yt�zj���~� o];&�!�M����J�c?}�zx��'�=Jt�������	 �r��N��/�t1O��I����fdd���'--�Ҧ6:�\0�t�,�M=������'#��RtTTO��I/�z���.�k��K�,����ܱ����lٵ̝;���wPVZJ[[���̘1���V�R��5ZxaGɘ���$�v����-�������۷m������ד���ԂV�ZIB U��`�ŝg����R���Ͽ�?ȏ�+p�$&&r�]wz-���u���x]��EX����N���_W���x�ܲ�5���`��+���'�t�'ۗ���  t��yf�I����M�3�O�x��/oֱ������m�V�����I�FJ���/�?����X5'�Ä-I��:�m`WI�s��C�	� �J�?Z^J4�)*���7�F�@��Y9�1*ǀ�7�xu���;���Y܄�����My����И�E�
�3������z�}��8���3��5�(�@	2&� �@�D&d��aƇ� |�	�7��� �S�����>�:#�~3��1���w�a2ۨ���j��g���";1
�L`r|J�Hf\$j���X��dM�A�� �ܼ���J�>܄M���U4�h�����>��U�#��07���#Y���x2� Q��Scլ��t<�5j�Y������IP�益H�U���LN�B&�w�.�`f�o���HӪy��BG{�Rբ�[O��r��=$׬j�c�$j�z1Ym4w��ܭs�j��* ��[�_���hD�$D���,�I��\�`4����%Y�|���h��,��2��;����6T�c�بi��f�3(B\=}�??��J_���������]�Gs-�{�q��U޷�/. �fYg�O&��2���g����U����9	ܹ$��Z#A���(��(�ο��GO�p����<��P���x�tWsi�Z1�khTr� �����Trw.�F%G�?�tTq���^#{��O^L����sJ���|����g�߽�?o�������8��s�d��)�V+���k�z��B�̀��`���g��w:�LL�緵ɈSsf�ͫ2����M��#����|!U��Sw����ӕu\6w ����-kQ}�U��lu�nݲ0�k\��&9�>����v��\��Gc�k�48o.�O"]�v��8���l�t(�f밂덁8D����&�p�Tw�b�">7K;Li�T��=vsG&
.k	s�⼖kE�xCנ ,�Kd�(��V�2��}"-�;���j0��}�����9r!x��rV�Sެ����h�EFh��7Sެ�`U;�|:�����u��~#'�k��1r�0��l�}�[W\�wdr�޷ ��Z��js����	Q(�Kt�Z!sl���T:b�㣔��ӱ�x��u|e[Q#���H���Ǟ��Ug��NQ��瘡T��If�Dm{`����g�e�!L���E���q�^nY~9� �$/������x���-;|��>��_��d���ƼIq�O��fc��=������3�6���u���/i^L�2~�|0>򓯎S�42e�W�6*����ykj��_�4eX�E)yju!����l���׿���6"�=z^Z��q�`J<��yV�M0r�߮�ł)��/��}�z��0���*ꚰZm,�i�N�U333��e�!��3TP)d<{�lf;Mg�k�66}�/������+��h2�h�=�>%F��,-���7_��Ďm��߮�Ea�����o}��[>x[c.  E����X2w: Iߞ���b����#}&*� 7����3Iw�5���a�9. p����nW�/��#Y�����Dj�zi�ĉcEaF,�|g���(ǿ{���q`_�Ό�  �T�����¼�h5�v⢔���F�VEu�~�;�����vM�KR���f~��Mv�/
j�� �X������}����p5?\s�Ǧ���]|T��޲֋f+���U�,���b�{
�76}Ļ�v�j�7_��lq9 9A�#߿�k/�̵�g���L�<G�0f�Pezz�SY:-�a9t擯����-�vt�Y�BJ �7#����rłB����^#�z8��M��N�[C3�$;)��Yqv�AF�Q�� �6{���m_p����U�KH
� q1Ѭ\z	��YLvf���-�n��TC7�z:�L����"/9m����h��h(索�sl�� �v���p�� 83k�dn�z1�^:��h�ܱ��F:zMT4���3Ӣ�G�����p��o��m�ݴXQn^�y��5*��
�R4�G)}��٭���El��`PL��0a������g��L�&9�?G�`���ŉ�j����Pq5-�Wc&� ���ǜ�fO�&;#���)�d���f:�uT74St���3գ��w��(�B�''��Ր;)���8�b����L�r1Qj2R\ݻ�ϵ��su;SUHt��r���ʺFڻ�4��Vp�Hp�q�
$�-�4��S\V3�]�0����$�a��0c���JH:�V�B��[O<�VhIr�(H���I&�p[A�ZDI\➭�o�U��J�P*"�k���Q��x���f���c��"h�Y����놙�XL��l�� 	IW�t|���UA��\�l��."$I�lp���I�T������g~J�$�*��f��71M�a<1���>��d0���U�"V��dr�Axù��d�d�l�a��d�c1�)����(��+vo��<y)�jz~�f;��+#PF�x���H�����c�%8QRް�v�������k��f�a�$�0d11��c1�3kO,F�}��_��l6��ת���{;2�+H̙�#�����D;״�MXL$��$� ӱZ�HV+c�>�}�=�}i���j��a��y��z��۱Z��"Ԋ�0	N�����.�x�;jO�vJ�٦��I�1	�0�lOa�	��k%���7{����Y���j5?l6�J�����L$$�$�͆�V��a����z0�j���f�dڬ=�BŤ�6ѶB�qH"�4#<=g$IBN�`�D�m�G��u$�b,Z���ݞO�3�m�߷P5�:    IEND�B`�      ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Panz Test 0712201342   application/run/main_scene          res://scenes/Game.tscn     application/config/icon          res://sprites/icon.png     autoload/GameManager(         *res://scripts/GameManager.gd      autoload/Server          *res://Scripts/Server.gd   display/window/size/width            display/window/size/height            display/window/size/test_width            display/window/size/test_height            display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/left_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color        �?  �?  �?  �?)   rendering/environment/default_environment          res://default_env.tres      