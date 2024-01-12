

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_forge2d/contact_callbacks.dart';
import 'package:flutter/material.dart';
import 'package:ugh2/games/UghGame.dart';

class Estrella extends SpriteComponent
    with HasGameRef<UghGame>,ContactCallbacks{


  Estrella({required super.position,required super.size});

  @override
  Future<void> onLoad() async {
    // TODO: implement onLoad
    sprite=Sprite(game.images.fromCache('star.png'));
    anchor=Anchor.center;
    add(RectangleHitbox()..collisionType = CollisionType.passive);

    return super.onLoad();
  }
}