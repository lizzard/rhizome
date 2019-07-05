"Rhizome" by lizzard

Part 1 - Setup

Include Basic Screen Effects by Emily Short.

Use scoring.
The maximum score is 20.

Rule for constructing the status line:
	fill status bar with Table of Fancy Status; 
	rule succeeds.
	
Table of Fancy Status
left	central	right 
" [location]"	"[number of visited rooms]/[number of rooms] locations"	"Score: [score]"

Listing exits is an action applying to nothing.
Understand "exits" as listing exits.

Carry out listing exits: say "You can go [exit list] from here.".

To say exit list:
	let place be location;
	let count be 0;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room:
			increment count;
			say "[if count is greater than 1] or [end if][bold type][way][roman type] ([place])". 
			


Part 2 - Starting location

Gate to the Mushroom Farm is a room. The description is "You have entered the Mushroom Farm by the front gate. The road leads east past a little house." 

The little house is scenery in Gate to the Mushroom Farm. The description of the little house is "A well loved looking house full of life and business. You leave them in privacy."

A hand-painted sign is an object in Gate to the Mushroom Farm. The description of a hand-painted sign is "Welcome! Type 'help' for some basic commands you can try."




Part 3 - Hint system

A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined. 

Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused. 

After acting confused for five turns:
        say "(If you are feeling lost, try typing 'help' for suggestions.)" 

Understand "help [text]" or "help about [text]" as getting help about. Understand the commands "instructions" or "menu" or "info" or "about" as "help". 

Getting help about is an action applying to one topic. 

Carry out getting help about:
	if the topic understood is a topic listed in the Table of Standard Help:
		say "[explanation entry][paragraph break]";
	otherwise:
		say "You're out of ideas." 

Understand "help" as summoning help. Summoning help is an action applying to nothing. 

Carry out summoning help:
	say "Help is available about the following topics. Typing HELP followed by the name of a topic will give further information.[paragraph break]";
	repeat through the Table of Standard Help:
		say " [title entry]: [summary entry][line break]". 

Table of Standard Help
topic	title	summary	explanation
"commands"	"commands"	"A list of basic commands in the game"	"'i' - lists  your inventory (what you are carrying).  [line break]
'l' - 'look'. Shows the room description (again). [line break]
'n' -  convenient shorthand for 'go north' [line break]
's', 'e', 'w', 'u', 'd' - south, east, west, up, down[line break]
'x' - examine something. 'look at' also works.[line break]
'take' - You can also take things, open things, sit on things, and stand up. [line break]
'Hints' will get you a small menu of extra hints, a little spoilery. [line break]
There are many more commands to try![line break]"
"exits"	"exits"	"Using the EXITS command"	"Type 'exits' if you want a list of possible exits. It's a little cheaty, but so much less frustrating. It's a good habit to type 'exits' in every new location to orient yourself. "
"self"	"self"	"The point of view character"	"Keep in mind you can type 'examine self' or 'x self'. This might be useful or informative, sometimes."
"score"	"score"	"Things that make your score go up"	"10 points for each connection to the land you establish."
"contribute"	"contribute"	"How to contribute"	"Please report anything you think is wrong, or could use improvement. Or, maybe you have an idea for adding to the game. Let me know about any of these at https://github.com/lizzard/rhizome/issues. You can also email lizhenry@gmail.com with 'RHIZOME' in the subject line if you prefer email. Thanks! - Lizzard"

Understand "hints" or "hint" as summoning hints. Summoning hints is an action applying to nothing. 

Carry out summoning hints:
	say "Hints are available about the following topics. Typing HINT followed by the name of a topic will give further information.[paragraph break]";
	repeat through the Table of Hints:
		say " [title entry]: [summary entry][line break]". 
		
Understand "hint [text]" or "hint about [text]" as getting hints about. 

Getting hints about is an action applying to one topic. 

