GDPC                                                                            &   X   res://.import/TopDownShooter.apple-touch-icon.png-4dd8911ebef5b3119f66f04f3dd2ad47.stex p      ~/      ��,ȗ9��xVk~�L   res://.import/TopDownShooter.icon.png-96e9ffff74d4cc35d73dbecf7ad0646f.stex ��      �      &�y���ڞu;>��.pH   res://.import/TopDownShooter.png-6d3d0836a7aa7d87292bab5583a8aea8.stex  @�      �,      UvU�K�Ϭ�Qv��L   res://.import/WINTelevision.svg.png-b95a3c361279a819ef17c8b005b4af37.stex    �      `      @� k��dr:����)D   res://.import/White square.png-457bebc586c244889eae16429014296c.stexL     �       ���g�5��t�s�y�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex P     �      &�y���ڞu;>��.p   res://Bullet.tscn   @
      �      ��@�K��W�­�ݛ   res://Coin.gd.remap �X            Vg|���.�W��w�&&�   res://Coin.gdc  �      -      �,��O�������`�   res://Coin.tscn       '      x��<5_�j��ہ�h   res://Enemy 2.gd.remap  �X     "       ;��]ZYZ��Ӊ�#�   res://Enemy 2.gdc   @            Ք�kY��;�����   res://Enemy 3.gd.remap   Y     "       n���T=�5�] f   res://Enemy 3.gdc   P      �      W���5����ޣ�   res://Enemy 3.tscn  0            j��qE����46%   res://Enemy.gd.remap0Y             � G>��A_WWng4��   res://Enemy.gdc @      �      �Z�Sg�~��LA��F�   res://Enemy.tscn0#      �      G�?~z��N��<5Ry��    res://KinematicBody2D.gd.remap  PY     *       �9�^L�TDv [   res://KinematicBody2D.gdc   �&      �       C7�2\��_V   res://Node2D.tscn   �'      �6      䯬J�^�� ����   res://Player.gd.remap   �Y     !       ��0�F �qq��dX��   res://Player.gdcp^      �      v���6b���Y��#+��   res://Player.tscn   `j      �      �"b�}�ߡ��2*Nq�0   res://TopDownShooter.apple-touch-icon.png.import��      �      ڌ�.�%�cQբ���d$   res://TopDownShooter.icon.png.importp�      �      f�-C:g��lub�    res://TopDownShooter.png.import @�      �      l��>���G,i�HֹC$   res://WINTelevision.svg.png.import  ;     �      �n��J�x�|PJ�j   res://Wall.tres �=     �      �l���w\�$Mc�o3   res://Wall.tscn �A     �      NZ;�L"k]�h���Ac   res://Wall2.tres@D     �      iѲ��4��
��K��   res://Wall2.tscn�F     �      ʖF��ײ�D��7��   res://Wall3.tres�H     H      �r���E��,��,�    res://White square.png.import   �L     �      xO��B�U@��id   res://default_env.tres  pO     �       um�`�N��<*ỳ�8   res://icon.png  �Y     �      G1?��z�c��vN��   res://icon.png.import    V     �      ��fe��6�B��^ U�   res://project.binary�f     �      ���p��;�Mϵ��=d        [gd_scene load_steps=3 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 34.5, 10.5 )

