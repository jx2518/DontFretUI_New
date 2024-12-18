// PlayPauseBehavior.js
// Toggles the auto-scroll speed on button tap

//@input SceneObject scrollViewObject {"label": "ScrollView Object"}
//@input SceneObject toggleOnIcon {"label": "Toggle On Icon"}
//@input SceneObject toggleOffIcon {"label": "Toggle Off Icon"}

// Variable to track auto-scroll state
var isAutoScrolling = true;

// Initialize the script
function onStart() {
    // Update icons to reflect the initial state
    updateIcons();

    // Attach the tap event to the parent object
    var parentObject = script.getSceneObject();

    if (parentObject) {
        // Ensure parent object is set up to handle taps
        var touchComponent = parentObject.getComponent("Component.TouchComponent");
        if (!touchComponent) {
            touchComponent = parentObject.createComponent("Component.TouchComponent");
        }

        // Bind the tap event
        touchComponent.addTapEvent(onTap);
        print("TapEvent successfully bound to the object.");
    } else {
        print("Error: The script must be attached to a SceneObject.");
    }
}

// Function to handle tap events
function onTap(event) {
    // Toggle the auto-scroll speed
    toggleAutoScroll();

    // Update icons based on the new state
    updateIcons();
}

// Function to toggle auto-scroll speed
function toggleAutoScroll() {
    if (script.scrollViewObject) {
        var scrollViewComponent = script.scrollViewObject.getComponent("ScrollView");
        if (scrollViewComponent) {
            isAutoScrolling = !isAutoScrolling;
            scrollViewComponent.autoScrollSpeed = isAutoScrolling ? 1.0 : 0.0; // Adjust speed
            print("Auto-scroll is now " + (isAutoScrolling ? "enabled" : "paused") + ".");
        } else {
            print("Error: ScrollView component not found on the referenced object.");
        }
    } else {
        print("Error: ScrollView Object not set in Inspector.");
    }
}

// Function to update toggle icons
function updateIcons() {
    if (script.toggleOnIcon) {
        script.toggleOnIcon.enabled = isAutoScrolling;
    }
    if (script.toggleOffIcon) {
        script.toggleOffIcon.enabled = !isAutoScrolling;
    }
}

// Initialize the script when it starts
onStart();
