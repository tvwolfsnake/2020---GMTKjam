"Uncle Albert in a Can" by Unnamed Game Jam Team
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
[This is the dumb rule:
	let L be the list of visible stealables.]

When play begins:
	let L be the list of visible unheld stealables;
	say "This is some text before the title. Many games use this space to set the basic scene, get an insight into the player character's mental state. We could use this space to express how the player character feels about the situation, as they park their car and get ready to walk inside, and then follow it up with the title.
[L with definite articles]";
	wait for any key.	

A stealable is a kind of thing.

A mourner is a kind of person.

Definition: a stealable is unheld if it is not carried.



The most-recently-taken list is a list of objects that varies.
Carry out taking something (called the item):
	let M be the most-recently-taken list;
	now M is { };
	add the item to the most-recently-taken list. 

Every turn:
	let L be the list of visible unheld stealables;
	if the remainder after dividing the turn count by three is zero:
		if L is non-empty:
			try silently taking a random visible unheld stealable;
			say "> take [most-recently-taken list][line break]You stuff it in your pocket as surreptitiously as you can.";
			if a mourner is touchable:
				wait for any key;
				say "[line break]hey don't take that";
		if L is empty:
			say "Your fingers itch.";
			if a mourner is touchable:
				say "[line break]You feel eyes on you."
				
Before looking in a room:
	let L be the list of visible unheld stealables.

	
Part I - Get Upstairs

[n.b.: parts don't actually show up in the game, they're just to make the code easier to keep track of]

Foyer is a room. The description of the foyer is "The foyer of your uncle's home."

Testthing is a stealable in the foyer. Testthing is undescribed. The description of the testthing is "It's a testthing." Understand "thing" as the testthing.

Anotherthing is a stealable in the foyer. Anotherthing is undescribed. The description of anotherthing is "pasdoifnpoie".

John is a mourner in Foyer. John is male. The description of John is "John."

[After taking the testthing:
	say "[L with definite articles]".]

Newroom is north of Foyer. The description of Newroom is "s"

Differentthing is a stealable in the Newroom. The description of the differentthing is "It's different." Differentthing is undescribed.



Part II - You're Upstairs



Part III - Now Go Back Downstairs















Part IV - Spaghetti Code
		


[EVENTS]


[NOTES]

[okay so basically I need a list in each room with every stealable item on it (except the hors d'oeuvres), and code that checks if the list is non-empty.

if it is, it silently takes the first item from the list, removes it from the list, checks the bottom of a log of most recently taken items, and then says "> take [that item]".

THEN if there's a mourner in the room, wait for any key, do some extra text, "end the story saying [thing]".

the hors d'oeuvres will be a hundredfold item under standard take rules and no mourners will ever enter the area. this is unrealistic but I don't care. (can describe the table as kind of picked-over, and the mourners are busy talking.) theoretically this could lead to a situation where there are 0 hors d'oeuvres; if there's time I'll make that a fail state.

one problem with this approach is that the room descriptions will have to be dynamic in order to account for random item theft. hopefully it's possible to list every item on a table in a description, but if not (or if there's no time) we'll stick with the bad default "You can see x here."]


["You stuff it in your pocket as surreptitiously as you can."]