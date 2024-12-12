// @input string question = "What are some ideas for Lenses?"
// @input SceneObject obj
const request = { 
    "temperature": 0,
    "messages": [
        {"role": "user", "content": script.question}
    ]
};

function requestGPT() {
    print(`Requesting answer for: ${script.question}`);
    
    global.chatGpt.completions(request, (errorStatus, response) => {
        if (!errorStatus && typeof response === 'object') {
            const mainAnswer = response.choices[0].message.content;
            print(mainAnswer);
        } else {
            print(JSON.stringify(response));
        }
    })
}

//script.createEvent("TapEvent").bind(requestGPT);
// Add TouchComponent to the object
if (script.obj) {
    var touchComponent = script.obj.getComponent("Component.TouchComponent") 
        || script.obj.createComponent("Component.TouchComponent");
    
    // Bind the requestGPT function to the object's touch event
    touchComponent.addMeshVisual(script.obj.getComponent("Component.MeshVisual"));
    touchComponent.onTouchStart.add(requestGPT);
}


print("Tap to call GPT!");