Carry out getting hints about:
	if the topic understood is a topic listed in the Table of Hints:
		say "[explanation entry][paragraph break]";
	otherwise:
		say "You're out of ideas." 


Table of Hints
topic	title	summary	explanation
"start"	"start"	"Hints for the start of the game"	"Wander around, look at things, get a sense of how to get to all the game locations you can. [paragraph break]There are small puzzles to solve which will increase your score. At the top of the game window you can see how many locations you've been to out of the total locations in the game. [paragraph break]As you-the-point-of-view-character wander around this playable map, you should find opportunities to connect to a deeper sense of stewardship of the land and a relationship with it. And, as you-the-person play in this simplified imaginary landscape, you may become more familiar with the real landscape we're inhabiting on the Farm. "
"nettles"	"nettles"	"Why do the nettles keep stinging me?"	"Maybe you need to wear something on your hands to protect them!"


Part 4 - Locations

Camp Road is east of Gate to the Mushroom Farm. The description is "This paved road leads from the western gate to higher ground, to the east. A wide road continues south to the main level of the Farm. A smaller gravel road winds north over a tiny creek, towards huge derelict warehouses. "

A pair of heavy work gloves is a wearable object in Camp Road. The description is "A pair of thick work gloves. They would fit you perfectly!"

Overgrown Creek is north of Camp Road. The description is "You cross the bridge over a tiny creek, overgrown with tall plants. Only a trickle of water is visible below."

Some tall hemlock, some lacy fennel, and some stinging nettles are objects in Overgrown Creek. 

The description of some tall hemlock is "Tall, feathery, white-flowered plants growing near the water. They remind you a lot of Queen Anne's Lace."

The description of some stinging nettles is "This plant has serrated, fuzzy leaves that look somewhat like lemon balm. Best not to touch them!"

Instead of taking some stinging nettles when the player is not wearing work gloves:
	say "Ouch! You get stung painfully by the nettles, all over your hands!";
	stop the action.
	
After taking some stinging nettles:
	record "taking nettles" as achieved.
		
[add code to replace actions of taking them]

Lion's Mane Camp is north of Overgrown Creek. The description is "This small meadow between huge abandoned warehouses is dotted with large white tents."

A pile of redwood lumber and some rusty nails is in Lion's Mane Camp. 
The description of a pile of redwood lumber is "Useful, if old and splintery, timber."
The description of some rusty nails is "Careful. Hope you got your tetanus shots up to date."

Upper Camp Road is east of Camp Road. The description is "A fork in the road. North would take you past a row of outbuildings and garages, but the road is blocked off. South, the road turns to gravel and continues onwards past a tractor garage, towards some RVs and tents."

Camp Shiitake is south of Upper Camp Road. The description is "A grassy space to the west of a small gravel road which continues south. RVs are parked here. To the east, there is a garage full of tractors and other heavy machinery."

Tractor Garage is east of Camp Shiitake.

Camp Enoki is south of Camp Shiitake.

Bathroom Building is east of Camp Enoki.

Log Stairs is west of Camp Enoki.

Tiny Log Bridge is west of Log Stairs.

Road to the Farm is south of Camp Road.

Office Road is south of Road to the Farm.

Dome Road is south of Office Road.

Creativity Flats is south of Dome Road.

Medicine Wheel is south of Creativity Flats.

The Kitchen is west of Dome Road.

The Coffee Bar is west of The Kitchen.

Medical Center is south of The Kitchen.

The Dining Pavilion is south of the Coffee Bar.

A room called The Dome is south of the Dining Pavilion.

The Sacred Fire is west of The Dome.




Part 5 - Some tables

Table of Tasks Achieved
Points	Citation	Time (a time)
10	"taking nettles"

	
To record (T - text) as achieved:
	choose row with a citation of T in Table of Tasks Achieved; 
	if there is no time entry: 
		now time entry is the time of day; 
		increase the score by the points entry.
	

	


 





