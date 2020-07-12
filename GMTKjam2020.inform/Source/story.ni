"Uncle Albert in a Can" by Unnamed Game Jam Team
[here is a comment to test whether we can work on separate parts of the project without issue]
[title obviously not final]
[we really need to think of a team name, or else just credit it A&B&C]

The release number is 1.
The story creation year is 2020.
The story headline is "A struggle with kleptomania".
The story genre is "Comedy".
The story description is "STORY RELEASE DESCRIPTION HERE"

[Release along with cover art ("ALT TEXT FOR COVER ART."). This code is commented out because we do not have cover art yet.]

Include Basic Help Menu by Emily Short.

Include Basic Screen Effects by Emily Short.

Release along with the "Quixe" interpreter.

[BASIC RULES]

Kleptomode is a truth state that varies.

When play begins:
	now kleptomode is false;
	say "This is some text before the title. Many games use this space to set the basic scene, get an insight into the player character's mental state. We could use this space to express how the player character feels about the situation, as they park their car, calm themself down, walk inside, and pinch that one character's wallet, and then follow it up with the title.";
	wait for any key.	

A stealable is a kind of undescribed thing.

A mourner is a kind of person.

A first-floor room is a kind of room.

Definition: a stealable is unheld if it is not carried.

The steal list is a list of objects that varies.

The most-recently-taken list is a list of objects that varies.
Carry out taking something (called the item):
	truncate the most-recently-taken list to the last 0 entries;
	add the item to the most-recently-taken list.

Every turn:
	let L be the steal list;
	now L is the list of visible unheld stealables;
	if the remainder after dividing the turn count by 7 is zero:
		if L is non-empty:
			now kleptomode is true;
			try silently taking a random visible unheld stealable;
			say "> take [most-recently-taken list][line break]You stuff it in your pocket as surreptitiously as you can.";
			now kleptomode is false;
			if a mourner is touchable:
				wait for any key;
				say "[line break]You just can't help yourself, can you.[line break][line break]";
				wait for any key;
				say "[quotation mark]THIEF! THIEF![quotation mark]";
				wait for any key;
				clear screen;
				now the left hand status line is "The Curb";
				end the story saying "You have been thrown out";
		if L is empty:
			say "Your fingers itch.";
			if a mourner is touchable:
				say "[line break]You feel eyes on you."

The block giving rule is not listed in the check giving it to rules. 
				
Instead of putting, inserting, or dropping a stealable, say "It might not be a good idea to give grieving rich people concrete evidence that you're stealing from them."

Check giving a stealable to a person:
	if the person is a mourner:
		say "It might not be a good idea to give grieving rich people concrete evidence that you're stealing from them.[first time][line break]Even rich people who [italic type]aren't[roman type] grieving tend to be extra-vindictive about that sort of thing.[only]" instead.

Instead of giving the wallet to a person:
	if the person is a mourner:
		say "The family is already watching you like a hawk, if you give it to one of them they'll probably think you stole it.[line break][line break]";
		wait for any key;
		say "Which, to be fair, you did.".
			
Instead of giving the wallet to Cartwright:
	say "That would be a really, really, really bad idea. I don't think he'll believe you if you claim you [quotation mark]just found it.[quotation mark][line break]If you really want to return it, you might want to find someone more sympathetic to your condition.".
	