[node name="Bullet" type="RigidBody2D"]

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.5, 0.125 )
texture = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
scale = Vector2( 0.5, 0.125 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( 0.5, -0.5 )
shape = SubResource( 1 )
         GDSC            #      ������������τ�   �������ׄ�������������Ҷ   ���϶���   ���������Ҷ�   �������Ŷ���   ���������Ӷ�      GetCoins                                                    	      
   !      3YYYYYY0�  P�  QV�  &�  T�  PQV�  �  T�  PQ�  �  PQY`   [gd_scene load_steps=4 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]
[ext_resource path="res://Coin.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 80.5, 80 )

[node name="KinematicBody2D" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )
disabled = true

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.992157, 1, 0, 1 )
texture = ExtResource( 1 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
         GDSC         %   �      ������������τ�   �����ض�   ����������Ӷ   ��������������ض   ��������������ض   ���������������Ŷ���   ����׶��   �����Ķ�   ���������¶�   �������Ӷ���   �������ض���   ���������Ҷ�   ����������ٶ   ������¶   ���������������Ӷ���   ���ڶ���   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   ���������Ӷ�            Player     2         Bullet                                                      	      
         "      .      4      @      A      L      M      Y      `      e      f      g      h      n      p      q      r      s      t      u      |       �   !   �   "   �   #   �   $   �   %   3YYY;�  �  PQY;�  Y;�  Y;�  V�  YYYY0�  P�  QV�  ;�  �  PQT�	  P�  Q�  �  �  T�
  �  �  P�  �
  QT�  PQ�  �  &�  T�  P�  Q	�  V�  �  �
  P�  T�
  �
  Q�  �  �  P�  T�
  Q�  �  P�  Q�  �  �  Y0�  PQV�  -YYYYYY0�  P�  QV�  &�  �  T�  V�  �  PQ�  &�  �  T�  V�  �  �  PQY`   GDSC      	   3   �      ������������τ�   �����ض�   ����������޶   ���������Ӷ�   ����������Ӷ   ��������������ض   ��������������ض   ���������������Ŷ���   ����׶��   ���������Ӷ�   �����Ķ�   ���������¶�   �������Ӷ���   �������ض���   ���������Ҷ�   ����������ٶ   ������¶   ���������������Ӷ���   ���ڶ���   �����������޶���   ��������Ķ��   ��������Ķ��   ����Ӷ��   ������Ӷ   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   d                                   boss is dead      Player     2         Bullet                     
                                 	   "   
   #      $      +      1      5      9      >      B      N      T      `      a      l      m      y      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   3YY;�  �  PQYY;�  Y;�  �  Y;�  �  Y;�  Y;�  V�  YYY0�  P�  QV�  &�  
�  V�  �  �  �  �  �  �  �?  P�  Q�  �	  PQ�  ;�
  �  PQT�  P�  Q�  �  �
  T�  �  �  P�  �  QT�  PQ�  �  &�  T�  P�  Q	�  V�  �  �  P�
  T�  �  Q�  �  �  P�
  T�  Q�  �  P�  Q�  �  �  �  Y0�  PQV�  -YYY0�  PQV�  ;�  W�  �  �  T�  �  �  �  &�  V�  �  T�  �  �  (V�  �  T�  �  YYYY0�  P�  QV�  &�  �  T�  V�  �  PQ�  &�  �  T�  V�  �  �  �  Y` [gd_scene load_steps=5 format=2]

[ext_resource path="res://Enemy 3.gd" type="Script" id=1]
[ext_resource path="res://White square.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 72, 67 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 99, 93 )

[node name="Enemy 3" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.921569, 0, 1, 1 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 1, -3 )
shape = SubResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 2 )

[node name="healthbar" type="ProgressBar" parent="."]
modulate = Color( 1, 0, 0, 1 )
margin_left = -89.0
margin_top = 105.0
margin_right = 88.0
margin_bottom = 146.0
percent_visible = false

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
        GDSC         !   �      ������������τ�   �����ض�   ����������Ӷ   ��������������ض   ��������������ض   ���������������Ŷ���   ����׶��   �����Ķ�   ���������¶�   �������Ӷ���   �������ض���   ���������Ҷ�   ����������ٶ   ������¶   ���������������Ӷ���   ���ڶ���   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   ���������Ӷ�            Player     2         Bullet                                                      	       
   ,      2      >      ?      J      K      W      ^      c      d      e      k      m      n      o      p      q      r      y      �      �      �       �   !   3YYY;�  �  PQY;�  Y;�  Y;�  V�  YY0�  P�  QV�  ;�  �  PQT�	  P�  Q�  �  �  T�
  �  �  P�  �
  QT�  PQ�  �  &�  T�  P�  Q	�  V�  �  �
  P�  T�
  �
  Q�  �  �  P�  T�
  Q�  �  P�  Q�  �  Y0�  PQV�  -YYYYYY0�  P�  QV�  &�  �  T�  V�  �  PQ�  &�  �  T�  V�  �  PQY`             [gd_scene load_steps=4 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 60.5, 58 )

[node name="Enemy" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
scale = Vector2( 0.8, 0.8 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )
__meta__ = {
"_edit_group_": true
}

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( 0.5, -1 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.74902, 0.137255, 0.137255, 1 )
scale = Vector2( 0.8, 0.8 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
       GDSC                   ������������τ�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY` [gd_scene load_steps=11 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=2]
[ext_resource path="res://Enemy 2.gd" type="Script" id=3]
[ext_resource path="res://White square.png" type="Texture" id=4]
[ext_resource path="res://WINTelevision.svg.png" type="Texture" id=5]
[ext_resource path="res://Wall3.tres" type="TileSet" id=6]
[ext_resource path="res://Coin.tscn" type="PackedScene" id=7]
[ext_resource path="res://Enemy 3.tscn" type="PackedScene" id=8]

[sub_resource type="GDScript" id=1]
script/source = "extends Node2D

var motion = Vector2()




##func _physics_process(delta):
#	var Player = get_parent().get_node(\"Player\")
#
#	position += (Player.position - position)/50
#	look_at(Player.position)
#
##	move_and_collide(motion)


func kill():
	pass





func _on_Area2D_body_entered(body):
	if \"Player\" in body.name:
		kill()
	if \"Bullet\" in body.name:
		queue_free()
"

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 35, 34.5 )

[node name="World" type="Node2D"]
script = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.345098, 0.207843, 0.207843, 1 )
position = Vector2( -10, -4 )
scale = Vector2( 50, 50 )
texture = ExtResource( 4 )

[node name="TileMap" type="TileMap" parent="."]
position = Vector2( 26, 0 )
tile_set = ExtResource( 6 )
cell_size = Vector2( 128, 128 )
cell_quadrant_size = 32
show_collision = true
format = 1
tile_data = PoolIntArray( -1572878, 0, 0, -1572877, 0, 0, -1572876, 0, 0, -1572875, 0, 0, -1572874, 0, 0, -1572873, 0, 0, -1507342, 0, 0, -1507337, 0, 0, -1441806, 0, 0, -1441801, 0, 0, -1376270, 0, 0, -1376265, 0, 0, -1310742, 0, 0, -1310741, 0, 0, -1310740, 0, 0, -1310739, 0, 0, -1310738, 0, 0, -1310737, 0, 0, -1310736, 0, 0, -1310735, 0, 0, -1310734, 0, 0, -1310729, 0, 0, -1310728, 0, 0, -1310727, 0, 0, -1310726, 0, 0, -1310725, 0, 0, -1310724, 0, 0, -1310723, 0, 0, -1310722, 0, 0, -1310721, 0, 0, -1376256, 0, 0, -1376255, 0, 0, -1376254, 0, 0, -1376253, 0, 0, -1376252, 0, 0, -1376251, 0, 0, -1376250, 0, 0, -1376249, 0, 0, -1376248, 0, 0, -1376247, 0, 0, -1376246, 0, 0, -1376245, 0, 0, -1376244, 0, 0, -1376243, 0, 0, -1376242, 0, 0, -1376241, 0, 0, -1376240, 0, 0, -1376239, 0, 0, -1376238, 0, 0, -1376237, 0, 0, -1245206, 0, 0, -1245199, 0, 0, -1245186, 0, 0, -1310714, 0, 0, -1310707, 0, 0, -1310701, 0, 0, -1179670, 0, 0, -1179663, 0, 0, -1179650, 0, 0, -1245178, 0, 0, -1245171, 0, 0, -1245165, 0, 0, -1114134, 0, 0, -1114127, 0, 0, -1179647, 0, 0, -1179635, 0, 0, -1179629, 0, 0, -1048598, 0, 0, -1048591, 0, 0, -1114111, 0, 0, -1114099, 0, 0, -1114093, 0, 0, -983062, 0, 0, -983060, 0, 0, -983059, 0, 0, -983055, 0, 0, -983054, 0, 0, -983053, 0, 0, -983052, 0, 0, -983051, 0, 0, -983050, 0, 0, -983049, 0, 0, -983048, 0, 0, -983047, 0, 0, -983046, 0, 0, -983045, 0, 0, -983044, 0, 0, -983043, 0, 0, -983042, 0, 0, -983041, 0, 0, -1048576, 0, 0, -1048575, 0, 0, -1048574, 0, 0, -1048573, 0, 0, -1048572, 0, 0, -1048571, 0, 0, -1048570, 0, 0, -1048569, 0, 0, -1048568, 0, 0, -1048563, 0, 0, -1048557, 0, 0, -917526, 0, 0, -917519, 0, 0, -983029, 0, 0, -983028, 0, 0, -983027, 0, 0, -983021, 0, 0, -851990, 0, 0, -851983, 0, 0, -851969, 0, 0, -917504, 0, 0, -917491, 0, 0, -917485, 0, 0, -786454, 0, 0, -786447, 0, 0, -786442, 0, 0, -786441, 0, 0, -786433, 0, 0, -851968, 0, 0, -851955, 0, 0, -851949, 0, 0, -720918, 0, 0, -720911, 0, 0, -720906, 0, 0, -720905, 0, 0, -786426, 0, 0, -786425, 0, 0, -786424, 0, 0, -786423, 0, 0, -786422, 0, 0, -786421, 0, 0, -786420, 0, 0, -786419, 0, 0, -786413, 0, 0, -655382, 0, 0, -720890, 0, 0, -720877, 0, 0, -589846, 0, 0, -589827, 0, 0, -589826, 0, 0, -655354, 0, 0, -655341, 0, 0, -524310, 0, 0, -524291, 0, 0, -524290, 0, 0, -589818, 0, 0, -589805, 0, 0, -458774, 0, 0, -524282, 0, 0, -524269, 0, 0, -393238, 0, 0, -393231, 0, 0, -393230, 0, 0, -393229, 0, 0, -393228, 0, 0, -393227, 0, 0, -393226, 0, 0, -393225, 0, 0, -393224, 0, 0, -393223, 0, 0, -393222, 0, 0, -393221, 0, 0, -393220, 0, 0, -393219, 0, 0, -393218, 0, 0, -393217, 0, 0, -458752, 0, 0, -458751, 0, 0, -458750, 0, 0, -458749, 0, 0, -458748, 0, 0, -458747, 0, 0, -458746, 0, 0, -458739, 0, 0, -458733, 0, 0, -327702, 0, 0, -393203, 0, 0, -393197, 0, 0, -262166, 0, 0, -327667, 0, 0, -327661, 0, 0, -196630, 0, 0, -262131, 0, 0, -262125, 0, 0, -131094, 0, 0, -131093, 0, 0, -131092, 0, 0, -131091, 0, 0, -131090, 0, 0, -131089, 0, 0, -131088, 0, 0, -131087, 0, 0, -131086, 0, 0, -131085, 0, 0, -131084, 0, 0, -131083, 0, 0, -131082, 0, 0, -131081, 0, 0, -131080, 0, 0, -131079, 0, 0, -131078, 0, 0, -131077, 0, 0, -131076, 0, 0, -131075, 0, 0, -131074, 0, 0, -131073, 0, 0, -196608, 0, 0, -196607, 0, 0, -196606, 0, 0, -196605, 0, 0, -196604, 0, 0, -196603, 0, 0, -196602, 0, 0, -196601, 0, 0, -196600, 0, 0, -196599, 0, 0, -196598, 0, 0, -196597, 0, 0, -196596, 0, 0, -196595, 0, 0, -196589, 0, 0, -65558, 0, 0, -131059, 0, 0, -131053, 0, 0, -22, 0, 0, -65523, 0, 0, -65517, 0, 0, 65514, 0, 0, 13, 0, 0, 19, 0, 0, 131050, 0, 0, 131054, 0, 0, 131055, 0, 0, 131056, 0, 0, 131057, 0, 0, 131058, 0, 0, 131059, 0, 0, 131065, 0, 0, 65549, 0, 0, 65555, 0, 0, 196586, 0, 0, 196589, 0, 0, 196590, 0, 0, 196601, 0, 0, 131085, 0, 0, 131091, 0, 0, 262122, 0, 0, 262125, 0, 0, 262137, 0, 0, 196627, 0, 0, 327658, 0, 0, 327659, 0, 0, 327660, 0, 0, 327661, 0, 0, 327673, 0, 0, 262163, 0, 0, 393194, 0, 0, 393200, 0, 0, 393201, 0, 0, 393209, 0, 0, 327699, 0, 0, 458730, 0, 0, 458735, 0, 0, 458736, 0, 0, 458737, 0, 0, 458738, 0, 0, 458745, 0, 0, 458746, 0, 0, 458747, 0, 0, 458748, 0, 0, 458749, 0, 0, 458750, 0, 0, 458751, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 393233, 0, 0, 393234, 0, 0, 393235, 0, 0, 393236, 0, 0, 393237, 0, 0, 393238, 0, 0, 524266, 0, 0, 524271, 0, 0, 524272, 0, 0, 524273, 0, 0, 524274, 0, 0, 524281, 0, 0, 458774, 0, 0, 589802, 0, 0, 589808, 0, 0, 589809, 0, 0, 589817, 0, 0, 524306, 0, 0, 524310, 0, 0, 655338, 0, 0, 655353, 0, 0, 589842, 0, 0, 589846, 0, 0, 720874, 0, 0, 720889, 0, 0, 720895, 0, 0, 655360, 0, 0, 655382, 0, 0, 786410, 0, 0, 786425, 0, 0, 786431, 0, 0, 720896, 0, 0, 720907, 0, 0, 720918, 0, 0, 851946, 0, 0, 851950, 0, 0, 851956, 0, 0, 851957, 0, 0, 851958, 0, 0, 851959, 0, 0, 851960, 0, 0, 851961, 0, 0, 786443, 0, 0, 786454, 0, 0, 917482, 0, 0, 917486, 0, 0, 917497, 0, 0, 851971, 0, 0, 851979, 0, 0, 851990, 0, 0, 983018, 0, 0, 983022, 0, 0, 983029, 0, 0, 983033, 0, 0, 917506, 0, 0, 917507, 0, 0, 917508, 0, 0, 917515, 0, 0, 917516, 0, 0, 917517, 0, 0, 917518, 0, 0, 917526, 0, 0, 1048554, 0, 0, 1048558, 0, 0, 1048565, 0, 0, 1048569, 0, 0, 983043, 0, 0, 983062, 0, 0, 1114090, 0, 0, 1114094, 0, 0, 1048598, 0, 0, 1179626, 0, 0, 1179627, 0, 0, 1179628, 0, 0, 1179629, 0, 0, 1179630, 0, 0, 1179631, 0, 0, 1179632, 0, 0, 1114134, 0, 0, 1245162, 0, 0, 1179670, 0, 0, 1310698, 0, 0, 1245206, 0, 0, 1376234, 0, 0, 1376235, 0, 0, 1376236, 0, 0, 1376237, 0, 0, 1376238, 0, 0, 1376239, 0, 0, 1376240, 0, 0, 1376241, 0, 0, 1376242, 0, 0, 1376243, 0, 0, 1376244, 0, 0, 1376245, 0, 0, 1376246, 0, 0, 1376247, 0, 0, 1376248, 0, 0, 1376249, 0, 0, 1376250, 0, 0, 1376251, 0, 0, 1376252, 0, 0, 1376253, 0, 0, 1376254, 0, 0, 1376255, 0, 0, 1310720, 0, 0, 1310721, 0, 0, 1310722, 0, 0, 1310723, 0, 0, 1310724, 0, 0, 1310725, 0, 0, 1310726, 0, 0, 1310727, 0, 0, 1310728, 0, 0, 1310729, 0, 0, 1310730, 0, 0, 1310731, 0, 0, 1310732, 0, 0, 1310733, 0, 0, 1310734, 0, 0, 1310735, 0, 0, 1310736, 0, 0, 1310737, 0, 0, 1310738, 0, 0, 1310739, 0, 0, 1310740, 0, 0, 1310741, 0, 0, 1310742, 0, 0 )

[node name="Sprite2" type="Sprite" parent="."]
position = Vector2( -1381, -2919 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 5 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 2137, 1447 )
scale = Vector2( 0.5, 0.5 )

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true
zoom = Vector2( 1.5, 1.5 )

[node name="Enemy" parent="." instance=ExtResource( 2 )]
position = Vector2( 1264, 202 )
scale = Vector2( 0.5, 0.5 )

[node name="BlueEnemy 2" type="KinematicBody2D" parent="."]
position = Vector2( -400, 531 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="BlueEnemy 2"]
scale = Vector2( 0.4, 0.4 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Area2D" type="Area2D" parent="BlueEnemy 2"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="BlueEnemy 2/Area2D"]
position = Vector2( 0, 0.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="BlueEnemy 2"]
modulate = Color( 0.152941, 0.117647, 0.721569, 1 )
scale = Vector2( 0.4, 0.4 )
texture = ExtResource( 4 )

[node name="Coins" parent="." instance=ExtResource( 7 )]
position = Vector2( 1689, 1242 )
scale = Vector2( 0.3, 0.3 )

[node name="BlueEnemy 3" type="KinematicBody2D" parent="."]
position = Vector2( 578, 1166 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="BlueEnemy 3"]
scale = Vector2( 0.4, 0.4 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Area2D" type="Area2D" parent="BlueEnemy 3"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="BlueEnemy 3/Area2D"]
position = Vector2( 0, 0.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="BlueEnemy 3"]
modulate = Color( 0.152941, 0.117647, 0.721569, 1 )
scale = Vector2( 0.4, 0.4 )
texture = ExtResource( 4 )

[node name="Enemy 3" parent="." instance=ExtResource( 8 )]
position = Vector2( -1338, -2352 )

[node name="Enemy2" parent="." instance=ExtResource( 2 )]
position = Vector2( -1820, -90 )
scale = Vector2( 0.5, 0.5 )

[node name="Enemy3" parent="." instance=ExtResource( 2 )]
position = Vector2( -1348, 818 )
scale = Vector2( 0.5, 0.5 )

[node name="Enemy4" parent="." instance=ExtResource( 2 )]
position = Vector2( 1248, -705 )
scale = Vector2( 0.5, 0.5 )

[node name="BlueEnemy 4" type="KinematicBody2D" parent="."]
position = Vector2( -1931, 1537 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="BlueEnemy 4"]
scale = Vector2( 0.4, 0.4 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Area2D" type="Area2D" parent="BlueEnemy 4"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="BlueEnemy 4/Area2D"]
position = Vector2( 0, 0.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="BlueEnemy 4"]
modulate = Color( 0.152941, 0.117647, 0.721569, 1 )
scale = Vector2( 0.4, 0.4 )
texture = ExtResource( 4 )

[node name="BlueEnemy 5" type="KinematicBody2D" parent="."]
position = Vector2( 2246, -1531 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="BlueEnemy 5"]
scale = Vector2( 0.4, 0.4 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Area2D" type="Area2D" parent="BlueEnemy 5"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="BlueEnemy 5/Area2D"]
position = Vector2( 0, 0.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="BlueEnemy 5"]
modulate = Color( 0.152941, 0.117647, 0.721569, 1 )
scale = Vector2( 0.4, 0.4 )
texture = ExtResource( 4 )

[node name="Enemy5" parent="." instance=ExtResource( 2 )]
position = Vector2( -1547, -1119 )
scale = Vector2( 0.5, 0.5 )

[node name="Enemy6" parent="." instance=ExtResource( 2 )]
position = Vector2( 286, -1363 )
scale = Vector2( 0.5, 0.5 )

[node name="BlueEnemy 6" type="KinematicBody2D" parent="."]
position = Vector2( -2175, -1257 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="BlueEnemy 6"]
scale = Vector2( 0.4, 0.4 )
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Area2D" type="Area2D" parent="BlueEnemy 6"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="BlueEnemy 6/Area2D"]
position = Vector2( 0, 0.5 )
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="BlueEnemy 6"]
modulate = Color( 0.152941, 0.117647, 0.721569, 1 )
scale = Vector2( 0.4, 0.4 )
texture = ExtResource( 4 )

[node name="Coins2" parent="." instance=ExtResource( 7 )]
position = Vector2( -192, 1899 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins3" parent="." instance=ExtResource( 7 )]
position = Vector2( -2306, -83 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins4" parent="." instance=ExtResource( 7 )]
position = Vector2( 2094, -1924 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins5" parent="." instance=ExtResource( 7 )]
position = Vector2( 526, 322 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins6" parent="." instance=ExtResource( 7 )]
position = Vector2( -2084, -2227 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins7" parent="." instance=ExtResource( 7 )]
position = Vector2( -435, -1408 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins8" parent="." instance=ExtResource( 7 )]
position = Vector2( -445, -2248 )
scale = Vector2( 0.3, 0.3 )

[node name="Coins9" parent="." instance=ExtResource( 7 )]
position = Vector2( -1396, -2935 )
scale = Vector2( 0.3, 0.3 )

[connection signal="body_entered" from="BlueEnemy 2/Area2D" to="BlueEnemy 2" method="_on_Area2D_body_entered"]
[connection signal="body_entered" from="BlueEnemy 3/Area2D" to="BlueEnemy 3" method="_on_Area2D_body_entered"]
[connection signal="body_entered" from="BlueEnemy 4/Area2D" to="BlueEnemy 4" method="_on_Area2D_body_entered"]
[connection signal="body_entered" from="BlueEnemy 5/Area2D" to="BlueEnemy 5" method="_on_Area2D_body_entered"]
[connection signal="body_entered" from="BlueEnemy 6/Area2D" to="BlueEnemy 6" method="_on_Area2D_body_entered"]
       GDSC   4      c   �     ������������τ�   ����Ҷ��   ����������Ҷ   �����¶�   �����޶�   ��������¶��   �������������Ӷ�   ��������������������ض��   �����������Ӷ���   �����϶�   ���������������Ŷ���   ����׶��   �����ض�   �����������޶���   �����������ݶ���   �������Ӷ���   �������������������Ӷ���   ����¶��   ����������������Ҷ��   ϶��   ζ��   ���������Ҷ�   �������������Ӷ�   ������¶   ������������������������ض��   ���������������������Ҷ�   ���Ӷ���   ��������������Ӷ   �������Ӷ���   �������ض���   �������؄�   ��������������ض   ���������������Ŷ���   ������������Ӷ��   ������Ҷ   �������ض���   �������¶���   ������������Ҷ��   �������Ŷ���   ���ض���   ����ڶ��   �������¶���   ��������Ķ��   ��������Ķ��   ����Ӷ��   ������Ӷ   ����¶��   �������������������������¶�   �������ׄ�������������Ҷ   ���϶���   ���������Ҷ�   �������ׄ������������Ҷ�   �     �        res://Bullet.tscn      d                             Player is dead        ui_up               ui_down       ui_left       ui_right      LMB    	   add_child               Attackcooldown        kill                               
                     	   "   
   '      ,      1      2      8      :      ;      <      C      J      K      O      S      T      Z      ^      b      g      o      p      q      r       {   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   	  5     6     7     8   #  9   (  :   0  ;   8  <   9  =   ?  >   E  ?   K  @   L  A   R  B   X  C   [  D   a  E   b  F   c  G   d  H   j  I   r  J   x  K   y  L   z  M   ~  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   3YYYY;�  Y;�  �  Y;�  ?P�  QY;�  �  Y8;�  �  Y;�  �  Y;�  �  Y;�  �  YY0�	  PQV�  -YYY0�
  P�  QV�  ;�  �  PQ�  �  �  PQ�  �  PQ�  �  &�  
�  V�  �  �  �  �  �  �  �?  P�  Q�  �  PQT�  PQ�  �  �  �  &�  T�  P�  QV�  �  T�  �	  �  &�  T�  P�
  QV�  �  T�  �	  �  &�  T�  P�  QV�  �  T�  �	  �  &�  T�  P�  QV�  �  T�  �	  �  �  �  �  T�  PQ�  �  �  P�  �  Q�  �  P�  PQQ�  �  &�  T�  P�  QV�  �  PQ�  Y0�  PQV�  ;�  �  T�  PQ�  �  T�  W�  T�  �  �  T�   �   �  �  T�!  P�  PQR�  P�  R�  QT�"  P�#  QQ�  �  PQT�$  PQT�%  P�  R�  QYY0�&  PQV�  �  �	  �  �?  P�  Q�  ;�'  �>  P�  Q�  W�(  T�)  P�'  Q�  Y0�  PQV�  ;�*  W�+  �  �*  T�,  �  �  �  &�  �  V�  �*  T�-  �  �  (V�  �*  T�-  �  YYYY0�  PQV�  &�  �  �  V�  �  �  �  �  �  �  �  �  �  W�  T�.  PQ�  �  �?  P�  Q�  YYYY0�/  PQV�  �  �  YYY0�0  P�1  QV�  &�1  T�2  P�  QV�  �  �  YYYY0�3  P�1  QV�  &�1  T�2  P�  QV�  �  �  YY`[gd_scene load_steps=4 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
scale = Vector2( 7, 7 )
shape = SubResource( 1 )

[node name="Label" type="Label" parent="."]
margin_left = -195.0
margin_top = -111.0
margin_right = -65.0
margin_bottom = -97.0
rect_scale = Vector2( 3, 3 )
align = 1

[node name="Healthbar" type="ProgressBar" parent="."]
modulate = Color( 0, 1, 0.25098, 1 )
margin_left = -80.0
margin_top = 76.0
margin_right = 83.0
margin_bottom = 106.0
value = 100.0
percent_visible = false

[node name="Attackcooldown" type="Timer" parent="."]
wait_time = 0.5

[node name="Position2D" type="Position2D" parent="."]
position = Vector2( 85, 1 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
[connection signal="body_exited" from="Area2D" to="." method="_on_Area2D_body_exited"]
[connection signal="timeout" from="Attackcooldown" to="." method="_on_Attackcooldown_timeout"]
   GDST�   �            b/  WEBPRIFFV/  WEBPVP8LJ/  /��,͘i�F�[�?�m"�?A�Β�b��m#������DMI�!��s����m�<wo��D�?$Y��i���j��$�L3���C*�Q�u����ͤ�n+��K �$���m��?�vBDL *�H��ȶ��N�:��'��L�F�lRh�7��G��{z�����Kn#I�$Z���|�(��� ���r�mkۛ��#$@���ޓ齞���C=�3�Nlnr�6�"��{w���mm��ֶ����LH�v?����-�$���Y��H�ÝoI�,I�l��գ������o����;Å|�dI�$Y�����3���o�O�	DI��6}�u"�7  |��[��W�A���=�y��+���r�v+\!�M�@����X'�����k��u��6�x��̗7 ���7�B6P��ɧg5kРFBDD�� ����F@� ��u9�\6�m>��?��x#�Z��s�z��i�����C߮�-�@�	�$@B��vM�A�z�#�}ھk�56�>0�6�} ����7rQ^.���k�)���'=jԶ��.��0P�mנ�el������a��~h��� �������Z�>>���>b�t!�Hb`�́� 6�.!�R��ա�]�֔3��x����0cFx9�t�ǝ����~�����c�A�T��@'� $f��)��~*��[(	,�����T�/L�x9���;;<Ǐ�	����2�	�$R���E��N�-T�I���V��_�c���/ ��a_��y������m�AbȐQ�IЉ$HL�Ĵ�$ ����Z������Ɲ&̘���zŋ�^<ի��1n�q`��(C:)c��4��Ȧ�I1:`��+�l�I_~h�C�CM�5��򱃈�����T��m�S�X:��@��'b:AL�O"�Щ�(��U>��]~H;4b�5���������׺/����)KY�))�2��^3�$bH;,��� /,Gw5���-��.P�ǭ��#�EYb)CRR��3;5���lhwζ��sWl��#�[|�ub`�,�2� ��zZJ�
+۹����C�=G����Pe %�"E
����mI�d�������u��#��*waȐQ����2a�[8vY��z��+��nZ�b�
[��' h'FǄz�X�^�@����GMt�I���CZ*,��4�&"H1�D�N�M'`��~�%��u��U�������hǦEը� `��		� &����a*Hh��
��D":3D'ha���+��@��HLH�@�W�wȇ���$4������S���"jԀP�҉��v��
e?C{Yu��v�Mޗ���Ԛ*uؾ`�7`�A��
aܻ�� y���/��̺"���D��V�55�B��j@	�(q_�!�|��\�z����
�h@S���3�C5f���2b�Ď=����ЭY�&�P� ���5�=K��zSM|�)~�NI=CU���R�6w�.�ꎂ#��,[������5��SE��mm���p�n�	Ro��a7P�˗.E[Mͩ�8��:{��y���Ԏ4%#��L�rϬ{���Wk׺[��r|I��R4fD�Ą�t^��*v��J�z%�Ȼ���ҫ��&���,��b����֪��d%��k�����Oye��=�שc�f;�ܾER��ެ��I���e��Ym�~�W��4y�C��M��m�Y|�~!K����2[��z���wZIi7�FMn^�fް��Y[�-���v�/FV���&̘�Vn";���[�j�V��WO�����}��Y��u��ޑ��R˽D+�z�z�}v�,M�	��ݴ����{�=?m�,Z�Z���u���Nz�յڪ�K]���U��?�KLM�D�JNwF~��Fv���:�w�;ԁ��]l�کG��T�zg��8�SD���,O����?G�ɦ���̖]�/t��I�ى^X�ֶؙ�\׮~o'�d'�+)9}��a]'����ݱ��®��+|������ڵNX�N���N�zY��ɫ������͘V���f+|(�?�i����\e�w��v}���r�Wb*�ߣ.����s$fy�1����&n����\|�,�8j�,�nK��-Qvi�4�L�w���~��6��#�u�3~W<���u��[�^��V��$Ǘޠ?�A�l�N�X�9�X04߹�^,��N@cHu��91EeĈw��+ү�Z��i܋;�8��]6���s�2R+~�����r~q�ߗV��*Sx���P�r�Nt��W �/ ���FT�svH�(���?�Es��r5�4�u���No�2�Uy���uJX�����lg�S(SK.�2���Tk��up�F�)s�b��0����܆K�SV�z�[P������fҤQ�)G��0�2B�Nx�2����*W/�e��@?���-{I�x��V��~??o�W�v)ʔE��$`b�����h��3 �Bd���V��ϓ�<����W)r����������8���q��
 �76r����p?��'�"(����@��Pn:#� -����>�T2jj	н�!LX�[(=�'�\���.!�a',	ݝE4��o���%��1��껀�y�IF w���a�`�b�'�:4�p =av��;��A�:��z�A�    �Ai�gޒ�=-�,L ���s�鍂'L��>P��ZU�(ȍ'^@� ��V����h),p�&D/��n%�QTP �9Yu2��/�JI"�,E��>�$ν�{B|!���DA���d��vf�^H���Zu�"��¹��	�@O�{Ӏ��r3�6��C��t �ĺ], >��DZ�9s��P�Բ)`���@F�R�����-�RO<ܳ1�"�Hأ�V0��	�I�ї�ͺ@˽�Bl ��_�G"1����1{
���MLͭ���!!�A
R�L�0��x$�[�Ɩ ��#{��c����6pcRL��lL�\��n&[0"����� �~~���04�|�'�A<}�_0H�Gߏ�f��b�ul;�� ��b��O�'���N/�^�$2����tNu<�m����dkY��2}�� ��;u/�������u����R?y�x3?}�FR�����]������PP����O~���?�}���G�kY���O1ߦo$	`f�����l껆����R+)�޺�m�Yg������D�d�c;^������X��	h#F��O���9Ё9���.�ڲ�z�pa2����v�^�_X(޷~/v�c��QW��DԦu]��lKK�����)=���z�k��F}�q�nl��n@��'�I�WHj��߶����7�#㾠�9�ڃ~�����������[­��p쎷��k�[6p�k��zï�z���������0^��n��J�����ew��0��%������J�9-��}]�5�N�����b��死G���b�x�6�z[lž��,��f̦�d
 ��bK[���=-���
(a�A܂��W�aB�i��*���n�7q�e�~mw��.��N;�?�Iǝ*����m�#�ϗP�!�^�򽟟�W�f���F��TKlx7����˽}W��\oT�ē]�a�����G+��~��dm��������rw����j׾k\�zX��Ӏy�XG����Z�O�2`H�rK�/��~-�';2��~5I�^/�֎��Uٺ��|���˻�W��z��^P��UXLB���i��;X����:���Ͻ�Q˸^��b�W���b�ܚW�R[՚}������&�aՆ��}{˓Ws���ϛ�B����L���$�����f��f�F"p�Dm�[��o۵��q���sp$�Q�K��]�u�٧~8!����u8����j�������W a���n۵Śy��Nو�sEIiр�@�N�׿�o[W�m�Z���o΅ x  8�인��U��6c����}���7�xn�s}�s�j�ڭ{�6MY��Vl�]o����e�]fԓjf����_ۯ��g�۾W�%<�7�z����_��H�t�w�7[Y��B�(�|���}��\�Je��N��}f��C��%F�%�0�9'�<�?/܂@�?�8��M�}DX][3�D�Ny��v���ՖZ���(ٍt��{}��.��<W����Y�Ď��<�S�~7��5?���`y�W�O����w��Yؒ��nrӌ�nm����"d�Ȟ
(�c�W����߲����~��sC;��.x�m�i/�nc�{��Y��A��ʋ;�0�+F,x wl��nZy5t3͠}�W�5��y�}o8�*��,a�}IHX�;Դ��oX#���C2Ѐ��δ�w!UQY"�Ⱦ$P�S�q����6|�[��	��D��**�ح���S6��FMK����+4�@��T�RKj�w���s�W^_XE%K����?�����@�����q'�/̽h�h4�� ��|���,[���:K��}ay�t��[�z�\�s�&P���]�'/;�k��e�G�<�׽FM�Y�O�{��2��^�X�S�[�%��h�S�XiGS󴷕�s8�kU�ܒ7�N��óm}�hN_�0�7L�|���[Y�uK�z��9\���Y/y�7��Ӌ���_�;�[ԗD	�nx�L��YЭK����T�����l����W&�������K*kx��Rk�w���h�M\�>-�P���m���^0�����~���{_��}�k���y{g�rN'�'&[�杗�Ӿv�7~�^k�~���%�n|7��߷�����[��r�|�@�Y�߷��l�}g�F@��_�]_�*��bB����Z4��S�^�G���L������|�,[�k����讨�� ���Ů3�M�FA|�0gf��ac�9���[�}k��|h�&#`  ���'�AF{�sP$�/��.�X�|�v���|k��V8m�}�v�٪u�{c����Y*?�E��mr���ˏ��O��7+;���u�:�>s�L���V>�g:*Y4��g_�[���Oݻ?�4e"G�����ߦ��6�{�gGӺ[)y#�MW�q����2x�߯|�'m��3οzW�R;��9}f�J�|.?��'9u����~׾���?khaw��]�3fkӦ��2�2}:�ju)�Ȥ��>iNq��X�&�%'�tD�0 ��q2�Î�<�'�Q�K��t�'�"` n��靟N��pB�2����Y�����@``���`�r������A��ߵ;�j}�Q]�_y�ԨV���Sp���]yK�W��~����21Yɥ-=�I/�5�W'�h�c$��<(�@��M?���积��]�ꗝ��='UR�2ed��Q����ާ^�i���&=^�{�����Jw���Җ^y/���|]��~�${��@*���oyWd�mv�%����)�o���7x�n�k�1���  H؝�H���?a���j��N���X����lS/��s�{ͯUk�Gn���l��������߫_5;���W��{�!b�?w��o����}��t?������77ܻ����[��^�������u]�h�2����h��*����g��gb�k������_;v����j��̚ �{��;�޷����~��j��н��� v���M���+=�������ޮ3]`� 
�̾��v���߀��tZk�ό�+o�=��v�vfo�$�(��{m���_���������ӫՍ	+k\��po��N��+��)���v�~VZl��J�����[#�v����wQ~��*��D����tqڷJ�����SN�HH:.?���M��5�����W�vn\U��s��9X��u��2�.�{e/p]���[�JU9G�� �����f��}�\y7��]/�Z��^���]z�׼���x�~5�	G��p������\�ݱ;Q�v�>���?�
,_W��;��;���G��������ZM�	G$���l�2|�wv�]~�-�XOXP�i�dd�;/�ƚ9 @�����m\����o��������#��0��@`$������:yG޵[�^C+��+���ԙ@�]N&���&rx����2./?��
�@ �xJﳱٷ�Q��;|Cy�nH�]P�y�[r�qu�/�w`�d���׀���>?���pOZN�B�2/[���D"/������S&��=g���7=S�t�����=5�E�f���%�]^�f:l��Yo����9)�dqx��+�$LD��&��=r���F�a������Ąh��L�	,
8Q4�ӊxEq	O @X�݈��K �MH�+JL,�v�r�P�-�&�������#���#�)E8������ݟu~�W��%̙��=�����V���
�>��Vܜ��5�$������o�����y�W^I[��w�:���^�B+:{� C^�]����	��i�E���p�|ɶ�V�{־��M�=o���Yb����_��^r�2��-�)�.�\���Bݷ������%yZH��Q/��1�6����/�~�g}s�F��*�/��efk��Vן�L�W�V���P���6u\���P�R�!m�>��mn�GK+C���獠��tn�&���������_�����O}����u���������׿�����V�TYy��v��U�B3ߏo�~a.����\�T�JM�x���������۾oY	�f��g��[��I�:}��������'���[^}�Oj'��N��;���������|^ݫ�L�J��ʵ�2�ps���qź�wyڸL�JJ�w���y��e�^lm	�n����S��;G�;��Nw�����	'!
y֏ݭ�������я��#�1�a�4 ��[P��{/��q��Iw����7b0]$R87��6��L���DBY��w�S���5���p�پ��������5�)���3ן������������[��7k���:�HҸ�X+�$\�[	9-��;�f�����?�T:��w����{�{���0a|e��n�s��5[��0�������~������?�>�j��_����?o�����d�g�MA'H  �)F�G��Y���n��@/�?���)�4��v���|{�]��x�6!CM���S�Ƶ�;��$�	��I�O��'5��B��]����7����LJ��dw3#�u�~�:�3Ώ����s�������L~�'!!�; ��y�-�v�y�hҸ�8�^���w#Sc����i�^�� ��D	��w�ۋt�,۵_��^�
���^@MV����*P�}�@�<���\#��%ͽ �PQ��RAw6a�u��	 ��]YY��$m�_����W�0�ȹha�����U �����pBA'�����x�UjW 姜x}p%�f�G��0�`��A���\�&�WM�@*(���>�-��<�w	|���DP^֚����>��E�G#0���(ɦP�%-���~�  ,�
C� � ��U�7�D� ���f~�y�wP�ye38]�yh��eB���� Nmu����	�q���� �BA %	�$K�e�;6���6Ұ_��Y"�W p�y�C^��*�f�ǟ`1Y�� �F���RM��٦�]���y���a(�BL$7E#h4	 $0  `�f��W�>.�@B�>$�ͼh����-��@ �x�  pa_�����V 	Cb=��3�1IjJ\�t2� cd�4 ��{˷+}`��.5���ce���9����������3?oA ���0 ����᭫A�RS
���bO�s�F�JR&IЕ� 55 ��&Vϕ>B-A�F���c�����������f~�  �dB� k��2u���EcSS҅��0�q�9���[�, B�b!�GWJQ�������v�0#��>$��!{���]��K,	�V�����+�pC��@	�S�ʻ��t`h���zv��y��{�܋��F��h�������
�>�I�6"O�>��x��_�}�ׇކ{���vl�`�Ʌ�^r��q'�F�(V��( x�N�jv��[��r�ɡ4��+V�%qr>`�0@,�C` �]����>���Ԯ޶��8�|��KM��TT,[��
#I�����t @�W�[ ��D����!$�kg�m�����s�V����fr�p��Bܑh� �9�`4�+��E�=+H�������������HD@�� F ���}�S�ڨ��ƽ�s�3�ʻ�{ыݝF�#�qNWM����ܪ�n�x��@,�vkJ��@��D�D
�E�0�TkW��j��P��0�ɯ� ���4����<N.$$�F�$ЍI�I����Fzۼ��)���V�^:n81,MB���#�ևID� ������x�td�S��q�Uzi��p��.���c(t'K�B�]Sݴ��z�>��<�<^nw !�,��$�E9�|p���INN�sh0�;@` �$51Y$7�%����M�D��t?$�[����^S�����d�*�@'X��FK�k�AA�xb�  	! B�8�j^7?}E�����2��J+���-`$ $&ޱ��v��["��u�����SNI���S� ���޽�-��3�ye���� y�s�
�8-�T73��F@��でNlz7�|�7z���4y'; �BV�~]��w{@4s����O��=j��C~+�8'Ͻ
 �C��u��w����a@��-��tu8y��Ĉ;�N�ɚ��3}NDO ��~�T�  �|�u�w=+׹�� h�`w�T�6�U��T�ⰹ����2��ګ��=5M�������T�K�,	#�@h�*U�rBSRp�0��M&Oq�� ,�7�b!��0��q�T�8�&J.���LF��P�k��"YJ���Ɯu��Z��s�,��eO'�0��������ԩ�4��)@���)b�^b�$��7�n�,m"� �ըw�@ ��d��Xzʖ?	�E&����Rk�v/��=��q���<�˱����X�s���i\��Q�v��_x�:Y�)r�A#~��938���U��:H6Y"���P��O3��^< ���
#��ɮ���"ʾ4 +�ݫ٩�L��npys%�8u&N��h������Es��`i]�5?k��T�rhN��(����]!!uG��y*��o��H� �@ �  �F�ZviK�;u7/�o�[��k�5k6hPir���9�8\i�@���kug��2t�Ǹ�vj��\�Z�x� �܋ 1z�ÌL$ �7��{�����K �d��a ��QF���#CF ��5�7��s�VC[�S�(�����Y.�o�e,}�w�n�r��nկW��W�^�U��@��	 ��{�9��F	н5�v^[]����=�%  H$��c##KAӖ�,��gXb�3|4�~]��[ט�z�F���s�n���ah��ݹ�;�؅���^�g E���DP(诤�ȁ �?w��,nϫ��L�q�Ӯ�w�W،	A<(��ۗ���P�:rڒ�}�ۏs��Ly�g�'��k���3Ь���[���s��#%��cvZ/ zr��qo��m��-9���90����*L��	�x8���*=u��M�~��e��~���rK��T�PWq��`��^��t���������h���S���w��{=�e�^��u�M4�Ά4�i����[��@��|A�t�/;j�6Z��]
)6�L	�c#�[}�;��f�N�W�qG��'�	�K�4|�ϰ����z�����i�8�&O��Um]�
s$:�G�ݨ�;C/��3zB:�%7�O���w������x�7cf���W]m�l�
7aHY�;��G� �`�Xa��dT�T2��B�[�%_m;�QX��Ҟ�w������}Go���qw��.K߁����iK.Oy+���}�o�_��_~+���`3�����_�,�m�m�^j^�yy�Wz���,}��,I�����(���u�������-�
��M�I�$@n}�25s����
t����һ��O%KDOvdD�Cb!��%2\�D�D�t�SB��s���}�mݷ�=ʄt������ �&�l��w�ׯW_a�����nz7��*KM�����y@#�R�'��ӥ3����e^;�ٮ3w�_�ն�f;�f*H=��"��ǯ�?�3�o�������Q�yK�.v�����<18�>�Lb�IR�J��<e��g�h������WQ��vl3
+P�+Bn��µi�}��}u�OH�Z��p��V>��n�������y� ����BnA�@�)� ��K�@�F	h�� ���L!�
x9y�gXv���js�_�&��rl �@�x�2����Z����u�jm�&���mz7�y���a�x��1��ɼO�[�)������o"���Q4M@ċ�<�o4����(����f������nu�v��)�	s�0gb0x�h����{{^_oS�`J%�w�}�4������vx�����13� �l �p/�[��-O@)�,�&�&�H ��G u�d�db�+��o��ؒ�O����V��M��dSc`ϼ��l�Z?�쮟�lo����������������o��l���,S*�ҕJ� AM �h��& ���)-(�^�)���g�����и]����͵��֧\�JM��xbx��Y�}���z����_o�n��ח}����7 y9�J�@M		�#D�@ &"�0//
��\�-���1���Y��vng뫡���mf�25�t* ���}����u�|��e�~�ݪ��[_޲����MwBz	���h4���NnXr(�   '� _h�����;''��=���Vw�����2�m�
d�|� ��[�f�n۵��߳�ö>]! P.�9)i�i�#�_��Ι{�p��u� ��-!���)#s���o�Rh 	�b�w}�ݾ[w���t^�����_�S��(!��)A� 6Μ|A13����RĔ2�)W��e�.  �vT* 4��쐙Y������	\{  (��H `މ���~�/  H�����()�~�b�~� ` +�� &@D�=��� �����	��p� �0Bb��=zR��Jx��'#"���;�c�����g�Ci�G@O��K���Ep�3
�jԈL���B�P,$�B�0�w@�DHC������`�1a��k4h�6�с�ɦw  k�
րfM��>�iɞvH�p�ր-R;����!Ӄi���	�q�T��]�~�a�ޟ�	6�@L�O�����U��J�I��۱i� ��A���+���cmJ0A'�� ����vlTIJT�M��m�R�����|�	�H�s;ǦP�*�+fR�j�b�δ�K�E�b��`�ĐD1���D��c����Dg��P�b���lg�0�����̫.�iR�d�;�U�zlP�ΌtƀU�k�v�	@'�֖i�؉'%%���Q��ƫ���[�a��R�A>V,� 1�vb��!1�����h'�h�i_I΃��w�{W[Sc�������gο+ؘ���0�ɧjUne[<v��1bttb���ްii�Ʀ�&%%9��L75]�Å�c:5��z�l~��!�ô']6Y�cŚ�*��d���E�dO�N�(A��l&5���M�6��!�&Ld~�7]�x��+ȫ5��*H0�0���!.��>�X%�$S4���X�`�Y-�l�s��IWp�ן�#2Z\a��$Jhiǆi�0�3ha�$E��56�bv���l�/�����b�؅&T���R��Y�I����ʰB���3&ddT��}��é .8��5^�x�qp�.�&���,��m	�]�%T��0J��cG�t�ؑN��n�L��c���Z�T� 8`��~ ��|U0?��ì�m�vu��}z�v-��� !""L�pĄ�q��v�Vsz�xw���pQ>�o ��ܹS��&lp�m�ۣU�Z�4��V�4	0c��Z��n�޷�v��"��'�����/v~+5 ��tw�)(, ��-�N���ݙ��.�+�6=���|y   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/TopDownShooter.apple-touch-icon.png-4dd8911ebef5b3119f66f04f3dd2ad47.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TopDownShooter.apple-touch-icon.png"
dest_files=[ "res://.import/TopDownShooter.apple-touch-icon.png-4dd8911ebef5b3119f66f04f3dd2ad47.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/TopDownShooter.icon.png-96e9ffff74d4cc35d73dbecf7ad0646f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TopDownShooter.icon.png"
dest_files=[ "res://.import/TopDownShooter.icon.png-96e9ffff74d4cc35d73dbecf7ad0646f.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST   X           �,  WEBPRIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/TopDownShooter.png-6d3d0836a7aa7d87292bab5583a8aea8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://TopDownShooter.png"
dest_files=[ "res://.import/TopDownShooter.png-6d3d0836a7aa7d87292bab5583a8aea8.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST�  �           �_  WEBPRIFF�_  WEBPVP8L�_  /��w��6� I�V������{�LOV�g՞�A�6��?����=F
ض�w����� !)-]�!&v#�*�`w#�X�EI������(a0�q�cy�Ϸ$I�$I����a����v񛙚~�q�6�A\\\ğ
<鞎v��(�k��8�l�" �ld#�(F6#[m����+�xu�K���������q^��9�^㑉� *P���&�i��a��t,�F��L9�l�A@@�yd� �;�A6 �&,Q�;��;Ձ�����\�F�+���2��lDD���%����B�F&(�˧؀���q`ٹ8�p6/E&�a�H}�n�N�`..D�ƨ";oG�CQ�2���y�ح�d�a+����F>r���w8�L��V���P'���T1
���(~�J� ��?�+\  H�t�w�)2�V`k<1Q��;��ũ�BXk+�;�cv�����C��.]��`,��'��H웹��qqA`�2m��A�]|��؍L��s�A)rq2v����]?��܊`\��R��C�ܼ�T$�R�n�oa+J�-8o�з��K���"�REVTR��~x�fc+��=ȳ_����KF����"�T���*�M�Gοmd�`�����$*�)?��I$Q:���b�ם�򩌓��`u��YI�Ɨ؇ؿn"�2�1����DX���'7�H���f{;P��{�lw��|����|$U��%a�]�t��Kb��KEQE@z�Oc=
�7�L&T�|�v�"�D8o-���n�Ԉc�L��Οi���@�ѡ���ݵ�k+�ەr��)�7�Kmw<V��m�)
���n�`"�l+]in�y�sמ�):S�&����J�T*R���f�n2��yk����X��!�	�@:g��4i�泂&�t�M����%J��Ĉ�'�Ò~T�;~���������z�Kz3Ms�U�Շ�$W�C&b#b7���W� �\�"�\fD~��I&c�{'�=���P�� /����'�?��A1]��I�����H����2�#�/إN:o�?�?�*~4I�a���M���$����r^ Ur*8�!��i�y�jɈ%���ťX�ҷ�8o����sE<�I�����7�l��,��-�����h���CxO�¹�Au�3��C�5o���]�`}�PkS(C��=���EZv��.m���j:���v=���O��V���B67�}��w�"�Es[���T'�_D�6����w}�;,!�ӿ��_�uG����B<�2kQ���7�G�Qz3v l��9��Q+�����]j��mb�Ci$�ח�}.��hj��
޹����"̮T�l(�Gp�G)��R�&"��J&8��K(~��6O����c���&��7��{�^K}aD�Ic;c�&A)�!�Gy��DSnA�[7���i���ڃQ�p)��{�㔌��RB�럮��!�q��G)�d֥��4\�m����"��;��R�8�i��D��P��� d�Z���?MT��n�G�'8�Q�E(�s4��|��nu�]��M6���[�v���"�s9��I��!���(�i2�D��G!\k�4�����vy.�__���Ě-:�F�r4�����@�^��Kյ�X!�m���漵��aq\������(&Id-��O?��f�~��?3m~PORbm/�8�����]�d���Z�nr�"�<�.E���jm�,���]p��q-���ե��0Nb�Z�f~Ƶ65�>��mv�-�
kQ�v�M��&��P��Q�"� ��(�Ajmj?��d�`%*�5��W�'��٭(��( �Hd���ژ6؋�aP@�/�T���X�TŮM�0��]K����\~�fl�N���~-62W���ml�v;L���"�ks�A�6��h�5���~�Xyh��H��K����Ǭ�ހ�{FyWI h�����"v쳅�,"KQ�w���km�صמ�y�|-�5׏FF!��T��Z
��EQ�չ�S���Έ��}c�c qz35WG@�M��®�"$7�<\KC:~�i�94a)��#��6��{�=�bz�Zb�ը����G)��mkQ�#X���S��x���B�6:e�c���mK.�����)	ʻ? ���4��ҽ�0�K�K�F��R��Y�_=��o�#FF-��I�����6oz�"N&G=D��ki2b� 8>4Ϻ���ks����F$��E/�4K�[�QaeZa<�F��m�w�u~��Ř8?��6��-_|��Z[�k����=L�ו�Ct*�\�b��K8p��K���à�&�6<�1���K$U�E�<�Kh�_����o;�����"b���#s�OK2b����[��F�!{�ÔΧ	k'tO!banc��p��W�.�'�((c�#�!�D��~},KCY���}�җцqQ��OGn����K�����4�c�{%�
j��x�(ڹ֦��M�]�_
�#ِ�?��-t�R~��W(*�&��r�W�0�4��G���.%�KCe��<�h�Q�'�y�5�������8;�Y��Q(�}�_�m�2�~�*��R��8H
����:���G����-ٹK�X�ׅ��Ґ��%b�-���3Ƶ4[�����K.?������w����z3�bi���S��Zs��q@Ăr;¦��W'�~ޭ"Vtή��׀_p���̵4!s�S�jC6:t���H��x�5wi���%:)~��SA�E��-p��a�����Ȇ��۽bK�"�>�����ve���5bmx�Ld�R�Z8�1cF,�{�l���]~� �k�(�]��y��7��BA�¥6#T��r�R�����x�(C
��'y�l(����!�BQ.�K� q~�fw ԁR�q%Uf �!��V�Wo����[6�"��p:ޣ�z��!���ȟ�!k\�������02�~�F��xq�]=�e���(('ǽ �V��"�X��l������ �6C��{�|B�[�Y}��a�cq��L�f ��[�����8r�u,H{��P�U�@�d�C�b�Xr��j�2ط�V�[Pw��{}(�m�i>q�N�eE��R�T�N�5;�������G, Q�b�|�P,�-J���\w� �����
 .E( ���邈��.�s�S�b%��2�i�+����� O���P�1���O��P�j?����*�E���EQ�R ��K�yzE)
x��.�!�j�2��<0�+���C*8~` V��u��Dq~�XZ��9(岀(m,���Q��a'"�� 
�:��7o���E�E�i)נ���"���)ΓE-�6�ﾆs/�o��lH�N���3)h�2��~�ҫc��>b�����'�[Pc���ȭv�� */ճ�-��,$QA((��D؝�g�b�ڲ��*B= �Hic��a{��n�^E`@p��Xq�R��W�P�R� �r�}B�X)P9�C�Eq3F���:�+	A�KQ���hQz�q'��ȼ2;]�(*�vF��q�w��Uc�"��`!�A���ʰX���Q�EEC�.����+l^�~�K��[��ˠ�)��z
�� �b�r4L�]b��� X^ 6C�n�1#F/A�
'P�: c��
�t݈�BFz�AW���  ����<N�Iˀh�Xcc��%2:�@9UXù����,2�  �T%  ��%6�n���6��B���6 d{�㔾H9�j,$"�� 0#��V�g�(K����P���%�0��*1M/� (�~FP�tϥw(��"-����`�Zd��[ �����1U	��@f�?7!"dr��T���gm#�/{�����>9"�cE��̠��V�w�T�.] �P��S��ew��	~n�R`m��Nox�u4d�`�j�6�9��W�PT�~���+bliivU,]T&m�l]�:wR!������5�݄�3�u�]�jʠ�� ��j�q$$Q�n}�ֆo�"�<�� OU�K�z't$u0B)8s�M!"HGn�{P&k.U�
}mB���UV�
�1�������-,���I����f��>��{Ȱ�G*^���h#��B���U(o*B�D͈ �S�\t��H~u��n{p8 ��2��x�J� �w��dn��iA4���O*=���2w�""�EI�P��d��+xTDD�p�*��F�C<����n
��3{��(K�Z�` `gd.AԹ�A�uAe�g�!�mV��6:v���^�E���N#�2����>���#QX���e8�8U��=r�6��GQd��#�+�rw��|H�����bi+�J��sQ����0��/��EM9�K}�<�(Ǳ��e��]�}��n�t�ۈ �[�P�풔�P����J}A:��\�U�M�"X� O��  �p�O"w���۴�v��F�2���*F��o�Bf.���:�("Rӥ.b�S(J��(u7�o��-��6���\�� 1-cI5��@�*DF����Q���CM}�rP""�U�ep�T��_�rd��0�5/�p�b����>좰� qT=���e��Ҿ"���A(���1�@���fX�ñ�NR�\�y}  �S!ʻ�J�;�^�F�4A�^ȡ�%9�T��=���� 07 �=@��<�\su�
��'k�T T�KWL��삹��b<<jM��B���ȸ�{e7HC���?#!k.Wo��1v����B�7!F���BWD�oM@�۸&K�s���M���b��N�#t�~�\IWs^�!b�M�����t�#�u�J��O-s%O�R'�nb"6� ��*r�]@ʍm@~���\�����T�〯+��ȕ��
�����UD�T	~���d���O�����&�f�"s�Ԯg@�U��  �\ 6�1��IQ�\s`e%����"�����;7]������ǥ+��FDӰ }�l0�*]j ���qE��QdWb��  �� n �U�@�n�X"�4f�W�8"2�T�)����}�o�P(ʙ��<r�/�� �IG�.'	�7AVK$�����]�݀T(��vU�(����Ս@�)�\u�]�rKn֛�PA�K���N �Q���  �k)�xjT��"R�AEwr�+�UCE��RF��m7����T�6''��Z��:�DQDW�g)�W����RWYb٣z3B'�L��k�Jf� ��R.�s��� � ���NP��`PiFc�U��JP��R<b��o�#2W�W��G�;w��%�lc��өQ3��E3>��?����U��\EDq���}n�R^����`�mE(�~v�G�ӱ�B��A�1yd")cV�<��_���D)�<  ���K�Hc}ԁ�`!���U�?*��\3�ï�/����ϩ"�`Dd��v ��%�X��b��0��?�m�@��Zr���U
�my)z�ա~�?�g����
`w����:Tɯ&����N"R�K�R�V��#pEܑ�@P�T����j���T��ݠ(��(�a"vS)(���Ȅ��tl�Xr0>�.Vo�s* ��g��~j�"tJ)�
�$�A�H�b�> �F��{���Ώ*�$��s�;=a0 �c)�C*���|���^2Ҹ>'r�d#rR���Ϋ����-��KD��#�<�2Œk\� � �J��Q�E�P^o~?�0!��t_�d~Γ-A�FD��E=>c��Qo���j8?��Aܯf�0�!w���S�9  �ٞ ���ƕ.����ťb�`* @s��xG�:JEJPD����Ǡ���5�1��.>���0�\PzBG�'��Q�\sc�Ի�� _������y�!a�P�u�f�'�(c.$�|)x ��@o�.> sE�^\jE�(c.���uO�4b��T
.M�����K�X�1�z~s#8\�^��9��f=QUE�D���u�b�#�45AO���[��w(���犸㛂u #F@E臥�o~���	"(
  zԚ��xx��� ��#�|����Rl�1�2@�,P=>D*�cB�=jp 9]�#W��2(.EF��g��AA������Ӯ Ur�#t��6f>�)]JaZ2"2��@���٩"j�r�`s������T""�JAM��C�Hʚ����B>""������.Lsm����������j�4����e?�  ��⾐�Ddk?$�.E}Z���pn�Xr���9"�K���ۛ���}�(j����Bb������!��u����^W�uT���d!2W	jo�JP:S.�3�k��'���Pˡ�w�+��ڌ ���a>�Y:�z��P)��a�٘ �C=:!d{��"���4u��썊��(�*"5�J��zn  �V� �T;s������Q������k�Y�r���n2��TNQ�+1d�6�ߑ��p����x��!��YC*g���E."����Yj��9 X��Q~j�^��"�B����C�s(U�'w��!eǌ�oZD

z�̎� ��R�'�CP�ң#�Q!���#9=zC�Sԋ;�� �2�r7v}�p e�=5*B��L�36�<���� )���$�yC���ࡽ��4(qT��5!duw��K��gk����)�\���!��K=�Lz�C�VvfP�1$"�;2LD���D�j�5=��&����FQ��B�8 ��D�tA��6Ə�}�{����ۏ�A�3��[��� "dr{l��3]� �M)s[�mM�9�cI��1"L�Bp�l,#_�w���K�ʆ�����r��cio���q���$1�*��~57����a";ӭ�P	���!��b\��`y!#W����� I{���Ǳt������� "��	".�Y��O��T�M2�A���ؗ#�Z����!�Wby�U=��"c;��t���``�-�� ��N絧���� G�q|��&s�֤��ȫ'A����d��[�mͅ�Tb+�����j,�T�� ��������IZ!t�� ��:�}�m�P���+��C��f� ⁩"�Ӆ��&r���!��{�6�PD��K�t�q�O��	"�#��)��BE�tr��=�筕��  �*A�'1ǃ�t���u�IEQXpr����)7*"[b0��M������O ?����ɖ^�SS�)���M1,��U�G  M�D<�j�NM7%"2�I���ŴA�]O�D<.*B�(��FE��ϋA>i����$22��#y9e�d�� �aG��CyS��!�<��EQԞ�b���j!�N�D<1 �����\��]�omJ l��y2O^|�y� B��}��7$ε#�am�N�M	������iv����L�n*��s[o�� Ȭ6!��Ԯ�S�/@N�t���	"���a���_�B�p"2�~. �}���U��� �W"��Q=/?�W��g"��.��D�ؒ���J�, ��r�����J=��7!�����ح��6���?+Q��"��|}UbI�R<+"B�ׁ"�̵~���hJQ���(������8�M�D(�Q��۸����%~���������d���v���q��p�ҵ߈c;������  x��%G䋀�P6��,0t&�
��7 t
[  6CE�g����" (�+ 1��+⎯ 8{1{�U(A��̘a��[i��d���" �� �Q�U �Hw����1�\�����G��
��ڝ "�A<��HLgꬲ�}C*!�+����4ӿ�y���󘃑�<* ��ý��}�����c����������@!sQ,~�!�� ���  `j�P���\\ `I!��
˸����Y~�iTd�[� `'*UN��l0 96�m�
��B|!�X�Oz}��q��d�י��BJ��6t��P��"�}�Y�:��x} ��Yg�M�v*�:�[ذ�P���+Q�|'�
�	"S���LΎ}  ��v�i��8"�3� 7�������
  ��"��ug�l���v�$�V�
����3�|���t	eQ\ ������~9���p��E})�,b� �A��Yi�jq$�B��`3�������|��G��u��U��Mt}x� e�����k+��'�z� �!)"ʐ:� �. ����vz�Q��v�{���x>�O�#)�+�Vsq�RP�1�ɝ�5���2� �Q�D<' �.��b���1�5js!�Ӆح&�@��u��3""dF����އ*�>�2�#y�V�6F(d��yB�O�������l�-xx ������n�c�2���W:���.��Gt~"~u�ݸ�$"�g꣪��}�:��R�Dd����(�hh��#y� �L�"��&�`C!t(�j �c\~�2��FDcD�Ln�䱏�,���[_W�5?AEQ�""dT���4L��`��C�v^%O�$61�BrPW:�������۬��D{����z2vg�$Ud��л
�yB|l�ݨE���#͍ �:���� y��=�����+ف"��[�����G�,� ���� ����5{����Op aB `K!�F'���E@����"��uNs#���``�-���´�WJ�/?v ���:p�$�� (j�$"Ҿ�z3�b�Nn�����>v���]�=H�Z/;����Ys���q$I@N�D��N��j���^���*!����<�""dl!d,��:+=Wb<!!ߖ�LWDގ��{��i ��C�L�>F(�a�+�ҹbI�x>  x�� �۝�P]�5z5EQ���WKڦ�����u�YN<�� "��z:�&�A��N Gw���;�	��4�ԁE Ϭ��b�	"��q$'eV\ھߋtj��3�.E�J;w�K��`���q"�c��T�]2����^�߸�� ����p��ہ�ȄB�V�ȷ?"�N�p2�Ke�&�f/b�|���+G���������!���?��� ��"��2�`����[_���E�k��^�f�U�^xP2A�h�#��PZ��:֛]��;�߄Ae��������L$"_�*��B��Y��NDd��� P ��y\"�7{}�"��i��� ��z8  ���s���A�Y[��lFD�P(ӷ��x'UD�Tr<	�8�)8�JY@=ED��:����`��P2S.j���W�V� +}��o���\�^|.U�� �7�H��;�_�Y)���� ����աNRE�,��D<��Ub�p���ح[��  a�����*��s~Y���	"�A��ʬ���6���Ȍ��Z{v�`����o�/�^�@�ؤ��cz�	"�C�b����=ػu�L�b����7rD�'��w ��i&�x7����Aܢ�>�dL���'�4�7��0�V��<�<�Ǚ B<��H/p�
������ǮG�}���.���p��f�cu8���L!�<�����l���n���f�ψ,6_��.L~��R��wR�����a&��σ��̺c@��.��;C�L�R�q���Gzy��("ʐ:���?"���<F�iY�3r�(TBlg�	`�}�K~�  /ԡ>��|gd���d�#1��_��EB���;S�SE��8~�h>����P{?�Ǚ �C= ,���^$T  ��5��#�E�wv^A�zi\o3Dp��i�8�3X	&�S!"�2+�W�T*!䷭ώ:�yV�#��;�C���w!B�	���`�CQ�XDD:�A��"�B9���:��X�{��:� ��	�T� � ��q$ID^�3��[��;`*���Cî�a��m��R|���v��0�c��BS�ċ��z����  ����t^o1 `}(A����44W'�� b�����OW�Y�z �条 e֗��6*�.Dq��)5�JM�5<G��Sf�/u�H�4�kaU��~K��6Cs�2�+T��4����V��\��D�#9�(�B�N��~���Cؙ�D��vo�y��\������@ͥ�Yl� �c��*�2 �;  �٭� �)ʻ;��yk�����2�γL-����P�l�	"��d�W���B�5�;8���F>R��i�v���C�O��2�7!>S���^(x�	"��WT�D�zRP�3|�/�_m�{/���{̅$�/S >S*,�7A�9�D+"Ve��6~���Dؙ�X��a=��;����̽���D>R��.��X�N�x& �Y��j"�۩"�[CW ��ػ��^�۷=!��@�*���L]�c�M�\(��S}����� ��yHZ�O���M�~T�~X~�\��6� B�P�b"vS��w�w�@"rw�o௶ﰷc����������L\''��(,5A�"��8?��U ���y$O����D��{6�?��y�A1B��y��H�t ��UY�ezG�:ik�I!��{o��W����*��/r+@
��� "��c���a"�`��ΐ+�˖�����+C�7�""���n~�l��/����R !ëP�UD����|��E���w "dn��1,G�>.7A�x'�S�*�+����i��3��-Q�C�1b��2�����h+���&�B��8�tRe�)�vD�Lܚ���͸Rb�8�-P������,�P(� �� B$�� (s�����a�-���$IX7D���+������2q��J����4�� ��ኸ�pǸ"�n�@'wf+�Y��P^WDn�""�2�G��:...u�Wo��a0"L�:�J"w:ILK����kϯ�62�JD�2����q(.2��&� .�q$&�3un25�VD�ܻ���������� �UwS� ���K݋����&`k�	"��y `U(E�����P]�3��]f��;*Bo�ym��Iu/*!^���H���:�����RDd](�!��l��n�;ݙ-5�w."��o��BEnt�ԁU�lc>_��VZc2��x�"�ݪ ��m^�S����/�Ef�����N  x�z�dE\	���JD\jǒBa��q��d�!�D�F��75��\��/��1� Cu��cli�]8���Og} �"ԛ b�� ��"���ыE���֞�P(6N�\:�t8R�'Ǉk) ���3�E��qTp�셐�;������s����XN�!TA>!��q@8?����#��Y3O  �l�O������ ag2ND����>�kc�pヮ��+��|���Of9�Rg��$:uϝq(. �FDd���Ȟ_ۻEHSݩ�S�i|���B��K�4 [��(���W~�jEf�Ys#K���j�wѥ _����H�����,�i��Bkm�-=KS��2sq+?�}��d����s�ʆ�*�!>f���t��v^u�4�sPD�!U����oU<ێ w�=������# ��t�#T���|Ď�H*5�A��� �zǑ�J�13hF��a"v���6˞`�}���dH�ω�����y���qd�5z	�&�Ț�x �]���*�+�F�"���緶�F���=��*pr���Q��Ҋ���\��12�,8���`��O�E�<u�� ��K >gǡJ���H!(�o1q������ӥ*�;��?zjv`��N��?��.Ώ�qd)ʍ�&����O�~u�l��ֺ�������?zjv�<Rnuj�P��B�O�"���&�x~p���D^�AQ�o���GU�@��q����*�#	�8>Z�x^]\\�"���E�A�W��#rc �s�{�U;��m  0�
[a�g�82��T���)c��7 /^�Ġ"b;�뷮l�gc����s���U��"�7�D�s����RA�x
sE�6+�yqU��v�i��GE?���q��,��U1�C��G�8��knk�� "k��G��r��K��lki����_��tI������M\F}}ؖS�tJ��'�O K��7P���8����vF�Ģn�LD����Ȉ*�5���8�D�4d֛ �!�"��en���B���L��H�ہ����"��*� ���8�f̘�Pp��G "Ҿ�p�'UR#�L���H�ہ\$z��� [�@�݌�|Zq��pI�Sr��  xygrPW:�����溁�QX�LU�i;*�>��뫂��&�xB�-��6��Je�m��E��"筵3�A�-<���B|�c��!�+m ��N�z  x��vEd�d��hgt(�GǑ����y�����q�A�4]�ǎ ��7A���8"N�"0 ��Jj?������A��v�-	s݀��YU8=�O�qd�5���((6A��u� �#9)(��63�\�
  �������W��38����AVy�8e�q|���y��Y�# ��"甑8׿5
 ���G�a��2��]� %U�< ��� ��IƮJ���x�"�an�[�B

vFo�"��e�n̖s�z �g >tǑ5�Xc;#Vo��j��=��t=.�^���K��-���w��߇���2�
��썕Y�#י�J3�wI-����T�ߨ"�;���8��������O�@��q|�Ñ(ZGJM��#B�׀��M0�<���� �{l��ώ3c �)�wY�����8*f͠� �iE>F ���y �;�7S��㸩a��l�1������A_�"=���J��~H�H�{��r]�����<�����[�"�zN 2�7i�?B3�r?x�A���9�&��(ѽ㸈\�"^�{�+�أN���W:���14O'�   �T��m&#��8��L�	�&���p��j ���cV���3fqW�������[\~�
�bs�A_�D��}A>� �$����T�?�5dn�.����s!�`x �wY���
��&�P����Ck@)��	#y�m}�������m(�����"'��R���D>~�}��Ys�z�"�ҠȖ@�㊸����O:�{l��qjz�/m\&b���UH���;�(��}�6�:I�Nѹ�H/p�21;T��`cKwfos�qEƽ`g2ZD~OQ�.B��8�,���x�	"�GQ���S!��Dpr�Q�79�4.d����!V ��P�TD���_q��։��]�P�~����[���*�O�F{w����l8^�2�;pT�he�(6AD����G�? "�ޝa�듎�.�w�%]�������q���8���a'�h�q$&�S56��/����S]�3L���j���tBE�E����{ 2���ְņJ��`yx ������z}���f�7&�bI�o9"�KE���|	��y���+mz�R�#"�*o)���y��&[P*ߎ Ȭ����������o?l�;p�$��kM���'"ҩ ~�FDȨ���!w�t맋�:A��d�a��@"vԚ B�Dێ#I"�jl�j��c9���a* @袃�ID~����]��~�#K��B���%z�55�\6#��ce��]o����E�K�2�"��R�A_���T� ���}+4�[}Z�?�ߋ�ґ
)��]t .~  S�PnQD�����p��'msD�>5`%�?����*�M�E���~c�� �S�^0����8��4�&�8i�q$'E%��,?���a�)[�u��ݙr�"�Ks!���o\�8�	TƖ֚ "�D4 �kl�:���o��u�:�t��6F>"��:�ߚ��:����A?~�j�L�	"N�E��������R����r�8�f���������aEСT�cvW�q��|܍&�Eۨ���"��[wf�s��_��[+����"��"����|!�DmS�	"�.Lώ#ъ����44~�� Ȍ���D�~ؾ��LQ�B ��p��r:�pY���
ŕ����������/] ��lfЌ��N:���t~~E 	5���d���Ma"M?�
�i�k�����3����(���yX;��ߒ�e��#߆����J���%������'��Ų��z��a3�;Pz������Q��;��S�����8�T*�7╶�]�Tώc�2X��"�W��2}�k�[F�o?-�_�Q8v����ʐ���*f��m~���0��a�v3�מ��^����;���F���e^[���H���J�>0�$�f��.yH��AE�6������a��	�~eRQ\�;��FGEѡ�&� =#"dxу�]��1l x��;����h7��6�+�2���Y:��)���tj�?�����ϩ"�xؾ�^KE̟��r_817���qDХK�����i�2�tү�8��h	���������  t�A��*B�׀E _��te�H�	" N���%�/�4�_ʢdc(Dj:�� ��/�w c��� ��d��|5 ����Y'�a��;� i��P%\���Y�6��ID��/8��XC�A�[qY��(��q�0�D�a���s/���3�|z��D�p��aW�l��A(������^xd��'���q$&�3%�h����k�m�z��H����
 �'����j���|3��B���J[�~L�1 �*�~HE�B�4���e�z��;��o����D"��8��3f.C(6ADψ�\�l�e�?��~�Zx��;P�
毌��5x�yD�32XRq��v�'�b�z�  �ݙ�d���a��<���Q�J��xVx����8E���q����"X'�h�q��d�� �.1j ��=և769�1� ���zu���v�?��zDt �Jpǻ"��Wg���Ɛ����G��1�
0c�8"ΓU���7��F���ݪs��D䇱��%���V""#vҌ�tq��5H'!��rG�\s�m���Dx4  J�n ��T���9�e��hD4w�&3�fd�![�۰�'I�8�se�B�	"<Z��rP\b(�Gc���w���û�4v�p^rD��R�|�9W�`o�	"�ө�/��[��b,$"w�O1HZ���M��|��W���t�Ǒ�^�ך �#��SKptET� �4�3���[!�k�#}�8"��58ݿ$K�Y��$��4KQ�� _��j��_�d� �w:����Uf�'�.�ʷ5�RsR�q|?�c)�TBV�	"�NGR*!V��T�|3���/½�q���;���U�*k�$ǑEQ�6�zD���WAPY�'H���!W��p�EQt�����/�!�%�) �o	���jD�E��}��&Q&?q�Q�Cؘ|%��qGnEHS���rcjoU�;rD��ǯ���5ADօ锉حu.�%WĽg��y��ұ��֨@E�P��.���#�A�ɨ�Jm'2��h�q��Se�X�s��˝��0W$.����<�$��-X�	�ۢR���D���@8~~b �����܄t�F䓝?���b ��������qd�5��(�7A�jU̬��FbZ"l�V�~D���
Pf�0!���#7�)se0������P�ȕ#"~D�ܻ32���[�s�eF/I����5#Δ]n����j�鶿�Y*G��7���J��  ~E�;�{�\�/����G6�>��E��(�K�f���qd�T��R��� TɣKǑ�F�U�|%�?�8�1�Y{�o�Y-D>��%�W�ȗE���jD8���
p���4����v�f�|$�Z	$�|	�`U�r...5�]k��,�M�@�
��?K'D���w�v�I�"T�R�|:���q�.2�R�y��N�$"Ҿ��D^��(:gs[���C}T�suE~�K�r��Pm��8��q$I@N�38/^�rpc857����O��hG,��}P��"�m9����SS֚ "��S�	U���/6f��ك���!Ia�����%�U&�9���R��<D�t
  �W�DA�Νɸ����#��b,�Aq�Y�tߖ�p%@
�� �K��ӳ�Va�?Eg�ln����adv��� �v���+sY�Z�x�	"�t�IAAv��{��6�������wV���+��EE�3��}\m��V`Cʛ
��?~56FP�.v�@��(��)�^��9H���h�	"�DE�`�@�Pnٙܝ={<l�!�p `w�!����E��sY��,�'  \Z�8�����֞m�n 8(��
���7G���&�h�q$�+�Z�=��삢�g�r�*WV�=c�6�a��ť.�JM�
D���B�wQ�ť*�#��>\w�Ɛ�h���`	v��|k�Cq�!� �iE>f�ac2:{vq95�y1m�|^�yk�W�C�l�q��"�\W� (�黏+cl�8N2;w�����}^�8�5Ǒ�`0mPRi��o�R�s���P��� �������c{w`	 *"^����<�	SKm5�"�Ѩ�Ua���0*"�1�	A�d��F0 �z��� i����"�Qd,aW!lLFd�>��m��6bZ2��J�Խ�|s�#K�R��l؁�.Q:���(��L�P#���XF���A�%�e��"�wG��/�MѤ9�L�	���pH#�N��/b!�p6ۘo�q@8?����#����8�* ��W%#s	b/D���yH�_M�
d��|y�Cu~2dT��uj�6�u�q��|,E���}.����W� �-���&-c*���_��Yñ����^����GV�a���&1"L��7�\_�"�|�����)�;��a;�|�#1�j�E���wd���N2v" ��ut(�#�\T���E}��#kԨ�K�8�P�����������h�p|�-�+4*c|DD:u�����M��_��p$c�q��pI��8�A���[!�CǑe����zWun)������-�|�L�?  x�q���_z��Z��7��I��:...u��apD�>}���-���(��oX��۰-O+2�p�IEQ��cv䊸���GD�L��� 6���LE�3���ƴaD�GǑ5�\s[����q^m�yk�Wd�[��i��Lt��MZn�S>T�^�5�=�t;j��� �D�4d~�#ъ�5��3fO�w��"_��Ț1cfЧ ;�Fo�";j�cn���m����}(���3�ϯ������s�Q__��������*8�I0}�m�]�'Ǟ ��g���t3^���� ���_͞���슈�{{F&A|��D�����Z�\���i���=�t�|��#k���6F�G���r�뫒�x[:�47�r�=��8�P��/��!�;���O:�]5�!���J�H'�>'�S��a����P�PE�QǑ5�Xc;#�)8�t��S�dϮ�e�F/�R����Z��1��j�$&��~�`�L:�o�q8E����@Dd\�d��8��E��:���qdc��M�0 `_M�s8�8"�+����q$&�3��rDd_Mw�/ ���8�0�q�{r? X�-��THqX~(BZ:�o�q�qed§����ݒ߄؝1��[�_0!Ql����v��BEv抸�E_�=��:���`h���q��d�7k���"C�n�U��� ��1 ��^�d�\���LC�����8�X�!��Iž��r`�
����
��:�,����G   zE_�"{k�� |�:�p	�(n�̠���p�]n"_��X���q�S ���I��������V��Y�t��B�}0�S�P �t
� �c""Y�	PD�!�q�!�u��AE�_�A������q$�b��  ����ۺS�E�vb�� `w���!=�~D���F;}U^��q|� ����"��>a�j�x}��BH'�>?�[��>�����{ۘ��(�>������S5����M�;v�J9����.��k}��_����GE�k?Bȼ.a=��/��=�'�׌����GDȨ.9�8"��L��Aߓ]�����Wg��\��ͺ�^U�M��[���qP�I#׹�N!�G(@��
$1�.;.�/"�6!Q�Ը�焵PH���E:���qdŴ%(~x��{��'���F;�cc�n�����i�#�  �C����"_�����GwI��!�#��hOH�Z�W�O�vY*����'���j!*1Ɩv�������2d� ��r˞*�<�H����8� �����g��
��fND�nǑEQt�;�䤠��$��QthjD�qT�?< l�|+D- X��H��u;"�ҥ[��=9*B_��LD� "db�g��;JWF}�� �����<V���"s/�;��ީ�D��܎#�J��ܱI�Ρ��F���,��W�8�<<<Q�� ۺ#_	QM�ȚI����(��u T�b|�C�J=7ED��;s;����'"ߺ�Ț1c��v�KU�{���	뗮b8ݜ�� �ś���Gw��zc+�� �{��Cty�~�C���3� �G��  �  ����Rc�z�1�Oƽ�QT{�Bͽx�r�xD<�z���|�\n�ڋ�K�����S�L��'����9�yǑ5�\s[��Gz�C�}�(:����[�����FQ����!��������+R������ݙ���*����޸��D�k�^�?��"s[t6f`n�◮�I���H'!���-@f=��Hs#8�,��[��IR:�/�q,E�J�zj X��-/��"�}�o�W�v#
��gFD�C}��"{�i��QU��V=2�Nm������%IB_NwG� �A?~��ٹvI��،-U5ց�NJ:����OF��Ԅ��ܝ=�ց� �+P����� ੮01"��ۡ+x
 ��P;Y��(}`��ӧ)�b"��8�47����_�GӞ�q$'E=!�D] X�"5���xT	�n� 6�����ǖ�G�2TO�J�~`�՞0Mei��y>����2X��Tu`Kp�G}j?U�P>...5����#�)���� *����HMK��E��E��}b X�wd�T ��;�� �G H����hjD��x:vD}Z��24����SS>-?�:���4R�K>��t5���'<����O;�A�Dm X��M�HI��M� D�`��r8���!�D�.W�����C�@/�  z����:�H]M}5���KX
