//@input SceneObject scene1
//@input SceneObject scene2
//@input SceneObject scene3
//@input Component.TouchComponent button1
//@input Component.TouchComponent button2
//@input Component.TouchComponent button3

function toggleScene(scene) {
    script.scene1.enabled = false;
    script.scene2.enabled = false;
    script.scene3.enabled = false;
    scene.enabled = true;
}

//script.button1.onTapEvent.add(function() {
//    toggleScene(script.scene1);
//});
//
//script.button2.onTapEvent.add(function() {
//    toggleScene(script.scene2);
//});
//
//script.button3.onTapEvent.add(function() {
//    toggleScene(script.scene3);
//});