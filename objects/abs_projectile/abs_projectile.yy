{
  "spriteId": {
    "name": "spr_projectile",
    "path": "sprites/spr_projectile/spr_projectile.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "abs_hurtbox",
    "path": "objects/abs_hurtbox/abs_hurtbox.yy",
  },
  "physicsObject": true,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":0.0,"y":0.0,},
    {"x":31.0,"y":0.0,},
    {"x":31.0,"y":31.0,},
    {"x":0.0,"y":31.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"parent":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":7,"collisionObjectId":null,"parent":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":40,"eventType":7,"collisionObjectId":null,"parent":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"parent":{"name":"abs_projectile","path":"objects/abs_projectile/abs_projectile.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [],
  "parent": {
    "name": "abstract",
    "path": "folders/Objects/abstract.yy",
  },
  "resourceVersion": "1.0",
  "name": "abs_projectile",
  "tags": [],
  "resourceType": "GMObject",
}