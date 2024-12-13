//@input Component.AudioComponent[] audioComponents

function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}

var currentIndex = getRandomInt(script.audioComponents.length); // Generates a number between 0 and 6 (inclusive)

function toggleSound() { 
   
    // Play the current sound
    script.audioComponents[currentIndex].play(1);
    
    // Move to the next sound
    currentIndex = getRandomInt(script.audioComponents.length);
    print(currentIndex);
}

script.createEvent("TapEvent").bind(toggleSound);