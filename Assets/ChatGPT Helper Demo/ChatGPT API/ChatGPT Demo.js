// @input string question = "What are some ideas for Lenses?"
// @input SceneObject cone
// @input Component.Text text 


//var sceneObject = script.getSceneObject();
//var interactionComponent = script.cone.getComponent('InteractionComponent');
//
//function onTouchStart(eventArgs) {
//  print(
//    '[Tapped on] ' +
//      sceneObject.name +
//      ', [Touch position] ' +
//      eventArgs.position +
//      ', [Touch Index] ' +
//      eventArgs.touchId
//  );
//}
//
//interactionComponent.onTouchStart.add(onTouchStart);

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
            //print(mainAnswer);
            script.text.text = mainAnswer; 
        } else {
            script.text.text = "Error";
            print(JSON.stringify(response));
        }
    })
}

script.createEvent("TapEvent").bind(requestGPT);
print("Tap to call GPT!");