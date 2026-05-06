Locked = Cannot be changed/incredibly hard to change



obj\_inventory\_hireslot\_0 = adjust the actor inventory information

obj\_inventory\_itemslot\_1 = adjust the item inventory information

obj\_shop\_shop = adjust the prices in the shop

obj\_playermenu\_button = adjust the skill names



Player HP: 20 - Locked

Player TP: 10 - Locked



Max Item Amount: 9 - Locked



Heal from Day: 10



**Status Effects**

Stun - Cannot Attack that turn, for Player: skip to Defend - Locked

Poison - Take 2 damage on the start of your turn, always set for 3 turns - Locked

Deafen - Can only use Default Attack and Defend (+ Items) for that turn - Locked

Wet - Take 2 more damage from any damage that isn't 0, always set for 2 turns - Locked



**Enemies** (More powerful as list goes down - Locked?, also don't forget makeup enemies)



Rat:

* HP: 6
* DMG: 4



Dog in Car:

* HP: 8
* DMG: 3



Shield Guy:

* HP: 6
* DMG: 5
* Status: Stun - Locked



Thief Cat:

* HP: 6
* DMG: 2 x 2 - times 2 Locked
* Note: Steals an item on first hit, gives an item on defeat - Locked



Cyborg:

* HP: 6
* DMG: 12
* Note: Attacks every 2 turns - Locked



Detective Monkey:

* HP: 9
* DMG: 2 (Screech) or 2 x 3 (Bananas) - times 3 Locked
* Status: Deafen (Screech) or Poison (Bananas) - Locked



**Actors**



\[Player]



Default Attack - Clapperboard:

* TP Cost: 0
* DMG: 4
* Difficulty: 3 frames (hard) - Locked



Default Defend - Megaphone:

* TP Gain: 0
* Input Buffer: 20 (1/3 second)



\[Casting Agent]

* Price: $151



Identify:

* TP Cost: 2
* DMG: 6
* Difficulty: Easy
* Note: Shows the hit enemy's health - Locked



Prediction:

* TP Gain: 1
* Input Buffer: 40 (2/3 second)



\[Janitor]

* Price: $152



Sweeping:

* TP Cost: 3
* DMG: 8
* Difficulty: 4 frames (hard) - Locked
* Status: Wet - Locked



Cleanse:

* TP Gain: 1
* Input Buffer: 20 (1/3 second)
* Note: Can't gain status effects - Locked



\[Jane Wick]

* Price: $155



Falling Elbow:

* TP Cost: 5
* DMG: 10
* Difficulty: Press Space while Jane Wick is on screen falling (medium)



Gun:

* TP Cost: 5
* DMG: 1 x MASH for 60 frames (1 second) (hit all volley - Locked)



Bodyguard:

* TP Gain: 0
* Input Buffer: 20 (1/3 second)
* Note: Take 2 less damage from any source



\[Makeup Artist]

* Price: $153



Disguise:

* TP Cost: 5
* Note: Uses random enemy attack - Locked



Imitate:

* TP Gain: 3
* Note: Uses random defend skill - Locked



\[Boom Crew]

* Price: $154



Explosive Test:

* TP Cost: 5
* DMG: 6 to all (all - Locked)
* Difficulty: Easy



Landmine:

* TP Gain: 4
* Input Buffer: 0 (always get hit) - Locked
* Note: Damage taken will also be dealt to attacker - Locked



Blast Shield:

* TP Gain: 1
* Input Buffer: 25 (5/12 second)
* Note: Damage taken cannot exceed 3 (number is in obj\_combat\_player)



**Items**



Corporate Drink:

* Price: $92
* Heal: 10 HP



Coffee:

* Price: $91
* Heal: 5 TP



Cleaning Rag:

* Price: $95
* Cure: Poison and Deafen - Locked



Line Change:

* Price: $94
* Note: Use a random Attack Skill for 0 TP Cost - Locked



Rotten Tomato:

* Price: $97
* Status: Poison - Locked



Flashbang:

* Price: $93
* Status: Stun - Locked



(Reel is outside of combat, so I don't care)

