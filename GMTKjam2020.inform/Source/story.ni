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
When play begins:
	say "This is some text before the title. Many games use this space to set the basic scene, get an insight into the player character's mental state. We could use this space to express how the player character feels about the situation, as they park their car and get ready to walk inside, and then follow it up with the title.";
	wait for any key.	

A stealable is a kind of thing.

A mourner is a kind of person.

Every turn:
	if the remainder after dividing the turn count by three is zero:
		try taking a random object.
		
[TABLE(S)]

	
Part I - Get Upstairs

[n.b.: parts don't actually show up in the game, they're just to make the code easier to keep track of]

Foyer is a room. The description of the foyer is "The foyer of your great uncle's home."

Testthing is a stealable in the foyer. Testthing is undescribed. The description of the testthing is "It's a testthing." Understand "thing" as the testthing.


Part II - You're Upstairs



Part III - Now Go Back Downstairs















Part IV - Spaghetti Code
		


[EVENTS]


[NOTES]

[okay so basically I need a table in each room with every stealable item on it (except the hors d'oeuvres), and code that takes a random stealable item from the table, changes its status to taken on the table, checks the bottom of a log of most recently taken items, and then says "> take [that item]". the hors d'oeuvres will be a hundredfold item under standard take rules. theoretically this could lead to a situation where there are 0 hors d'oeuvres; if there's time I'll make that a fail state.]


[You stuff it in your pocket as surreptitiously as you can.]