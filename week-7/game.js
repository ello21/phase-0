 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:

// Overall mission:
// An Irish prankster has stolen your morning coffee!
// You simply CANNOT start your day without it.
// Good news: You're a portal jumper, capable of bending space and time to your will.
// Bad news: So is the coffee thief.

// Goals: Jump into portals until you end up at the same portal as the thief and nab
// your coffee. Each time you jump, the coffee thief jumps too.

// Characters: Jumper, Coffee Thief

// Objects: jumper(gotCoffee), coffeeThief

// Functions: jump(), greeting(), newPortal(), caught()

// Pseudocode
// DEFINE jumper(gotCoffee property set to false) and coffeeThief objects
// DEFINE "jump" function
	// SET variable "portal number" equal to a random number
	// EXECUTE another function "new portal" which changes the
	// "random portal" variable of the coffeeThief object
	// TEST whether the jump object's portal number is equal
	// to the coffeeThief object's portal number
		//IF portal numbers equal
			// SET variable "gotCoffee" to true
			// EXECUTE coffeeThief object's "caught" method
// DEFINE "new portal" function
	//SET "random portal" variable equal to random number

/*
//Initial Code
var jumper = {
	gotCoffee: false,
	jump: function(portalNum){
		console.log("Jumping...");
		console.log("You jumped in portal " + portalNum);

		var coffeePortal = coffee.newPortal();
		console.log("I've got yer cup o' Joe in portal " + coffeePortal + ". Ha!\n");
		if (portalNum === coffeePortal){
			this.gotCoffee = true;
			console.log("CONGRATS JUMPER! You nabbed your cup o' Joe!\n"+
			"TOP O' THE MORNIN' TO YA!");
		}
	}
};

var coffee = {
	newPortal: function(){
		var randomPortal = Math.floor( (Math.random() * 5) + 1);
		return randomPortal
	}
};

//Test Code
console.log("\nMornin' Jumper! I take it you'll be wanting yer cup o' Joe?\n\n"+
"Well, you'll first be needing to jump into one of these 5 portals here and grab it.\n"+
"Not too difficult aye?\n\n"+
"But remember...\n\n"+
"Every jump you make, yer cup o' Joe'll be jumping too!\n\n"+
"Luck o' the Irish to ya!\n\n\n");

while (jumper.gotCoffee===false){
 	jumper.jump(Math.floor( (Math.random() * 5) + 1));
 }

*/


// REFACTORED CODE
var jumper = {
	gotCoffee: false,

	jump: function(){
		var portalNum = Math.floor( (Math.random() * 5) + 1);
		console.log("Jumping...");
		console.log("You jumped in portal " + portalNum);

		//When jumper jumps into a portal, the coffee thief also jumps into a new portal
		var coffeePortal = coffeeThief.newPortal();
		console.log("I've got yer cup o' Joe in portal " + coffeePortal + ". Ha!\n");
		//If jumper and coffeeThief are at the same portal, change gotCoffee to true and
		// call coffeeThief.caught function
		if (portalNum === coffeePortal){
			this.gotCoffee = true;
			coffeeThief.caught();
		}
	}
};

var coffeeThief = {
	//Greet jumper and explain mission
	greeting: function(){
		console.log("\nMornin' Jumper! I take it you'll be wanting yer cup o' Joe?\n\n"+
		"Well, you'll first be needing to jump into one of these 5 portals here and grab it from me.\n"+
		"Not too difficult aye?\n\n"+
		"But remember...\n"+
		"Every jump you make, I make one too!\n\n"+
		"Luck o' the Irish to ya!\n");
	},
	//Generate and return random portal number. This function is called when the jumper.jump method is called
	newPortal: function(){
		var randomPortal = Math.floor( (Math.random() * 5) + 1);
		return randomPortal
	},
	//If jumper "catches" coffeeThief, display congratulations. This method is called if jumper and coffeeThief are
	//at the same portal.
	caught: function(){
		console.log("CONGRATS JUMPER! You nabbed your cup o' Joe!\n"+
		"TOP O' THE MORNIN' TO YA!");
	}
};


//Test Code
coffeeThief.greeting();
while (jumper.gotCoffee===false) {
	jumper.jump();
}


/*
Reflection
What was the most difficult part of this challenge?
- Most difficult part was deciding what I wanted the game to do, and
deciding how I wanted the functions to interact with each other. I originally
had the greeting and random number generation for jumper OUTSIDE of the objects,
but then decided to move them inside and have the objects methods call each other
once the "portal numbers are equal" condition was met.

What did you learn about creating objects and functions that interact with one another?
- I learned to that I can use "this" to refer to the parent object, even from inside a function.
I also got some practice calling one object's functions from the other object.

Did you learn about any new built-in methods you could use in your refactored solution?
If so, what were they and how do they work?
- No I didn't find any other built-ins to help me. I looked for a long time for a way to
take input from the user (portal number choice) but I couldn't find a way that was simple
and could be tested in node. I'd definitely re-do the game to include user choice once I've
learned more about how to execute that successfully.

How can you access and manipulate properties of objects?
- If you have a Dog object with a name property, you can access the property like this:
Dog.name
-or-
Dog["name"]
You can set new properties or manipulate existing ones using the same syntax:
Dog.breed = "Collie";
Dog["name"] = "Lassie";

*/