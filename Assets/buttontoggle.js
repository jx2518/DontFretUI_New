//@input Component.ScriptComponent toggleScript
//@input SceneObject sceneObject

function switchObjectOnOff(toggleValue) {
  script.sceneObject.enabled = toggleValue;
}

script.toggleScript.onToggle.add(switchObjectOnOff);