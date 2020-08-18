"you can't take it with you" by take all games
[here is a comment to test whether we can work on separate parts of the project without issue]
[title obviously not final]
[we really need to think of a team name, or else just credit it A&B&C]

The release number is 2.
The story creation year is 2020.
The story headline is "a take all game".
The story genre is "Comedy".
The story description is "You just want to go to the funeral reception, get the silver pocketwatch your Uncle Clifton left you in his will, and leave. Trouble is, you're a chronic kleptomaniac, and his family hates you, probably because you're a chronic kleptomaniac."
After printing the banner text, say "Type HELP for more information. Type SCREEN READER to toggle accessibility mode."

Release along with cover art ("A roll of toilet paper, a ring of keys, a cigarette, and a fancy pocketwatch with the letters C.F. on it, rendered in a black and white comic book style.").

Include Basic Help Menu by Emily Short.

Include Basic Screen Effects by Emily Short.

Release along with the "Quixe" interpreter.

[BASIC RULES]

Kleptomode is a truth state that varies. Kleptomode is initially false.
wallet_given is a truth state that varies. wallet_given is initially false.
gun_start is a truth state that varies. gun_start is initially false.
kitchen_visited is a truth state that varies. kitchen_visited is initially false.
knife_disambiguation is a truth state that varies. knife_disambiguation is initially false.
nails_examined is a truth state that varies. nails_examined is initially false.
pen_variable is a truth state that varies. pen_variable is initially false.
screenreader_on is a truth state that varies. screenreader_on is initially false.
cutscene_over is a truth state that varies. cutscene_over is initially true.
kitchen_looked is a truth state that varies. kitchen_looked is initially false.
dining_looked is a truth state that varies. dining_looked is initially false.
sitting_looked is a truth state that varies. sitting_looked is initially false.

[This is some text before the title. Many games use this space to set the basic scene, get an insight into the player character's mental state. We could use this space to express how the player character feels about the situation, as they park their car, calm themself down, walk inside, and pinch that one character's wallet, and then follow it up with the title.]