Check taking a stealable:
	if kleptomode is false:
		[if the player is in Hors D'oeuvres Table...]
		say "This is a funeral reception and everyone knows you're a kleptomaniac. You're not going to intentionally take anything you aren't supposed to.[line break]" instead.

Instead of taking scenery, say "Against your will, you've gotten pretty good at taking things unnoticed. This, however, would attract attention, no matter how sneaky you are."

[starting inventory]

Cartwright's wallet is a stealable. The player carries Cartwright's wallet. The description of Cartwright's wallet is "[first time]Whoops.[line break][only]You should probably find a way to give it back to him."



Part I - Get Upstairs

[n.b.: parts don't actually show up in the game, they're just to make the code easier to keep track of]

[Vestibule]

Vestibule is a room. The description of the vestibule is "The entranceway of Uncle Clifton's imposing mansion, the anteroom to the Hall to the north. On your left, a weathered wooden umbrella stand sits[if umbrella is unheld], one lonely umbrella inside it[end if].  Next to it, a table has been set up for the condolence book[if condolence book is held], which is missing[end if][if condolence book is unheld], which lies open[end if][if pen is unheld], and a pen[end if]."

The umbrella_stand is a container and scenery in the vestibule. The umbrella_stand has the printed name "umbrella stand". Understand "umbrella stand" as the umbrella_stand. The umbrella is a stealable in the umbrella_stand. The description of the umbrella is "Shabby, old, a faded shade of purple[first time][unicode 2014]it's as weathered as the umbrella stand.[line break][line break]Okay, to be fair, that's kind of expected for an umbrella[only].". Instead of opening the umbrella, say "Isn't your luck bad enough already?"

There is a table in the vestibule. The pen is on top of the table. The condolence book is on top of the table. The pen is stealable. The condolence book is stealable. The table is scenery.

The description of the table is "[first time]Hastily dragged here from a different room in the house. [only]Most people would just use a folding table, but you're pretty sure this is an antique."

The description of the condolence book is "[first time]Not to sound crass, but do the bereaved ever actually read these? It's bad enough having people come up to you in person to give a tactless [quotation mark]he's in a better place now[quotation mark], you can't imagine having a written record of that too.[line break][line break][only]Probably better not to subject yourself to that."

The description of the pen is "It's an ordinary ballpoint pen: sleek, black, [if pen is held]demonstrably [end if]easy to palm."

[Testthing is a stealable in the vestibule.  The description of the testthing is "It's a testthing." Understand "thing" as the testthing.

Anotherthing is a stealable in the vestibule. The description of anotherthing is "pasdoifnpoie".

Thirdthing is a stealable in the vestibule. The description of thirdthing is "thirdthing".

John is a mourner in the vestibule. John is male. The description of John is "John."]

Instead of going south in the vestibule:
	say "You're not leaving until you get what you came for.[first time][line break]Hell, with your condition you usually end up being forced to leave through another door.[only]"

[Coat Closet is east of vestibule.

Instead of going east for the first time in the vestibule:
	say "You open the door.[line break][line break]";
	wait for any key;
	say "It's absolutely full of coats.[line break][line break]";
	wait for any key;
	say "You close the door."
	
Instead of going east in the vestibule for more than the first time:
	say "There's no room for you in there. It's just a bunch of coats."]

[Hall]

The Hall is north of the vestibule. The description of Hall is "s"

After deciding the scope of the player while the player is in the Hall:
	place the Vestibule in scope;
	place the Sitting Room in scope;
	place the Library in scope;
	place the Game Room in scope;
	place the Kitchen in scope.
	
Instead of examining the Vestibule when the player is in the Hall, say "It looks smaller from here. Or maybe you're just farther away from it."

Instead of examining a first-floor room when the player is in the Hall, say "It'd be easier to see if you were inside it."
	
Cartwright is a mourner in the hall. The description of Cartwright is "[first time]You ever been in the same room as one of those rich fratty white guys? You know the type. Dominates every conversation with hurtful, overpersonal [quotation mark]jokes[quotation mark] at the expense of his buddies, but as soon as they turn it back on him, he gets real quiet and real tense and everyone kind of changes the subject?[line break][line break]Yeah, Cartwright is that guy as an old man.[line break][line break]Towering, gray-haired. You think he's Uncle Clifton's brother? Maybe his cousin. Either way, his stature and his demeanor have the effect of making him intimidating, an effect which is only slightly diminished by your vague recollection that he is mildly allergic to a [italic type]comical[roman type] amount of things.[line break][line break][only]He seems annoyed with you. It might be because you stole his wallet."

[Differentthing is a stealable in the Hall. The description of the differentthing is "It's different." Differentthing is undescribed.]

The hunting trophy is a stealable in the Hall. The description of the hunting trophy is "A taxidermied gopher mounted on a polished wooden plaque. Its expression is decidedly harried."

[Sitting Room]

The Sitting Room is a first-floor room. The Sitting Room is southwest of the hall. The description of Sitting Room is "Description of sitting room. To the west, a door is open to the lawn, where the remaining hors d'oeuvres are laid out. Barely anyone's out there." Jack is a mourner in the sitting room.

The chess set is a stealable in the Sitting Room. The description of the chess set is "A portable chessboard with small wooden chess pieces carved to resemble civil war soldiers. Both sides are modeled in the image of Union soldiers.[line break][line break]There’s a story there."
The  pack of cigarettes is a stealable in the Sitting Room. The description of the chess set is "You look down at the half-empty pack of cigarettes. The weirdly sexually-charged camel mascot stares back at you through his Ray-Ban sunglasses."
The ashtray is a stealable in the Sitting Room. The description of the ashtray is "Shallow yellow glass tray, currently empty."
The clutch is a stealable in the Sitting Room. The description of the clutch is "You don’t know who this clutch belongs to. It is soft velvet with pearl adornment on the handle"
The sweater is a stealable in the Sitting Room. The description of the sweater is "A thin black cardigan." 
The jacket is a stealable in the Sitting Room. The description of the jacket is "A plain black leather jacket with almost no wear or tear." 
The champagne flute is a stealable in the Sitting Room. The description of the champagne flute is "A thin glass tube on a thin glass stem."
The empty china plate is a stealable in the Sitting Room. The description of the empty china plate is "The last surviving remnant of Clifton’s favourite china set.  Very recently full of hors d’oeuvres. Currently littered with the debris of said hors d’oeuvres"
The golden watch is a stealable in the Sitting Room. The description of the golden watch is "This is Bryce’s chunky golden watch. It does not appear to be working."


[scope lawn]

[Lawn]
The Lawn is west of the sitting room. The description of the Lawn is "Description of lawn. Hors d'oeuvres, also a person who isn't a jerk about your condition"

[scope sitting room]

[Library]

The Library is a first-floor room. The description of the Library is "Library." The library_door is a locked door with the printed name "Library door". Understand "locked door", "library door", "door to the library", and "door to library" as the library_door. The library_door is undescribed. The library_door is southeast of the hall and northwest of the library. The description of the library_door is "Normally, this door leads to one of your favorite rooms in the house. Uncle Clifton kept a terrific mix of old newspapers, new science texts, gothic horror...you name it.[line break][line break]Unfortunately, the door is locked."

[Game Room]

The Game Room is a first-floor room. The Game Room is northeast of the hall. The description of the Game Room is "The bulk of blah taken up by billard table. Bar, etc."

[Kitchen]

The Kitchen is a first-floor room. The Kitchen is northwest of the hall. The description of the kitchen is "Kitchen."

[scope pantry]

[Pantry]

The Pantry is north of the Kitchen. The description of the Pantry is "Pantry."

[implement later?]

The Dining Room is south of the Kitchen, west of the Hall, and north of the Sitting Room.

[The Small Hallway is north of the hall.]


Part II - You're Upstairs

The Upstairs Landing is up from the Hall.

The Attic is up from the Upstairs Landing.

Instead of going up in the Upstairs Landing, say "You'd really rather not. This is a nice house, but it's still an old house, and the attic is unfinished. Who knows how many rotted boards are up there?"

The Upstairs Balcony_north is a room with printed name "Upstairs Balcony (north end)". The Upstairs Balcony_north is west of the Upstairs Landing.

Guest_door is east of Guest Bedroom and west of the Upstairs Balcony_north. Guest_door is a locked door with the printed name "Guest bedroom door". Understand "Guest bedroom" or "Guest bedroom door" as Guest_door.

Dimia_door is east of Dimia's Bedroom and southwest of the Upstairs Balcony_north. Dimia_door is a locked door with the printed name "Dimia's bedroom door". Understand "Dimia's bedroom" or "Dimia's bedroom door" as Dimia_door.

The Upstairs Balcony_south is a room with printed name "Upstairs Balcony (south end)". The Upstairs Balcony_south is south of the Upstairs Balcony_north.

Master_door is east of the Master Bedroom and northwest of the Upstairs Balcony_south. Master_door is a locked door with the printed name "Master bedroom door". Understand "Master bedroom" or "Master bedroom door" as the Master_door.

Uncle Clifton's Study is west of the Upstairs Balcony_south.


[A balcony extends to your west and then wraps around to the south end of the mansion. Its railing overlooks the Hall.]

[A little further down the balcony, to the southeast, is the something bedroom. south of here is the other end of the balcony.

North of here is the other end of the balcony ]

[[if the flashlight is held] attic description]


Part III - Now Go Back Downstairs















Part IV - Spaghetti Code
		


[EVENTS]


[NOTES]

[okay so basically I need a list in each room with every stealable item on it (except the hors d'oeuvres), and code that checks if the list is non-empty.

if it is, it silently takes the first item from the list, removes it from the list, checks the bottom of a log of most recently taken items, and then says "> take [that item]".

THEN if there's a mourner in the room, wait for any key, do some extra text, "end the story saying [thing]".

the hors d'oeuvres will be a hundredfold item under standard take rules and no mourners will ever enter the area. this is unrealistic but I don't care. (can describe the table as kind of picked-over, and the mourners are busy talking.) theoretically this could lead to a situation where there are 0 hors d'oeuvres; if there's time I'll make that a fail state.

one problem with this approach is that the room descriptions will have to be dynamic in order to account for random item theft. hopefully it's possible to list every item on a table in a description, but if not (or if there's no time) we'll stick with the bad default "You can see x here."]


["After about a seven count, you]

[let K be the list of visible unheld scenery??? (thinking about taking a thing that's nailed down)]

[list of visible unheld stealables in the location]

[Instead of giving the peanut butter canapé to Cartwright, say "You give Cartwright[unicode 2014]a man whose allergies might be way more severe than you're aware of[unicode 2014]a common and potentially life-threatening allergen.[line break][line break]";
wait for any key;
clear screen;
say "No. You don't. Obviously you don't.[line break][line break]";
wait for any key;
say "What is wrong with you?";
wait for any key;
clear screen.

Another option when he has the gun on you: Don't bring a canapé to a gunfight.]

[Instead of attacking Cartwright:]

[He wasn't a good man [description of real estate holdings, slumlord, etc.] but for some reason he was kind to you.]

[later: put lawn in scope of sitting room and vice versa]

[Cartwright's gun is a asdfasdfsd. You only know that because Uncle Clifton hated the damn thing.]
