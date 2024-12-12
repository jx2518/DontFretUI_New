// Bounce.js
// Properties:
//@input float speed = 1.0 {"widget": "slider", "min": 0, "max": 10.0, "step": 0.01}
//@input float range = 10.0 {"widget": "slider", "min": 0, "max": 30.0, "step": 0.01}

function start () { 
  
}

function bounce() {
    obj = script.getSceneObject()
  var newY = Math.sin(getTime() * script.speed) * script.range;
    var start_pos = obj.getTransform().getWorldPosition()

    obj.getTransform().setLocalPosition(new vec3(start_pos['x'], newY, start_pos['z']));
}

var updateEvent = script.createEvent('UpdateEvent');
var startEvent = script.createEvent('OnStartEvent');
updateEvent.bind(bounce);
startEvent.bind(start); 