[He caught you once, stealing his silver pocketwatch from on top of his desk. He didn't get mad. He promised you that someday, when he was gone, you would have the pocketwatch.]

[He was a bastard.

He was a friend.]

Screen reader is an action out of world. Understand "screen reader" as screen reader.

Carry out screen reader:
	if screenreader_on is false:
		now screenreader_on is true;
		say "Screen reader mode set to ON. (Certain effects will change to be more screen reader-friendly, and the start and end of long minimal-interaction cutscenes will be marked.)";
	otherwise:
		now screenreader_on is false;
		say "Screen reader mode set to OFF."
		
To say sr_enter:
	say "[bracket]Press ENTER to continue.[close bracket][line break][line break]"

When play begins:
	now the wallet is closed;
	say "Would you like to turn screen reader mode on? (y or n) ";
	if the player consents:
		now screenreader_on is true;
		say "Screen reader mode set to ON. (Certain effects will change to be more screen reader-friendly, and long minimal-interaction cutscenes (like the following) will be marked.)[line break][line break][bracket]Press ENTER to continue.[close bracket]";
		wait for enter key;
	otherwise:
		now screenreader_on is false;
		say "Noted.";
	clear screen;
	say "[if screenreader_on is true][bracket]Cutscene begins.[close bracket][line break][line break][end if]Uncle Clifton is dead.[line break][line break][italic type][bracket]Press ENTER to continue.[close bracket][roman type][if screenreader_on is true][line break][line break][end if]";
	wait for enter key;
	if screenreader_on is false:
		clear screen;
		say "Uncle Clifton is dead.[line break][line break]";
	say "He wasn't even really your uncle. Something like a father of a cousin of an in-law. A guy you mostly met at reunions at his house when you were a kid, the guy with the family that hates you.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "He ran a real estate company. Made millions off the backs of his employees and the people who lived in his properties. You don't get the kind of money he had by being a good person.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "He was awful, probably.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear screen;
	say "He was one of the few people who bothered to understand you.[if screenreader_on is true][line break][line break][sr_enter][end if]";
	if screenreader_on is false:
		wait for enter key;
		clear screen;
	wait for enter key;
	clear screen;
	say "He caught you once, in your teens, stealing his silver pocketwatch from on top of his desk. He didn't get mad. He'd figured it out, before anyone else. You had kleptomania. An uncontrollable compulsion.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "He gently took the pocketwatch back and promised you that someday, when he was gone, it would be yours.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "That's why you're sitting in your car in front of his house, trying to convince yourself to brave the funeral reception so you can sneak upstairs, take the nicest present anyone's ever given you, and finally say goodbye to his family for good.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear screen;
	say "You get out of the car, nervously walk up to the front door, open it, and run smack dab into Cartwright.[line break][line break]He gives you a dirty look and walks off into the hall.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "His wallet fell out of his pocket. It's sitting on the floor.[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "> [bold type]take wallet[roman type][line break]You stuff it in your pocket as surreptitiously as you can.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "In about a seven count, you're going to take something else, even though you don't want to.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You can kind of understand why Uncle Clifton's family don't like you. [if screenreader_on is true][bracket]Cutscene ends.[close bracket][end if]";
	choose row 1 in Table of Basic Help Options;
	now description entry is "hi! chloe from take all games here. cool to see you're playing our game.[line break][line break]you can't take it with you is a short comedy game about kleptomania with absolutely no deeper meaning at all.[line break][line break]this game operates in a unique way compared to most interactive fiction: you won't be able to pick many things up intentionally, and every seven turns (not counting failed actions) the player character will involuntarily take something without warning. this presents a problem if there are witnesses. if you get caught, remember that you can always UNDO.[line break][line break]this game was originally made for the GMTK game jam, july 2020. it is our first work as a team, onion and ian's first work of parser-based interactive fiction, my second, and the fourth work of interactive fiction in total that I have worked on.[line break][line break]credits:[line break]chloe 'tvwolfsnake' spears: writing, programming, coding[line break]ironiconion: writing, programming, coding, cover art[line break]ian kay: writing.".
	
[Before printing the locale description of the Vestibule:
	if screenreader_on is true:
		if cutscene_over is true:
			say "";
			now cutscene_over is false;
		if cutscene_over is false:
			say "".]

A stealable is a kind of undescribed thing. A stealable can be openable or unopenable. A stealable is usually unopenable. A stealable can be open or closed. A stealable can be wearable. A stealable is usually not wearable.
A mourner is a kind of person.
Wallcontents is a kind of thing.

Signing is an action applying to one thing. Understand "sign [something]" as signing.


Check signing:
	if the noun is the condolence book:
		if we have not signed the condolence book:
			if the pen is not carried:
				if the player is in the Vestibule:
					now pen_variable is true;
					now the player has the pen;
					say "You take the pen.";
					say "[line break]These books are full of shallow false sympathy, and you have very little to say to Uncle Clifton's family, but you leave a short message and sign it anyway. It's the polite thing to do.";
				[if the player is not in the Vestibule:
					say "Signing something usually requires a pen.";]
			if the pen is carried:
				if pen_variable is false:
					say "These books are full of shallow false sympathy, and you have very little to say to Uncle Clifton's family, but you leave a short message and sign it anyway. It's the polite thing to do.";
		if we have signed the condolence book:
			say "Once is enough.";
	if the noun is not the condolence book:
		say "That's not something you should sign[if the pen is not carried]. Besides, you don't have a pen.[end if][if the pen is carried].[end if]".

The examine containers rule is not listed in any rulebook.

A first-floor room is a kind of room.

Definition: a stealable is unheld if it is not carried.

Definition: a thing is unheld if it is not carried.

A thing can be seen or unseen.

Carry out examining a thing:
	now the noun is seen.

A thing can be felt or unfelt.

Carry out touching a thing:
	now the noun is felt.
	
A thing can be sniffed or unsniffed.

Carry out smelling a thing:
	now the noun is sniffed.
	
A thing can be sampled or unsampled.

Carry out tasting a thing:
	now the noun is sampled.

Carry out eating a thing:
	now the noun is sampled.
	
Carry out drinking a thing:
	now the noun is sampled.

The steal list is a list of objects that varies.

The most-recently-taken list is a list of objects that varies.
Carry out taking something (called the item):
	truncate the most-recently-taken list to the last 0 entries;
	add the item to the most-recently-taken list.

Every turn:
	let L be the steal list;
	now L is the list of visible unheld stealables;
	if the remainder after dividing the turn count by 7 is zero:
		if wallet_given is false:
			if L is non-empty:
				now kleptomode is true;
				try silently taking a random visible unheld stealable;
				if entry 1 of the most-recently-taken list is a peanut butter canapé:
					say "> [bold type]take [most-recently-taken list][roman type][line break]Thankfully, it's not [italic type]really[roman type] stealing if it's free food.[line break][line break]Hildegard shrugs at the kleptomania, and you shrug back. A private joke.";
				otherwise:
					let M be the most-recently-taken list;
					say "> [bold type]take [most-recently-taken list][roman type][line break]You stuff [M with definite articles] in your pocket as surreptitiously as you can.";
				now kleptomode is false;
				if a mourner is touchable:
					if screenreader_on is true:
						say "[sr_enter]";
					wait for enter key;
					say "[line break]You just can't help yourself, can you.[line break][line break][if screenreader_on is true][sr_enter][end if]";
					wait for enter key;
					say "'THIEF! THIEF!'[if screenreader_on is true][sr_enter][end if]";
					wait for enter key;
					clear screen;
					now the left hand status line is "The Curb";
					end the story saying "You have been thrown out";
			if L is empty:
				say "Your fingers itch. There's nothing for them to take.";
				if a mourner is touchable:
					say "[line break]You feel eyes on you."

The block giving rule is not listed in the check giving it to rules. 
				
Instead of putting, inserting, or dropping a stealable:
	if gun_start is false:
		if the noun is the pen:
			if the player is in the Vestibule:
				continue the action;
		if the noun is a peanut butter canapé:
			continue the action;
		otherwise:
			say "It might not be a good idea to give grieving rich people concrete evidence that you're stealing from them.";
	if gun_start is true:
		say "No, you're keeping all of this stuff."
		
Instead of putting, inserting, or dropping the wallet:
	if gun_start is false:
		say "It might not be a good idea to give grieving rich people concrete evidence that you're stealing from them.";
	if gun_start is true:
		say "No, you're keeping all of this stuff."
		
Instead of putting, inserting, or dropping wallcontents:
	if gun_start is false:
		say "It might not be a good idea to give grieving rich people concrete evidence that you're stealing from them.";
	if gun_start is true:
		say "No, you're keeping all of this stuff."

Instead of putting the business card on a supporter:
	say "That's littering."
	
Instead of putting or inserting the business card into a container:
	if the container is the wallet:
		say "You put the business card back.";
		now the business card is in the wallet;
	otherwise:
		say "That doesn't belong there.".
	
[Instead of inserting the business card:
	say "That's littering."]

Instead of dropping the business card:
	if gun_start is false:
		say "You've heard of dropping names, but this is just littering.";
	if gun_start is true:
		say "He pulled a gun on you. You're keeping this card specifically to burn it."

[Does the player mean putting Cartwright's business card on Cartwright's business card:
	it is very unlikely.]

Instead of wearing a stealable:
	if gun_start is false:
		say "You'd look really cool, but they might catch on.";
	if gun_start is true:
		say "Hell yeah.";
		now the player is wearing the noun.

Check giving a stealable to a person:
	if the person is a mourner:
		say "It might not be a good idea to give grieving rich people concrete evidence that you're stealing from them.[first time][line break]Even rich people who [italic type]aren't[roman type] grieving tend to be extra-vindictive about that sort of thing.[only]" instead.

Instead of giving the wallet to a person:
	if the person is a mourner:
		say "The family is already watching you like a hawk, if you give it to one of them they'll probably think you stole it.[line break][line break][if screenreader_on is true][sr_enter][end if]";
		wait for enter key;
		say "Which, to be fair, you did.".
		
Instead of giving wallcontents to a person:
	if the person is a mourner:
		say "There is absolutely no way they won't think you stole this.";
	if the person is Hildegard:
		say "She doesn't need Cartwright's money or ID, but she'd probably help you out if you gave her the wallet itself."
		
Instead of taking wallcontents:
	say "You're leaving that in the wallet. If you manage to get it back to Cartwright, I think he'd notice if something were missing."
			
Instead of giving the wallet to Cartwright:
	say "That would be a really, really, really bad idea. I don't think he'll believe you if you claim you 'just found it.'[line break]If you really want to return it, you might want to find someone more sympathetic to your condition.".
	
Instead of opening the wallet:
	now the wallet is open;
	say "You open Cartwright's wallet.[line break]";
	try examining the wallet.

Check taking a stealable:
	if kleptomode is false:
		if the player is in the Lawn:
			continue the action;
		if the noun is the pen:
			continue the action;
		otherwise:
			say "This is a funeral reception and everyone knows you're a kleptomaniac. You're not going to intentionally take anything you aren't supposed to.[line break]" instead.

Check taking scenery:
	if kleptomode is false:
		say "Against your will, you've gotten pretty good at taking things unnoticed. This, however, would attract attention, no matter how sneaky you are. Your compulsion will figure out something else to take, when the time comes.";
	if kleptomode is true:
		say "You can't carry that, which is a damn shame."
		
To wait for the/-- Enter key:
	let keycode be 0;
	while keycode is not -6:
		let keycode be the chosen letter.

[starting inventory]

Wallet is a container with the printed name "Cartwright's wallet". The player carries wallet. The description of wallet is "[if wallet is closed][one of]Whoops.[line break][line break]You should probably find a way to give it back to him.[or]It's calf leather, it's full of cash, and it's not yours.[line break][line break]You should probably find a way to give it back.[stopping][end if][if wallet is open]Immediately visible are Cartwright's driver's license and other cards (credit[businesscardcondition]). A generous brick of cash bursts forth from the innards.[end if]". Understand "wallet" as the wallet. The wallet can be open or closed. The wallet is openable. Driver's license, credit cards, cash, and Cartwright's business card are inside the wallet.

To say businesscardcondition:
	say "[if Cartwright's business card is inside the wallet], business[end if]"

Church pew pencils are a stealable with the printed name "church pew pencils". The player carries church pew pencils. The description of church pew pencils is "There wasn't much to steal at the funeral, so your compulsion forced you to grab these. You've got at least ten of them."

The hymnal is a stealable. The player carries the hymnal. The description of the hymnal is "The church where the funeral was held has a lot of these, but you still feel bad for taking it.[line break][line break]On the plus side, you'll never forget the words to 'O, For A Thousand Tongues To Sing.'"

Understand "check inventory" as a mistake ("There's no need to be so formal! They're your pockets, after all. Try 'inventory' or 'inv' or my personal favorite, 'i.'").

Understand "xyzzy" as a mistake ("A hollow voice fondly calls you a 'dumbass.' It reminds you of Uncle Clifton.").

[Stuff for inside wallet]

Driver's license is wallcontents. Driver's license is undescribed. The description of driver's license is "A typical driver's license, issued by the state to a Cartwright G. Fenwick.[first time]His pale face offers you a phlegmatic stare from a square on the card, and his dark eyes meet yours, as if in accusation.[only][line break][line break][one of]The card[or]It[stopping] apparently expires in about a month." The printed name of the driver's license is "Cartwright's driver's license". Understand "license", "licence", "driver's license", "driver's licence", "drivers license", "drivers licence", "driver license", "driver licence", "Cartwright's license", "Cartwright's licence", "Cartwright's drivers license", "Cartwright's drivers licence", "Cartwright's driver license", or "Cartwright's driver licence" as the driver's license.

Credit cards is wallcontents. Credit cards is undescribed. Credit cards has the printed name "Cartwright's credit cards". The description of credit cards is "Cartwright seems to collect credit cards the way 90s kids collect pogs. Visa, Mastercard, Amex, he's got [apostrophe]em all. No limits." Understand "Cartwright's credit cards", "Cartwright's credit card", "credit cards", "credit card", "card", or "credit" as the credit cards.

Cash is wallcontents. Cash is undescribed. Cash has the printed name "Cartwright's cash". The description of cash is "[one of]A huge wad of money. Greenbacks, bones, simoleons, sawbucks, benjamins, what have you. Stacks of dead presidents.[line break][line break]Actually, right now most of his bills are Canadian. Before the funeral you overheard him talking Anne's ear off about Banff, so you guess he must've taken a vacation.[or]A good few thousand, mostly in Canadian bills.[stopping]". Understand "cash", "Cartwright's cash", "money", "bill", "bills", "dollars", "dollar", "greenbacks", "greenback", "loonie", "loonies", "bones", "simoleons", "sawbucks", "benjamin", "benjamins", "dead presidents", "moolah", "bucks", "stacks", "currency", or "cheddar" as the cash.

Business card is undescribed. Business card has the printed name "Cartwright's business card". The description of business card is "[one of][businesscardascii][or]It reads: CARTWRIGHT G FENWICK, ESQ[if screenreader_on is true]UIRE[end if]. Estate Planning. 326 East Ave, Suite 105. New Canaan, CT 06840.[line break][line break][stopping]In person, the design is immaculate. Patrick Bateman would lose his marbles over this card." Understand "card", "business card", "Cartwright's card" or "Cartwright's business card" as business card.

To say businesscardascii:
	say "[if screenreader_on is false]It looks something like this:[line break][fixed letter spacing] ------------------------------------ [line break]| 203-555-9142                       |[line break]|                                    |[line break]|                                    |[line break]|                                    |[line break]|     CARTWRIGHT G FENWICK, ESQ.     |[line break]|          Estate Planning           |[line break]|                                    |[line break]|                                    |[line break]|            326 East Ave, Suite 105 |[line break]|               New Canaan, CT 06840 |[line break] ------------------------------------ [variable letter spacing][end if][if screenreader_on is true]It reads: 203-555-9142. CARTWRIGHT G FENWICK, ESQUIRE. Estate Planning. 326 East Ave, Suite 105. New Canaan, CT 06840.[end if][line break][line break]"

After taking the business card:
	say "Taken.[first time][line break]Hey, you never know.[only]".

The description of the player is "Your discomfort with your formal attire[unicode 8212]and the context you're wearing it in[unicode 8212]is pretty obvious."

Part I - Get Upstairs

[n.b.: parts don't actually show up in the game, they're just to make the code easier to keep track of]

[Vestibule]

Vestibule is a room. The description of the vestibule is "The entranceway of Uncle Clifton's imposing mansion, the anteroom of the Hall to the north. On your left, a weathered wooden umbrella stand sits[if umbrella is unheld], one lonely umbrella inside it[end if]. Next to it, a table has been set up for the condolence book, which lies open[if pen is unheld], and a pen[end if]."

[full old description:
Vestibule is a room. The description of the vestibule is "The entranceway of Uncle Clifton's imposing mansion, the anteroom of the Hall to the north. On your left, a weathered wooden umbrella stand sits[if umbrella is unheld], one lonely umbrella inside it[end if]. Next to it, a table has been set up for the condolence book[if condolence book is held], which is missing[end if][if condolence book is unheld], which lies open[end if][if pen is unheld], and a pen[end if]."]

The umbrella_stand is a container and scenery in the vestibule. The umbrella_stand has the printed name "umbrella stand". Understand "umbrella stand" as the umbrella_stand. The umbrella is inside the umbrella_stand. The umbrella is stealable. The description of the umbrella_stand is "The weathered wooden umbrella stand [if umbrella is unheld]has an old forgotten umbrella in it.[end if][if umbrella is held]is umbrellaless.[end if]". The description of the umbrella is "Shabby, old, a faded shade of purple[first time][unicode 8212]it's as weathered as the umbrella stand.[line break][line break]Okay, to be fair, that's kind of expected for an umbrella[only].". Instead of opening the umbrella, say "Isn't your luck bad enough already?" Instead of closing the umbrella, say "It's already closed."

There is a table in the vestibule. The pen is on top of the table. The condolence book is on top of the table. The pen is stealable. The condolence book is scenery. The table is scenery.

The description of the table is "[first time]Hastily dragged here from a different room in the house. [only]Most people would just use a folding table, but you're pretty sure this is an antique.[if nails_examined is true][line break][line break]An antique that they've driven nails through.[end if]"

The description of the condolence book is "[first time]Not to sound crass, but do the bereaved ever actually read these? It's bad enough having people come up to you in person to give a tactless 'he's in a better place now', you can't imagine having a written record of that too.[line break][line break][only]Probably better not to subject yourself to that.[first time][line break][line break]On closer inspection, you notice the book has been nailed to the table at all four corners.[only][condolence_signature]"

To say condolence_signature:
	say "[if we have signed the condolence book][line break][line break]You already know what the current page looks like, anyway. At the bottom it says:[line break][line break]'Clifton showed a great deal of kindness to me, and I will never forget him. But I barely knew him. I can't imagine what you must be going through. I wish you peace.'[line break][line break]followed by your signature.[end if]"
	
Nails are scenery in the Vestibule. The description of the nails is "Understandable, but still insulting." Understand "corners" as nails.

After examining the condolence book for the first time:
	now nails_examined is true.
	
Instead of examining the nails for the first time:
	if nails_examined is false:
		say "You look at the nails, driven into the condolence book to keep it on the table.[if screenreader_on is true][sr_enter][end if]";
		wait for enter key;
		say "[line break]Wait, really?[if screenreader_on is true][sr_enter][end if]";
		wait for enter key;
		continue the action;
		now nails_examined is true.

The description of the pen is "It's an ordinary ballpoint pen: sleek, black, [if pen is held]demonstrably [end if]easy to palm."

After taking the pen:
	say "Taken.";
	if kleptomode is false:
		say "[line break]You should probably put this back once you're done with it, so other people can use it.".

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

The Hall is north of the vestibule. The description of Hall is "This great hall connects you to the rest of the house. To the southwest is the sitting room, where most of the family is. To the northwest, the kitchen. To the north is the bathroom, to the northeast the game room, the southeast, the library, and the south[first time], where you just came from,[only] is the vestibule. Near the bathroom, a stairway leads up to the second floor. Cartwright stands guard in front of it. Next to him, a hunting trophy also stands guard.[first time][line break][line break]Cedric and Bryce whisper about something. You can only make out something about an 'altar.' Or was that something being 'altered?'[line break][line break]When they see you, they quickly move to the game room.[only]"

[After deciding the scope of the player while the player is in the Hall:
	place the Vestibule in scope;
	place the Sitting Room in scope;
	place the Library in scope;
	place the Game Room in scope;
	place the Dining Room in scope;
	place the Kitchen in scope;
	place the Bathroom in scope.]

Instead of examining the Vestibule when the player is in the Hall, say "It looks smaller from here. Or maybe you're just farther away from it."

Instead of examining a first-floor room when the player is in the Hall, say "It'd be easier to see if you were inside it."
	
Cartwright is a mourner in the hall. The description of Cartwright is "[first time]You ever been in the same room as one of those rich fratty white guys? You know the type. Dominates every conversation with hurtful, overpersonal 'jokes' at the expense of his buddies, but as soon as they turn it back on him, he gets real quiet and real tense and everyone kind of changes the subject?[line break][line break]Yeah, Cartwright is that guy as an old man.[line break][line break]Towering, gray-haired. You think he's Uncle Clifton's brother? Maybe his cousin. Either way, his stature and his demeanor have the effect of making him intimidating, an effect which is only slightly diminished by your vague recollection that he is mildly allergic to a [italic type]comical[roman type] amount of things.[line break][line break][only]He seems annoyed with you. It might be because you stole his wallet." Cartwright is undescribed.

Instead of going up in the hall:
	say "Cartwright stops you in your tracks. He doesn't want you upstairs, and you know him just well enough to know he's not interested in any stories about a pocketwatch." instead.

Instead of giving a peanut butter canapé to Cartwright in the hall:
	say "In order to get past him, you give Cartwright[unicode 8212]a man whose allergies might be way more severe than you're aware of[unicode 8212]a common and potentially life-threatening allergen.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear screen;
	say "No. You don't. Obviously you don't.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "What is wrong with you?[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear screen;
	try looking.

[Differentthing is a stealable in the Hall. The description of the differentthing is "It's different." Differentthing is undescribed.]

The hunting trophy is a stealable in the Hall. The description of the hunting trophy is "A taxidermied gopher mounted on a polished wooden plaque. Its expression is decidedly harried."

[Sitting Room]

The Sitting Room is a first-floor room. The Sitting Room is southwest of the hall. The description of Sitting Room is "A crowd of family and friends share condolences and fond memories of Uncle Clifton, drink champagne, and eat the hors d'oeuvres that remain on their napkins. Dimia sits in the middle of it all, looking past you, a hard-to-read expression on her face. The couch is loaded down with stuff: a pack of cigarettes and its ashtray, balanced precariously; a clutch; a cardigan and a leather jacket, draped over the couch next to each other; an empty china plate; and a golden watch. A chess set sits to the side of the room, on a game table, and a forgotten champagne flute sits on top of it.[line break][line break]To the west, a door is open to the lawn, where the remaining hors d'oeuvres are laid out. [if lawn is unvisited]Barely anyone's out there.[end if][if lawn is visited]Hildegard is out there.[end if]"

The game table is scenery in the Sitting Room. The chess set is on the game table. The champagne flute is on the game table.
The couch is scenery in the Sitting Room. The pack of cigarettes is on the couch. The ashtray is on the couch. The clutch is on the couch. The sweater is on the couch. The jacket is on the couch. The empty china plate is on the couch. The golden watch is on the couch. The description of the couch is "It's probably an antique."
The chess set is stealable. The description of the chess set is "A portable chessboard with small wooden chess pieces carved to resemble civil war soldiers. Both sides are modeled in the image of Union soldiers.[line break][line break]There’s a story there."
The pack of cigarettes is stealable. The description of the pack of cigarettes is "You look down at the half-empty pack of cigarettes. The weirdly sexually-charged camel mascot stares back at you through his Ray-Ban sunglasses."
The ashtray is stealable. The description of the ashtray is "Shallow yellow glass tray, currently empty."
The clutch is stealable. The description of the clutch is "Soft velvet, with pearl adornment on the handle. You don’t know who this clutch belongs to."
The sweater is stealable. The description of the sweater is "A thin black cardigan." Understand "cardigan" or "black cardigan" or "thin black cardigan" or "thin cardigan" as the sweater.
The jacket is stealable. The description of the jacket is "A plain black leather jacket with almost no wear or tear." Understand "leather jacket" or "black leather jacket" or "plain black leather jacket" or "plain leather jacket" as the jacket.
The champagne flute is stealable. The description of the champagne flute is "A thin glass tube on a thin glass stem." Understand "flute" as the champagne flute.
The empty china plate is stealable. The description of the empty china plate is "The last surviving remnant of Clifton’s favourite china set.  Very recently full of hors d’oeuvres. Currently littered with the debris of said hors d’oeuvres."
The golden watch is stealable. The description of the golden watch is "This is Bryce’s chunky golden watch. It does not appear to be working." Understand "gold watch" or "watch" as the golden watch.
The napkins are scenery in the Sitting Room. The description of the napkins is "With hors d'oeuvres inevitably come napkins. People don't exactly know what to do with them, so they just sort of hold them.[line break][line break]You're not stealing those, even compulsively.".
The hors d'oeuvre_sitting is scenery in the Sitting room. The hors d'oeuvre_sitting has the printed name "hors d'oeuvre". Understand "hors d'oeuvre" or "hors doeuvre" or "hors doevre" or "horse divorce" as the hors d'oeuvre_sitting. The description of the hors d'oeuvre_sitting is "Hors d'oeuvres sit on napkins in laps, protected from anyone who might accidentally steal them."
The crowd is scenery in the Sitting Room. The description of the crowd is "They pass around anecdotes as they pass around champagne.". Understand "family", "friends", "family and friends", or "crowd of family and friends" as the crowd.

Dimia is a mourner in the Sitting Room. Dimia is undescribed. The description of Dimia is "[first time]Uncle Clifton's daughter. Her expression is inscrutable, but it seems to suggest a vague notion of sorrow.[line break][line break][only]Dimia doesn't like you. But then, almost nobody in the family does."


[scope lawn]

[Lawn]
The Lawn is west of the sitting room. The description of the Lawn is "A clearing full of lush green grass. A table is set up for hors d'oeuvres[if an unheld peanut butter canapé is visible and the player is in the Lawn] which, at this point, just means peanut butter canapés[otherwise], but now it's empty[end if]. Standing near the table is Hildegard, a rare friendly face."

The lawn table is in the Lawn. The lawn table is undescribed. The peanut butter canapés are on the lawn table.

The description of the lawn table is "It's just a table for food."



A peanut butter canapé is a kind of stealable.  100 peanut butter canapés are on the lawn table. Peanut butter canapés are undescribed. Peanut butter canapés are edible. Understand "canapes" or "canape" or "peanut canapes" or "peanut canape" or "peanut butter canapes" or "peanut butter canape" or "hors doeuvre" or "hors d'oeuvre" or "horse divorce" as the peanut butter canapés.

Instead of examining a peanut butter canapé, say "Delicious finger food."

After taking a peanut butter canapé:
	if kleptomode is false:
		say "Hey, it's not stealing if it's free food.".

Hildegard is a person in the Lawn. Hildegard is undescribed. The description of Hildegard is "[first time]Anne's daughter. You've known each other growing up, since she's only a few years younger than you. She tends to get overstimulated at social gatherings, so you'll often find her somewhere quieter.[line break][line break][only]She's the only person other than Uncle Clifton who seems to understand what you're going through. She's covered for you in a few tense situations, pretending to 'find' things you unintentionally stole, as long as you gave the thing to her."

Instead of giving the wallet to Hildegard:
	now the wallet is nowhere;
	now wallet_given is true.

[scope sitting room]

[Library]

The Library is a first-floor room. The description of the Library is "Library." The library_door is a locked door with the printed name "Library door". Understand "locked door", "library door", "door to the library", and "door to library" as the library_door. The library_door is undescribed. The library_door is southeast of the hall and northwest of the library. The description of the library_door is "Normally, this door leads to one of your favorite rooms in the house. Uncle Clifton kept a terrific mix of old newspapers, new science texts, gothic horror...you name it.[line break][line break]Unfortunately, the door is locked."

[Game Room]

The Game Room is a first-floor room. The Game Room is northeast of the hall. The description of the Game Room is "The bulk of the Game Room is taken up by a snooker table, which holds a variety of snooker balls and a handful of darts. On the far wall hangs a dartboard, a mounted fish, a bear head, and a deer head. Theres a bar at the end of the room. On top of the bar there are several bottles of alcohol: vodka, gin, rum, whiskey, scotch, sherry, and drambuie. The hall is to the southwest.[line break][line break]Cedric and Bryce sip scotch near the bar."

Cedric is a mourner in the Game Room. Cedric is undescribed. The description of Cedric is "He's genial enough, but it's mostly superficial. He's drinking scotch with Bryce."

Bryce is a mourner in the Game Room. Bryce is undescribed. The description of Bryce is "A clumsy coward, but a whiz at snooker. Not that you've played with him. He's drinking scotch with Cedric."


The deer head is a stealable in the Game Room. The description of the deer head is "You guess this is why they call it the [italic type]game[roman type] room.[line break][line break]The decapitated deer glares at you."
The bear head is a stealable in the Game Room. The description of the bear head is "Even mounted on a wooden plaque, this bear is still intimidating."
The mounted fish is a stealable in the Game Room. The description of the mounted fish is "This fish looks depressed. To the degree that any fish can look depressed."
The dartboard is scenery in the Game Room. The description of the dartboard is "Multicoloured concentric circles are segmented into sections for darts to land. Holes cover the wall around the dartboard from where Uncle Clifton played darts while drunk. Those were always scary games."
The snooker table is scenery in the Game room. The description of the snooker table is "You remember when you could barely see over the edge of this table. The snooker table is littered with snooker balls of various colours, truly the game of the rich and out of touch. But at least it was less dangerous than darts.".
darts are a stealable in the Game Room. The Description of darts is "These darts are probably made out of some real endangerd peacock feathers or something."
Instead of touching the snooker table:
	say "You felt the felt.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Actually the fabric on the table is baize, a coarse woollen cloth, similar in texture to felt, but more durable.".

The vodka is a stealable in the Game Room. The description of the vodka is "You've never been much of a drinker."
The gin is a stealable in the Game Room. The description of the gin is "You've never been much of a drinker."
The rum is a stealable in the Game Room. The description of the rum is "You've never been much of a drinker."
The whiskey is a stealable in the Game Room. The description of the whiskey is "You've never been much of a drinker."
The scotch is a stealable in the Game Room. The description of the scotch is "You've never been much of a drinker."
The sherry is a stealable in the Game Room. The description of the sherry is "You've never been much of a drinker."
The drambuie is a stealable in the Game Room. The description of the drambuie is "You've never been much of a drinker."

The bar is scenery in the Game Room. The description of the bar is "On top of the bar there are several bottles of alcohol: vodka, gin, rum, whiskey, scotch, sherry, and drambuie."

Instead of drinking the vodka:
	say "You've never been much of a drinker.".
Instead of smelling the vodka:
	say "You've never been much of a drinker. The smell makes you feel sick.".
Instead of drinking the gin:
	say "You've never been much of a drinker.".
Instead of smelling the gin:
	say "You've never been much of a drinker. The smell makes you feel sick.".
Instead of drinking the rum:
	say "You've never been much of a drinker.".
Instead of smelling the rum:
	say "You've never been much of a drinker. The smell makes you feel sick.".
Instead of drinking the whiskey:
	say "You've never been much of a drinker.".
Instead of smelling the whiskey:
	say "You've never been much of a drinker. The smell makes you feel sick.".
Instead of drinking the scotch:
	say "You've never been much of a drinker.".
Instead of smelling the scotch:
	say "You've never been much of a drinker. The smell makes you feel sick.".
Instead of drinking the sherry:
	say "You've never been much of a drinker.".
Instead of smelling the sherry:
	say "You've never been much of a drinker. The smell makes you feel sick.".
Instead of drinking the drambuie:
	say "You've never been much of a drinker. ".
Instead of smelling the drambuie:
	say "You've never been much of a drinker. The smell makes you feel sick.".

A snookerball is a kind of stealable. A red snooker ball is a kind of snookerball. A yellow snooker ball is a kind of snookerball. A green snooker ball is a kind of snookerball. A brown snooker ball is a kind of snookerball. A blue snooker ball is a kind of snookerball. A pink snooker ball is a kind of snookerball. A black snooker ball is a kind of snookerball. A cue ball is a kind of snookerball.

There are 15 red snooker balls in the Game Room. There are 6 yellow snooker balls in the Game Room. There are 6 green snooker balls in the Game Room. There are 6 brown snooker balls in the Game Room. There are 6 blue snooker balls in the Game Room. There are 6 pink snooker balls in the Game Room. There are 6 black snooker balls in the Game Room. There is 1 cue ball in the Game Room.
The description of a  red snooker ball is "It's red."
The description of a  yellow snooker ball is "It's yellow."
The description of a  green snooker ball is "It's green."
The description of a  brown snooker ball is "It's brown."
The description of a  blue snooker ball is "It's blue."
The description of a  pink snooker ball is "It's pink."
The description of a  black snooker ball is "It's black."
The description of a  cue ball is "It's white."

[Kitchen]

The Kitchen is a first-floor room. The Kitchen is northwest of the hall. The description of the kitchen is "The kitchen is mostly filled with a small militia of busy caterers. They bustle around not paying you any attention.[line break][line break]On the plus side they probably won't care if you take anything.[line break][line break]Unfortunately they are currently occupying three quarters of the room.[line break][line break]You can reach the pantry to the north of the kitchen or head into the dining room to the south. You cannot reach the fridge[if an unheld stealable is visible and the player is in the Kitchen]. The unattended counter in this corner of the room holds [list of visible unheld stealables with indefinite articles][end if].[if rowan is in the kitchen][line break][line break]Rowan searches the kitchen for something to eat.[end if]"

[a delicate tea cup, an empty bottle, a pocket-sized recipe book, and some loose grapes]

The counter is scenery in The Kitchen. The delicate tea cup is on the counter. Some loose grapes are on the counter. The empty bottle is on the counter. The recipe book is on the counter.
caterers are scenery in The Kitchen. The description of caterers is "They crowd most of the room like a hivemind, moving in synchronized movement in a quasireligious fervor, only speaking to each other in loud bursts of coded language.[line break][line break]They completely ignore you.[first time][line break][line break]Which is something of a relief.[only]".
The fridge is scenery in The Kitchen. The description of the fridge is "Large and bursting with all kinds of food and beverages. It is hopelessly out of your reach."

The delicate tea cup is a stealable. The description of the delicate tea cup is "This dainty tea cup seems incredibly delicate. It is off-white and dusty rose with a fine, intricate merry-go-round design. Its frail, breakable form is an almost tactless reminder of the fragility of life. Like a diviner consulting tea dregs in exactly such a cup, you can see in the gossamer frame of this chalice the future condition of yourself and every other living creature. And the present condition of Uncle Clifton."
Understand "tea cup" as delicate tea cup.
loose grapes are stealable. The description of loose grapes is "If you close your eyes, you can pretend these are eyeballs. If that’s something you’re into."
Understand "grapes" as the loose grapes.
The empty bottle is a stealable. The description of the empty bottle is "A sleek glass bottle full to the brim with delicious air."
Understand "bottle" as the empty bottle.
Understand "cookbook" as the recipe book.
The recipe book is a stealable. The recipe book is openable and closed. The description of the recipe book is "[one of]A pocket-sized guide to culinary and confectionery competence, a tome for instruction in mysterious arts.[or]A not-so-brand new pocket-sized cookbook.[stopping][if the recipe book is open] Since it's a pocket edition, they've tried to cram a bunch of recipes onto each page. [recipelist][end if]"

To say recipelist:
	say "[one of]You spot one for Duck a l'Orange, which is a little old-fashioned.[or]You spot one for Clams Casino, which is about as old-fashioned as the duck.[or]You spot one for peanut butter canapes, a basic hors d'oeuvre.[if the player has visited the Lawn] The black-and-white photo for them looks vaguely familiar.[end if][or]You spot one for a nice mushroom risotto.[or]You spot one for an Old-Fashioned. You know, the cocktail.[or]You spot one for...tomato aspic? [line break][line break]Seriously, when was this book written?[or]You spot one that might look interesting, but your eyes glaze over. You've read enough recipes today.[or] [stopping]"

Instead of smelling loose grapes:
	say "If you close your eyes you can pretend you are smelling eyeballs. If that’s something you’re into.";
	now the grapes are sniffed.
Instead of tasting loose grapes:
	say "[if the loose grapes are seen][eyeball_description][grape_description][otherwise if the loose grapes are felt][eyeball_description][grape_description][otherwise if the loose grapes are sniffed][eyeball_description][grape_description][otherwise if the loose grapes are sampled][eyeball_description][grape_description][otherwise]Y[grape_description][end if]";
	now the grapes are sampled.
Instead of drinking the empty bottle:
	say "You gulp down a fresh mouthful of air. Refreshing!".
Instead of tasting the empty bottle:
	say "You gulp down a fresh mouthful of air. Refreshing!".
Instead of tasting the delicate tea cup:
	say "Careful! You’ll break it!".
Instead of touching the delicate tea cup:
	say "Careful! You’ll break it!".
Instead of smelling the delicate tea cup:
	say "Careful! You’ll break it!".
Instead of eating loose grapes:
	say "[if the loose grapes are seen][eyeball_description][grape_description][otherwise if the loose grapes are felt][eyeball_description][grape_description][otherwise if the loose grapes are sniffed][eyeball_description][grape_description][otherwise if the loose grapes are sampled][eyeball_description][grape_description][otherwise]Y[grape_description][end if]";
	now the grapes are sampled.
Instead of touching loose grapes:
	say "You close your eyes and touch the grapes.[line break][if the loose grapes are seen][grapes_expected1][otherwise if the loose grapes are sampled][grapes_expected2][end if][line break]They feel vaguely like eyeballs.";
	now the grapes are felt.
	
To say grape_description:
	say "ou've never much cared for grapes. The skin's unpleasant, and so is the texture of the inside bit."
	
To say eyeball_description:
	say "You aren’t in the mood for eyeballs.[line break][line break]More seriously, y".
	
To say grapes_expected1:
	say "[first time][line break] It's just as you thought.[line break][only]".
	
To say grapes_expected2:
	say "[first time][line break] It's just as you thought. [line break][only]".
[seen, felt, sniffed, sampled]
	
Before going north in the Dining Room:
	now kitchen_visited is true.
	
Before going northwest in the Hall:
	now kitchen_visited is true.
	
Before going north in the Kitchen:
	say "You close the pantry door behind you."
	
Before going south in the Pantry:
	say "You open the pantry door, and leave."

[scope pantry]

[Pantry]

The Pantry is north of the Kitchen. The description of the Pantry is "A dark and mostly empty pantry. You can just fit yourself comfortably inside it with the door closed[if an unheld stealable is visible and the player is in the Pantry]. On the dusty shelf, at eye-level, you can see [list of visible unheld stealables with indefinite articles][otherwise]. The dusty shelf is empty, clean imprints showing where the stuff you stole used to sit[end if]. The kitchen (to the south) is the only exit."

[a can of beans, a can of corn, a mystery can, and a key]

The can of beans is a stealable in the Pantry. The description of the can of beans is "Like most cans, this metal tube is opaque and you must trust, for now, in the veracity of the label's claim that it contains beans."
The can of corn is a stealable in the Pantry. The description of the can of corn is "The verdant colossus on the label is very muscular, selling you effectively on the ameliorating health benefits of regular vegetable consumption. His smile makes you feel funny."
The mystery can is a stealable in the Pantry. The description of the mystery can is "The label’s long worn off, and what you can make out looks like branding from about fifty years ago.  You’ve offered to pitch it more than once, but Uncle Clifton always kept it around. For...sentimental reasons? You guess?"
The key is a stealable in the Pantry. The description of the key is "Mysterious, heavy, bronze key. Begging to be picked up."

Instead of smelling the can of beans:
	say "Tinny.".
Instead of tasting the can of beans:
	say "Tinny.".
Instead of smelling the can of corn:
	say "Tinny.".
Instead of tasting the can of corn:
	say "Tinny.".
Instead of smelling the mystery can:
	say "Mysterious...".
Instead of tasting the mystery can:
	say "Mysterious...".
Instead of eating the can of beans:
	say "You gnaw on the metal can, but to no avail.".
Instead of eating the can of corn:
	say "You gnaw on the metal can, but to no avail.".
Instead of eating the mystery can:
	say "You gnaw on the metal can, but to no avail.".
Instead of opening the can of beans:
	say "You gnaw on the metal can, but to no avail.".
Instead of opening the can of corn:
	say "You gnaw on the metal can, but to no avail.".
Instead of opening the mystery can:
	say "You gnaw on the metal can, but to no avail.".


[implement later?]
[Dining Room]

The Dining Room is a first-floor room. The Dining Room is south of the Kitchen, west of the Hall, and north of the Sitting Room. The description of the Dining Room is "There is a china cabinet in the corner and a long oaken dining table with a large centerpiece and ten placecards set around the table. [line break][line break]There is no placecard for you. The kitchen is to the north. The sitting room is to the south.[line break][line break]Anne sits at the table with her head in her hands."

Anne is a mourner in the Dining Room. Anne is undescribed. The description of Anne is "Hildegard's mom. She looks exhausted. She doesn't look thrilled to see you."

The china cabinet is scenery in the Dining Room. The description of the china cabinet is "A tall wooden cabinet. Through the glass panels in the cabinet doors, you can see an absurdly expensive collection of fancy, mostly unused fine china."
Understand "cabinet" as the china cabinet.
Instead of opening the china cabinet:
	say "You pull on the handle and the doors rattle alarmingly, but remain closed. The china locked safely inside.".
The centerpiece is scenery in the Dining Room. The description of the centerpiece is "The centerpiece is a large ornate ice sculpture of Uncle Clifton holding his hands towards you magnanimously. It's already starting to melt."
The dining table is scenery in the Dining Room. The description of the dining table is "The centerpiece takes up alot of room on the table but you can see the ten placecards:[line break][line break]Dane's placecard[line break]Anne's placecard[line break]Rowan's placecard[line break]Hildegard's placecard[line break]Dimia's placecard[line break]Beatrix's placecard[line break]Bryce's placecard[line break]Cartwright's placecard[line break]Cedric's placecard[line break]Edmund's placecard."


A placecard is a kind of stealable.

placecard1 is a placecard in the Dining room. The description of placecard1 is "It reads: Dane Fenwick.". The printed name of placecard1 is "Dane's placecard". Understand "Dane's placecard" as placecard1. Understand "Dane's" as placecard1.

placecard2 is a placecard in the Dining room. The description of placecard2 is "It reads: Anne Chaucer Fenwick.". The printed name of placecard2 is "Anne's placecard". Understand "Anne's placecard" as placecard2. Understand "Anne's" as placecard2.

placecard3 is a placecard in the Dining room. The description of placecard3 is "It reads: Rowan Writingham.". The printed name of placecard3 is "Rowan's placecard". Understand "Rowan's placecard" as placecard3. Understand "Rowan's" as placecard3.

placecard4 is a placecard in the Dining room. The description of placecard4 is "It reads: Hildegard Fenwick.". The printed name of placecard4 is "Hildegard's placecard". Understand "Hildegard's placecard" as placecard4. Understand "Hildegard's" as placecard4.

placecard5 is a placecard in the Dining room. The description of placecard5 is "It reads: Dimia Fenwick.". The printed name of placecard5 is "Dimia's placecard". Understand "Dimia's placecard" as placecard5. Understand "Dimia's" as placecard5.

placecard6 is a placecard in the Dining room. The description of placecard6 is "It reads: Beatrix Cornwallis-Fenwick.". The printed name of placecard6 is "Beatrix's placecard". Understand "Beatrix's placecard" as placecard6. Understand "Beatrix's" as placecard6.

placecard7 is a placecard in the Dining room. The description of placecard7 is "It reads: Bryce Fenwick.". The printed name of placecard7 is "Bryce's placecard". Understand "Bryce's placecard" as placecard7. Understand "Bryce's" as placecard7.

placecard8 is a placecard in the Dining room. The description of placecard8 is "It reads: Cartwright Fenwick.". The printed name of the placecard8 is "Cartwright's placecard". Understand "Cartwright's placecard" as placecard8. 

placecard9 is a placecard in the Dining room. The description of placecard9 is "It reads: Cedric William Fenwick.". The printed name of placecard9 is "Cedric's placecard". Understand "Cedric's placecard" as placecard9. Understand "Cedric's" as placecard9.

placecard10 is a placecard in the Dining room. The description of placecard10 is "It reads: Edmund Fenwick.". The printed name of placecard10 is "Edmund's placecard". Understand "Edmunds's placecard" as placecard10 . Understand "Edmund's" as placecard10 .

[Bathroom]

The Bathroom is a first-floor room. The Bathroom is north of the Hall. The description of the Bathroom is "A small but opulent bathroom[if an unheld sinkthing is visible and the player is in the Bathroom]. By the sink you can see [list of visible unheld sinkthings with indefinite articles][end if][if an unheld toiletthing is visible and the player is in the Bathroom]. There's [list of visible unheld toiletthings with indefinite articles] at the foot of the toilet[end if][if an unheld towelthing is visible and the player is in the Bathroom]. Slung over the towel rack [are] [list of visible unheld towelthings with indefinite articles][otherwise]. The towel rack is empty[end if]. The only exit is back south into the hall.".

The toilet is scenery in the Bathroom. "That's a toilet, alright."
The sink is scenery in the Bathroom. The description of the sink is "Smooth marble countertop and a sunken sink with ivory taps."

A sinkthing is a kind of stealable.

A toiletthing is a kind of stealable.

A towelthing is a kind of stealable.

The soap is a sinkthing in the Bathroom. The description of the soap is "A slippery ovoid bar of green soap.". The printed name of the soap is "bar of soap". 
The roll of toilet paper is a sinkthing in the Bathroom. The description of the roll of toilet paper is "Triple ply. Very soft. Very expensive.".
Some fancy towels are towelthing. Some fancy towels are in the Bathroom. The description of the fancy towels is "Clean black towels with 'C. F.' embroidered on the corner in gold thread, ensuring these towels are easily identifiable in case of theft." Understand "towels" as fancy towels. Understand "towel" as fancy towels. Understand "fancy towel" as fancy towels.
The plunger is a toiletthing in the Bathroom. The description of the plunger is "When one uses triple ply toilet paper, one must expect certain results.". 
lotion is a sinkthing in the Bathroom. The description of lotion is "A small, travel-size bottle of skin lotion."
The glass eye is a sinkthing in the Bathroom. The description of the glass eye is "You don’t know anyone who lived in this house who is missing an eye …?"
The flashlight is a toiletthing in the Bathroom. The description of the flashlight is "Thin and hefty, the lack of batteries make this flashlight more useful as a bludgeoning weapon."
The ostentatious scarf is a towelthing in the Bathroom. The description of the ostentatious scarf is "[italic type]'It's truly truly outrageous[line break]truly truly truly outrageous.'[roman type][line break][line break]-Jem and The Holograms, [italic type]Truly Outrageous[roman type]." Understand "scarf" as the ostentatious scarf.
sunglasses are a sinkthing in the Bathroom. The description of sunglasses is "Dark aviator sunglasses. They'd go well with a cowboy hat." Understand "aviator sunglasses" as sunglasses.

The towel rack is scenery in the Bathroom. The description of the towel rack is "Made of ornate brass for the sole purpose of holding hand towels."

Instead of smelling the soap:
	say "Smells like irish spring. Which is to say it smells soapy.".
Instead of touching the roll of toilet paper:
	say "Ultra Soft. Best for Bear Bottoms.".
Instead of drinking the lotion:
	say "You would love to drink this soothing lotion but you can’t seem to get it open.".
Instead of opening the lotion:
	say "You would love to open this soothing lotion but you can’t seem to get it open.".


[The Small Hallway is north of the hall.]


Part II - You're Upstairs

The Upstairs Landing is up from the Hall.

The Attic is up from the Upstairs Landing.

Instead of going up in the Upstairs Landing, say "You'd really rather not. This is a nice house, but it's still an old house, and the attic is unfinished. Who knows how many rotten boards are up there?"

The Upstairs Balcony_north is a room with printed name "Upstairs Balcony (north end)". The Upstairs Balcony_north is west of the Upstairs Landing.

Guest_door is east of Guest Bedroom and west of the Upstairs Balcony_north. Guest_door is a locked door with the printed name "Guest bedroom door". Understand "Guest bedroom" or "Guest bedroom door" as Guest_door.

Dimia_door is east of Dimia's Bedroom and southwest of the Upstairs Balcony_north. Dimia_door is a locked door with the printed name "Dimia's bedroom door". Understand "Dimia's bedroom" or "Dimia's bedroom door" as Dimia_door.

The Upstairs Balcony_south is a room with printed name "Upstairs Balcony (south end)". The Upstairs Balcony_south is south of the Upstairs Balcony_north.

Master_door is east of the Master Bedroom and northwest of the Upstairs Balcony_south. Master_door is a locked door with the printed name "Master bedroom door". Understand "Master bedroom" or "Master bedroom door" as the Master_door.

Uncle Clifton's Study is west of the Upstairs Balcony_south. The description of Uncle Clifton's Study is "You know this room very well, but you're so focused on one thing you can barely notice the partners desk it's sitting on, or the papers it's sitting on top of:[line break][line break]The silver pocketwatch."

The silver pocketwatch is in Uncle Clifton's Study. The description of the silver pocketwatch is "The one thing Uncle Clifton promised to you. It's beautiful. On the inside, the hour and minute hand point at roman numerals. On the outside, gold accents circumscribe a pair of initials, also in gold: C.F.[first time][line break][line break]Either Uncle Clifton commissioned this watch, or he got very lucky in an antique shop.[only]". The silver pocketwatch is undescribed. Understand "watch" or "pocket watch" as the silver pocketwatch.

After taking the silver pocketwatch:
	if screenreader_on is true:
		say "[bracket]Cutscene begins.[close bracket][line break][line break]";
	say "You grab the pocketwatch, not in an act of compulsive theft, but as a statement of ownership.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear the screen;
	say "You take a moment of silence, to remember Uncle Clifton by.[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "The only sound is the muffled ticking of his pocketwatch in your pocket.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "With the moment of silence over, now you can leave this damn house.";
	now the papers are nowhere;
	now the original will is on the partners desk;
	now the doctored will is on the partners desk;
	now the letter opener is on the partners desk;
	now the description of the desk is "A partners desk, designed for two people to sit at. Uncle Clifton's rolling chair sits on one side, but there is no chair on the other.";
	now the description of Uncle Clifton's Study is "You know this room very well. The partners desk, given pride of place in the center of the room. The rolling chair behind it. [if the letter opener is unheld]The letter opener on the desk.[end if][line break][line break]Now that you're not singularly focused on the pocketwatch, you can see that the papers under it were...Uncle Clifton's will, and a will that looks almost just like it.";
	if screenreader_on is true:
		say "[bracket]Cutscene ends.[close bracket][line break][line break]";
	try looking.
	
Instead of putting, inserting, or dropping the silver pocketwatch, say "This is staying right in your pocket, where it belongs."

The partners desk is scenery in Uncle Clifton's Study. Understand "desk" as the partners desk. The papers are on the partners desk. The description of the partners desk is "It's a desk. You're more interested right now with what's on it."The description of the papers is "Some stacks of papers. It doesn't matter what they are. All that matters right now is the watch." The papers are undescribed.

The description of the letter opener is "Long, with a white-bone handle. Surprisingly sharp.". The letter opener is undescribed. Understand "knife" as the letter opener.

Instead of taking the letter opener during Gun Scene:
	say "Cartwright sees you reaching for the [if knife_disambiguation is true]letter opener[end if][if knife_disambiguation is false]knife[end if], and fires.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Maybe you shouldn't have brought a knife to a gun fight.[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	end the story saying "You have died".
	
Instead of giving the peanut butter canapé to Cartwright during Gun Scene:
	say "Cartwright's deathly allergic, but he shoots you before you get close.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Seriously, who brings a canapé to a gunfight?[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	end the story saying "You have died".
	
Instead of throwing the peanut butter canapé at Cartwright during Gun Scene:
	say "Cartwright's deathly allergic, but he's also a quick shot.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Seriously, who brings a canapé to a gunfight?[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	end the story saying "Cartwright has died, but so have you".
	
Instead of giving the silver pocketwatch to Cartwright during Gun Scene, say "It's what he wants, but 1. you get the sense that any false moves will send you to the same place as Uncle Clifton, and 2. you're taking this damn watch with you."

The rolling chair is scenery in Uncle Clifton's Study. Understand "chair" as the rolling chair. The description of the rolling chair is "An old leather rolling chair. Parts of it are peeling off, and friction on the seat over years of sitting has turned it from solid brown to a spiderweb of white.".

The original will has the printed name "original will". The original will is undescribed.

Understand "doctored will", "altered will", or "changed will" as the doctored will. The doctored will is undescribed.

Instead of taking the original will:
	try examining the original will instead.
	
Instead of taking the doctored will:
	try examining the doctored will instead.
	
Instead of examining the original will:
	if gun_start is false:
		now gun_start is true;
	otherwise:
		continue the action.
	
Instead of examining the doctored will:
	if gun_start is false:
		now gun_start is true;
	otherwise:
		continue the action.

Instead of going in Uncle Clifton's Study:
	say "There's something much more important in here.".


[A balcony extends to your west and then wraps around to the south end of the mansion. Its railing overlooks the Hall.]

[A little further down the balcony, to the southeast, is the something bedroom. south of here is the other end of the balcony.

North of here is the other end of the balcony ]

[[if the flashlight is held] attic description]

Wallet Scene is a scene. Wallet Scene begins when wallet_given is true. Wallet Scene ends when the player is in the Hall.

When Wallet Scene begins:
	say "Hildegard grins, taking the wallet.[line break][line break]She leans in conspiratorially. 'Go back to the hall, and I'll yell to Cartwright that I found his wallet.'";
	now the description of Hildegard is "Hildegard is a lot of things, but right now she's mostly waiting for you to go to the hall".
	
When Wallet Scene ends:
	now kleptomode is true;
	say "A muffled cry from the other room:[line break][line break]'Cartwright! I found your wallet!'[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Cartwright gives you a funny look before begrudgingly leaving his post by the stairs and heading into the sitting room.[line break][line break]'You found my wallet?'[line break][line break][if screenreader_on is true][sr_enter][end if]";
	now Cartwright is nowhere;
	wait for enter key;
	say "Now's your chance! You duck up the stairs and tiptoe over to Uncle Clifton's study.";
	now the player is in Uncle Clifton's Study.

Instead of attacking Cartwright during the Gun Scene:
	say "Violence isn't the answer to this one, but it should be. The problem is that this is a gun fight, and you haven't brought a gun.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Cartwright did.[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	end the story saying "You have died".
	
Instead of going during the Gun Scene:
	say "You move towards the door[line break][line break]";
	wait for enter key;
	say "Cartwright moves his pointer finger.[if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	end the story saying "You have died".
	
Stabbing is an action applying to one thing. Understand "stab [something]" as stabbing.

Instead of stabbing Cartwright:
	if gun_start is false:
		say "Even if you had a knife, stabbing people out of nowhere is generally considered both 'rude' and 'attempted murder.'[line break]";
	if gun_start is true:
		if the player carries the letter opener:
			try attacking Cartwright instead;
		otherwise:
			now knife_disambiguation is true;
			try taking the letter opener.

Gun Scene is a scene. Gun Scene begins when gun_start is true. Gun Scene ends when the time since Gun Scene began is 7 minutes.

When Gun Scene begins:
	say "You pick up both wills, one in each hand, weighing the implications.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	if screenreader_on is true:
		say "[bracket]Cutscene begins.[close bracket][if screenreader_on is true][sr_enter][end if]";
	now the player is carrying the original will;
	now the player is carrying the doctored will;
	wait for enter key;
	say "One will is definitely the original. The other is a decent fake.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You read through the wills at the same time. You can only find one change in the doctored will.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear screen;
	say "The line that bequeaths the pocketwatch to you has been removed.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	clear screen;
	say "His family gets a 750 fucking million dollar estate and they couldn't let you have one measly pocketwatch.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You sigh.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You hear the unmistakable [italic type]cli-cli-click[roman type] of a revolver hammer being pulled back.";
	now Cartwright is in Uncle Clifton's Study;
	now Cartwright is carrying the revolver;
	now the description of the player is "Other than the formal attire, you're wearing that panicked, flop-sweaty expression most people have when they get held at gunpoint.";
	now the description of Uncle Clifton's Study is "There's a rolling chair, [if letter opener is held]and [end if]a desk[if letter opener is held].[end if][if letter opener is unheld], and a letter opener.[end if][line break][line break]Oh also, Cartwright is standing in the doorway, brandishing a six-shooter at you.";
	now the description of Cartwright is "You know those old rich fratty white guys who hold people at gunpoint?[line break][line break]Yeah. Exactly.";
	now the description of the business card is "It's the business card of the guy who is currently holding you at gunpoint[if the business card is seen], and who also probably personally altered the will[end if].";
	try looking;
	if screenreader_on is true:
		say "[line break][bracket]Cutscene ends.[close bracket]".
	
Every turn during Gun Scene:
	say "[one of]Cartwright tells you how much he hates you, as if the gun wasn't an obvious reminder.[or]Cartwright uses the arm that isn't holding the gun to wipe sweat off his brow.[or]You wish he'd point that gun somewhere else.[or]You've gotta think of a way out of this.[or]Cartwright makes a snide remark about your kleptomania.[or]You need a miracle.[or]Cartwright brags about how good he is on the shooting range.[stopping][line break]";
	
When Gun Scene ends:
	say "> [bold type]take revolver[roman type][line break]You stuff the revolver in your pocket as surreptitiously as you can.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Wait.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "What?[if screenreader_on is true][sr_enter][end if]";
	now the player is carrying the revolver;
	now the indefinite article of the revolver is "your";
	now the description of the business card is "It's the business card of the guy you held at gunpoint, after he held you at gunpoint, which [if the business card is seen]doubly [end if]serves him right[if the business card is seen], seeing as he probably altered the will[end if].";
	now the description of the player is "Self-reflection would just dampen this high you're feeling. Probably best to just go with it.";
	wait for enter key;
	clear screen;
	if screenreader_on is true:
		say "[bracket]Cutscene begins.[close bracket][line break][line break]";
	say "You find yourself holding Cartwright at gunpoint. Waving the revolver in the direction of the desk chair until the scared bully sits down.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Your body moves without you, sprinting out of the room towards the stairs.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "Fuck this family.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You're taking everything that isn't nailed down.[if screenreader_on is true][sr_enter][end if]";
	wait for enter key.
	
Part III - Now Go Back Downstairs
	
Chase Scene Hall is a scene. Chase Scene Hall begins when Gun Scene ends. Chase Scene Hall ends when the time since Chase Scene Hall began is 2 minutes.

When Chase Scene Hall begins:
	say "Still not really in control of your feet, you run back the way you came, barrelling down the stairs.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You hear Cartwright yell 'THIEF!' and, after a moment's thought, 'WITH A GUN!'[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You see Edmund charging you.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You duck into the kitchen.";
	now the description of the kitchen is "The caterers sprint out of the room, because you're sprinting into it with a gun. Rowan freezes, a handful of ham in his hand. Then he bolts as well.";
	now the player is in the kitchen;
	let L be the list of visible unheld stealables;
	say "[if an unheld stealable is visible and the player is in the Kitchen]Here's a list of everything you can steal from the kitchen now: [L with indefinite articles].[end if]";
	say "[if an unheld stealable is visible and the player is in the Kitchen]Take all of it![end if]";
	if screenreader_on is true:
		say "[line break][line break][bracket]Cutscene ends.[close bracket]".
	
Instead of going during Chase Scene Hall:
	say "You have enough time to grab something before they catch up to you."
	
Before looking in the Kitchen during Chase Scene Hall:
	if kitchen_looked is false:
		let L be the list of visible unheld stealables;
		now the description of the kitchen is "This is what a busy kitchen would look like if everyone in it suddenly vanished.[line break][line break][if an unheld stealable is visible and the player is in the Kitchen]Try stealing stuff: [L with indefinite articles].[end if]";
		now kitchen_looked is true;
	if kitchen_looked is true:
		continue the action.
	
Chase Scene Dining is a scene. Chase Scene Dining begins when Chase Scene Hall ends. Chase Scene Dining ends when the time since Chase Scene Dining began is 2 minutes.

When Chase Scene Dining begins:
	say "Edmund finally catches up to you.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	say "You dodge him and run into the dining room.";
	now the description of the dining room is "The caterers have already fled. On her way out of the room, Anne flashes you a dirty look.";
	now the player is in the dining room;
	let L be the list of visible unheld stealables;
	say "Anyways, there's more things to steal: [L].";
	say "Take everything!".
	
Instead of going during Chase Scene Dining:
	if an unheld stealable is visible and the player is in the Dining Room:
		say "You have enough time to grab something before they catch up to you.";
	otherwise:
		say "Take a deep breath first.".
	
Before looking in the dining room during Chase Scene Dining:
	if dining_looked is false:
		let L be the list of visible unheld stealables;
		now the description of the dining room is "This room's about as empty as a dining room usually is when a dinner party isn't going on.[line break][line break][if an unheld stealable is visible and the player is in the Dining Room]Try stealing stuff: [L].[end if]";
		now dining_looked is true;
	if dining_looked is true:
		continue the action.
	
Chase Scene Sitting is a scene. Chase Scene Sitting begins when Chase Scene Dining ends. Chase Scene Sitting ends when the time since Chase Scene Dining began is 5 minutes.

When Chase Scene Sitting begins:
	say "Edmund catches up to you again, but the new, slippery loafers he's wearing finally get the best of him, and he faceplants into the dining room floor.[line break][line break]You run into the sitting room with extra time to spare.";
	now the description of the sitting room is "This room was crowded just a few minutes ago. It seems like the people who were in here took the door to the hall and then barricaded it. Cool.";
	now the player is in the sitting room;
	let L be the list of visible unheld stealables;
	say "Anyways, it's time to steal: [L with definite articles]. Take it all.".

Instead of going during Chase Scene Sitting:
	say "You have more than enough time."
	
Before looking in the sitting room during Chase Scene Dining:
	if sitting_looked is false:
		let L be the list of visible unheld stealables;
		now the description of the sitting room is "This room used to be packed full of rich mourners in black tailored suit jackets and coats. The jackets and coats are gone, and so are their owners.[line break][line break][if an unheld stealable is visible and the player is in the Sitting Room]Try stealing stuff: [L].[end if]";
		now sitting_looked is true;
	if sitting_looked is true:
		continue the action.
	
When Chase Scene Sitting ends:
	say "Probably best to quit while you're ahead.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	now the description of the lawn is "";
	say "You sprint out onto the lawn.";
	now the player is in the lawn;
	say "In the pandemonium, the hors d'oeuvres table was knocked over. Peanut butter canapés litter the grass beneath your feet, crunching as you run. Hildegard gives you a high five.[line break][line break][if screenreader_on is true][sr_enter][end if]";
	wait for enter key;
	now the left hand status line is "Your Car";
	say "You jump in your car. You speed off into the sunset, your silver pocketwatch in one hand and a goofy smile on your face.";
	end the story finally.
	

The revolver is a thing. The description of the revolver is "A series of intricate mechanisms designed specifically for killing.". Understand "gun" or "six shooter" or "six-shooter" as the revolver.

Rule for printing the name of the revolver while taking inventory:
	say "revolver[first time], now[only]".

Instead of putting, inserting, or dropping the original will, say "This is evidence. Or blackmail."

Instead of putting, inserting, or dropping the doctored will, say "This is evidence. Or blackmail."

The description of the original will is "Uncle Clifton's Last Will and Testament, last updated two years ago."

The description of the doctored will is "A petty fake by petty takers."

Intruding Mourner is a scene. Intruding Mourner begins when kitchen_visited is true. Intruding Mourner ends when the time since Intruding Mourner began is 12 minutes.

When Intruding Mourner ends:
	now Rowan is in the kitchen;
	if the player is in the kitchen:
		say "Rowan enters, searching for a snack.";
	if the player is in the pantry:
		say "Through the crack in the door, you see Rowan enter the kitchen, searching for a snack.".


Rowan is a mourner. Rowan is undescribed. The description of Rowan is "He's a college rower, so he spends a lot of time in the kitchen searching for protein. He'll probably be in here a while. He's ignoring you because he hasn't noticed you, but if he had, he'd still be ignoring you."
















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

[Instead of giving the peanut butter canapé to Cartwright in the hall:
	say "You give Cartwright[unicode 2014]a man whose allergies might be way more severe than you're aware of[unicode 2014]a common and potentially life-threatening allergen.[line break][line break]";
	wait for enter key;
	clear screen;
	say "No. You don't. Obviously you don't.[line break][line break]";
	wait for enter key;
	say "What is wrong with you?";
	wait for enter key;
	clear screen;
	try looking.

Another option when he has the gun on you: Don't bring a canapé to a gunfight.]

[Instead of attacking Cartwright:]

[He wasn't a good man [description of real estate holdings, slumlord, etc.] but for some reason he was kind to you.]

[later: put lawn in scope of sitting room and vice versa]

[Cartwright's gun is a asdfasdfsd. You only know that because Uncle Clifton hated the damn thing.]

[THIS IS A COMMENT, ENJOY ENJOY -your friendly neighborhood onion]