�>~`H��n`�y������h�~z$c�q�9;nk� �w��HQ�Q}��C�R_�>�Q(�[����@ ��  Ы�����`�z}"��
b�@�:�D�4C��7}��	~���Cޓ:�����^`  T�tolq3<s�/CQ,gy��V;�(������?�OB:��/��l}T��گ����ȥ6⭰�|�H���OK-������o	�`g+����D��ќ���N8/9����l�ȷ���E�l��rD��:1zɨHu���8<W:�/C'�R���Oj���΍����. 	gAgR��T��9G���>���!:9���T���J�pqq���G��}��Q������]�^D��Du�!��r~��$"2�(���@+���z����`mO��%F�i���(�������\��F4�,�i��� q�͜��w�<DD:����} ���ȨOw��+���u�i�;�'�S�. )�J
��&ҜnB$����A���CF4��e��t�������vn"v� �~��$kԨ�K�No�Oį^���B���2�� �S�7>1�2��~�lz�f�z�^  =�ס�����pAx �N��ϔ��8T��p��o_��-@6{�D�n2��ڿؿ�O�"w���Z.u�Q-%K�Pnlv�JQ�k�� �p������i�[U  v�N�!ky}U^�HO,�|+6��Gq�EQ]P(�x��4#R�D�#"w"cky}��B�q�k�p�2oS� �Sp��톒�� o&�X[��N""Ê����R��(�5�N�v ���/�5�~�,�aW�ʛ_Dd^Ap�_QD�[JA1 @g�f�A�A׮<"�vPnWD��|`h�;�)�q^-�i����)����EӰ�v��u'O���b�b?���C�R�"R�A&�T�S�/�o��ٔ��dt`cBȼF��>��$dusBT�㜢7ԃD�FsE�6.�6-�(u���q��Ӓ�-ED��<2��tC�.�y��H�q�� p��i�`���V��r#X��m�L��)�Q\J�5���Xu����^D^ԃ�w��b��(�/Ǒŏ5o���2V�5�O7#j�d��89���%	�GE��6  �[nmk�ef!�,���'w� <P��B��:!d{9�!� �{�r��s�4c�v/E~���R�"�σ_=�ks�;"�Q:�uཟ��m�Z���,Hƶ&С;eB��a�EO�`Ci8�D; P����U??��  ��JP�=K���!�s;�5��(�^]��jL;7��˽�4e�B�o����� ���kFdfP!8uݹN22�(���=��Ӆ�9+k"�x}"��
�+sz:��\�V�� n�\>.�V�Hs����`�6otf�)l������p�Ih���  n�'���CsY� p���
�bg�"���VE����;
����j A����\6#r/ �-6��qtg) �@i}v�1fw���,d��=1�@~��[Pp�
g��q�HQ^����$Ҟ�2�3�!f�6�e*^��v���H勵�ۉ4��Dί:����͈�\V�.�E!��IĆ�`sD���d��涘+��xe�<��� Y��\$ĎR�GU�[��H3�(��>0&5����3�ʟ}��9�KEa�\���"�(�W�i ^+Eڋ�� ��
�:E�I����p���D�qEƽ %S��=���R�������  }+�	�.w-�
  �WȤTXuGR(��Ґ��ƅE%a�����d�����̙��=���$��ZWco7Vdl�"� �Z�1KQ4UF?��퇜 �(I�	њ��J��L�#(��B� �^Ǒ�&�H�I!���\s�m���F��,7�W��GE���/İm��]��|n����E�Wj��W3��u�8��\4��#�F��@���c��/�Ԛ3 �8�0�l/���o6��k|������P��蔲0 ���X ֕c�X�c�q�%nܫwA�s��5ע�!dt���o1��
�!
E�3KQ4k�B|n��"E�+�� �]4�8�\dd\9���;GDD�q���ous���$)"�Z*��Y��kU�aa1���E�q�FH~/�^_����� ���j�@D�����p,M,e�6Ɖ��rc�q����i��Rp�*�U[�r8���B�.�C�N+  P	�5N.Wcߣ�XZ侾*y0���-�klg��1�
����W*A<fX�:���)�ȷ��J}�Ĥ��+��+�����g�k�k��+QZ�]oJ�h����g32���D��,y��u���ɦUD-��+�K 2��x��C���:��8��ֈ�z?-�(�e�T*up����I��{*��knk�3]�~��G�oor!��`o���#u��\.�P5�P�*#��|��� �Gw�+��2l6E%��M���/���Z� �q��2"k�9��TpD�f-�P'U�X�����Cf���ܸ���8��r�E`����G?�k��(��D���I�7K��8�Z*�y~���)�8� �%%��f�߈�����%���|0XZ;'�7���P�i���{��R��~��k��l�U�Y�y����S6G��`���_ӟ�...5�Y J���EGK �{����G�T:g�9Y.u/.=g-��LF�
��&�ņ� ���'� ,���Ƌ̩��G�S����-���W'w��&����f�)�p|W���ag���Ed8Jj��q/׸�Uڮ���ϻ�.TXZ����dn�n�A,�8Z�|�� �n��2�����`��tGў��b�v���\�� F�W�"�$�go���@��K�5����m>�F����\[�[�;~�/zs[�5W��s8��=' )�Ҏ��5b���8ORTrU{X�$��࿽k9ե��B��l)M���5�嗣���k{B��g����-�A�7d�ϯ��9?�B�Y��`Z�����Nı�r�5��sj$7-p����ŋ>� zl�)�Z����Ն_Q�ݲ���غ7�kQ4?m'OM�Q�q�����`�Wú���L8�Vn�.urr���w%��W��X�z��0�3Nl;�OR�YZ_g_���S�c�0����×-���M��^ô<9I�qt����C���ְi@,��V]�����cǦ��R����E�Yk��N���=ɧH��ή�.��(������`mo���ث�ȩ)�����?k�S(�m���F*��*~�X����ŗ;"s�����坵NN.U��DfHT��z��k�T�� �	O;�#�Ϯ���l�h��d�EQ���J>E2��j�'Z�� "�s��%�$!`m�^�^����d�vP"B,���A�58��E�K]��mr`� Ȱ���K]���#�_�(!���[�A�KD���W�ւ�$��G���DK�:>�ֺBFl6�Y�%�����ksj�]�P�[����6�.K��(�E|tR/.�vO�R������v9�XZݍz~�*r~���V7��_u�ci�����Za�N�y� �����NNP�.�r�&��bm�l�� �z�O�(r���s�Gyx /�x3��R���o����9?��0��N�D���Y[���j0@^@�6wV�8D�5������:�(�vdm@��44�G�蹲E�m���B������ю�I"B� s� �ӥ2
�����)k�!^_���FE��z}U�8?kk�H[j �4��{�2�:B�km]n��P�"��7��v��Јv�ې���Qr�{�ΓH����l��	��`��#��bt�_M��X[��?��y}�܋������n1��G���q��@S�����M3��������!JAQ�ݰ�/DxYҍ�ȶ�е�"��ֲ�o��s;K���y���8}�y򕴥����ب�'D�>s�NO|��[�V��,F���_�$��P B�����z���1#F��q�z�e�Q��W�׷ݧ��ϯ:�YڎO�u^�e����]�^3��\s�h��H����+���wO�R[�i'����O�b�eT��fʻ�{d���-�5֨���8Ж�
P{���v��t�h7P�f,��}�Q�(
0 ����I(y�{���;!�����p���cf̈'Z�8��
c�p8��9o-u����⥮��X[#�}_��#>+PV��Q���~�J�e(!�ʖ��Z�RQ(G�c=b�Ck��Q�F��-��j-
 �V�K8p���?r%�U�p~��}��K�G385U�þ{������ᘱ�?�.y��(k�y��
�^�>a� ����t�� $Pٺy�̵4s�P�n"�[&���QY(�"D��@S,?U� ��&*�p��9��Gʍ��
��4!��v�ch������]y��;�q�.��"�1b�|t~�>Wx^�x���`lg�����̍g��`1�q<[���
1!��&ðY�~��V�U�B"5cu�MD�٨`�F�6L�ȹ�u��2�i�B)�,E-�����t�����+a8!�1��9�1��pb�B��}�G�C!.u�����W���qG2!BQT�:?�?U��XcQ�Ҁ�b����b�;~nkD�3��3����|5j1W��O �{�Z}�p��3�؇E��@d� �]}]�k��	'' �_ut��9O�{X�u���Fvܹ���F6�C@)�q��[����Sd8.խ�FP��x�M�Z�I��D�p�2w��4���؂����F	��^��"["�cb�:��@_�� ��k�����?���Ņ� 2�6�Z<L���؊]��i�G@1��9���a�`}�5Ld �b0~(����+�xAQ��vv�:�̐o�{���u� !7�l�f���H�rz^j��+�Xt�_m��w�/�k\�
 �润W����d���V��LA6
bΎ婃|d� �a+6��OѡNMC$/�A�=� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/WINTelevision.svg.png-b95a3c361279a819ef17c8b005b4af37.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://WINTelevision.svg.png"
dest_files=[ "res://.import/WINTelevision.svg.png-b95a3c361279a819ef17c8b005b4af37.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="TileSet" load_steps=4 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]

[sub_resource type="OccluderPolygon2D" id=1]
polygon = PoolVector2Array( -65, -65, 65, -65, 65, 65, 65, 64, -65, 65 )

[sub_resource type="RectangleShape2D" id=2]

[resource]
0/name = "Sprite"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 0, 0, 0, 1 )
0/region = Rect2( 0, 0, 130, 130 )
0/tile_mode = 0
0/occluder_offset = Vector2( 65, 65 )
0/occluder = SubResource( 1 )
0/navigation_offset = Vector2( 65, 65 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 2 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
             [gd_scene load_steps=4 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=2]

[sub_resource type="OccluderPolygon2D" id=1]
polygon = PoolVector2Array( -65, -65, 65, -65, 65, 65, 65, 64, -65, 65 )

[node name="Node2D" type="Node2D"]

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 1 )

[node name="StaticBody2D" type="StaticBody2D" parent="Sprite"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Sprite/StaticBody2D"]
scale = Vector2( 6.5, 6.5 )
shape = SubResource( 2 )

[node name="LightOccluder2D" type="LightOccluder2D" parent="Sprite"]
occluder = SubResource( 1 )
[gd_resource type="TileSet" load_steps=3 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]

[sub_resource type="OccluderPolygon2D" id=1]
polygon = PoolVector2Array( -65, -65, 65, -65, 65, 65, 65, 64, -65, 65 )

[resource]
0/name = "Sprite"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 0, 0, 0, 1 )
0/region = Rect2( 0, 0, 130, 130 )
0/tile_mode = 0
0/occluder_offset = Vector2( 65, 65 )
0/occluder = SubResource( 1 )
0/navigation_offset = Vector2( 65, 65 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]

[node name="Node2D" type="Node2D"]

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 1 )

[node name="StaticBody2D" type="StaticBody2D" parent="Sprite"]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Sprite/StaticBody2D"]
polygon = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )
      [gd_resource type="TileSet" load_steps=3 format=2]

[ext_resource path="res://White square.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 65, 65, -65, 65, -65, -65, 65, -65 )

[resource]
0/name = "Sprite"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 0, 0, 0, 1 )
0/region = Rect2( 0, 0, 130, 130 )
0/tile_mode = 0
0/occluder_offset = Vector2( 65, 65 )
0/navigation_offset = Vector2( 65, 65 )
0/shape_offset = Vector2( 65, 65 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 65, 65 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 65, 65 )
} ]
0/z_index = 0
        GDST�   �            v   WEBPRIFFj   WEBPVP8L]   /�@  7���8����B��H��{J@?̠��8������3��쮶���AQ$��	���� N�>F �� 5��O�g�s�.�w?}�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/White square.png-457bebc586c244889eae16429014296c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://White square.png"
dest_files=[ "res://.import/White square.png-457bebc586c244889eae16429014296c.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Coin.gdc"
 [remap]

path="res://Enemy 2.gdc"
              [remap]

path="res://Enemy 3.gdc"
              [remap]

path="res://Enemy.gdc"
[remap]

path="res://KinematicBody2D.gdc"
      [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         TopDownShooter     application/run/main_scene         res://Node2D.tscn      application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script         input/ui_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script         input/ui_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script      	   input/LMB�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres                 