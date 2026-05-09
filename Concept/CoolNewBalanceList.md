Locked = Cannot be changed/incredibly hard to change



obj\_inventory\_hireslot\_0 = adjust the actor inventory information

obj\_inventory\_itemslot\_1 = adjust the item inventory information

obj\_shop\_shop = adjust the prices in the shop

obj\_playermenu\_button = adjust the skill names

obj\_calendar = adjust health from day and loss, and money gained from battles



Player HP: 20 - Locked

Player TP: 10 - Locked



Max Item Amount: 9 - Locked



Heal from Day: 10

Health from Loss: 10



Money Start: $?? > $120

Money Gained: $40 \* Enemies defeated - 10% more money for each day after first day



**Status Effects**

Stun - Cannot Attack that turn, for Player: skip to Defend - Locked

Poison - Take 2 damage on the start of your turn, always set for 3 turns - Locked

Deafen - Can only use Default Attack and Defend (+ Items) for that turn - Locked

Wet - Take 2 more damage from any damage that isn't 0, always set for 2 turns - Locked



**Enemies** (More powerful as list goes down - Locked?, also don't forget makeup enemies)



Rat:

* HP: 6 > 4
* DMG: 4 > 2



Dog in Car:

* HP: 8 > 6
* DMG: 3 > 4



Shield Guy:

* HP: 6 > 10
* DMG: 5 > 4
* Status: Stun - Locked



Thief Cat:

* HP: 6 > 8
* DMG: 2 x 2 > 3 x 2 - times 2 Locked
* Note: Steals an item on first hit, gives an item on defeat - Locked



Cyborg:

* HP: 6 > 12
* DMG: 12
* Note: Attacks every 2 turns - Locked



Detective Monkey:

* HP: 9
* DMG: 2 > 3 (Screech) or 2 x 3 (Bananas) - times 3 Locked
* Status: Deafen (Screech) or Poison (Bananas) - Locked



**Actors**



\[Player]



Default Attack - Clapperboard:

* TP Cost: 0
* DMG: 4 > 2
* Difficulty: 3 frames (hard) - Locked



Default Defend - Megaphone:

* TP Gain: 0 > 1
* Input Buffer: 20 (1/3 second) > 10 (1/6 second)



\[Casting Agent]

* Price: $145 - $155 > $60 - $100



Identify:

* TP Cost: 2 > 1
* DMG: 6 > 2
* Difficulty: Easy > Easy, but faster
* Note: Shows the hit enemy's health - Locked



Prediction:

* TP Gain: 1 > 0
* Input Buffer: 40 (2/3 second)



\[Janitor] > \[Custodian]

* Price: $145 - $155 > $80 - $120



Sweeping > Sweeping Blow:

* TP Cost: 3 > 2
* DMG: 8 > 4 (note: wet applies BEFORE damage, so this damage is +2, I think)
* Difficulty: 4 frames (hard) - Locked
* Status: Wet - Locked



Cleanse:

* TP Gain: 1
* Input Buffer: 20 (1/3 second)
* Note: Can't gain status effects - Locked



\[Jane Wick]

* Price: $145 - $155 > $140 - $180



Falling Elbow > Elbow Drop:

* TP Cost: 5 > 4
* DMG: 10
* Difficulty: Press Space while Jane Wick is on screen falling (medium)



Gun:

* TP Cost: 5 > 4
* DMG: 1 x MASH for 60 frames (1 second) (hit all volley - Locked)



Bodyguard:

* TP Gain: 0 > 3
* Input Buffer: 20 (1/3 second) > 10 (1/6 second)
* Note: Take 2 less damage from any source



\[Makeup Artist]

* Price: $145 - $155 > $100 - $140



Disguise:

* TP Cost: 5 > 2
* Note: Uses random enemy attack - Locked



Imitate:

* TP Gain: 3 > 4
* Note: Uses random defend skill - Locked



\[Boom Crew] > \[Demolition Man]

* Price: $145 - $155 > $120 - $160



Explosive Test > Bomb Throw:

* TP Cost: 5 > 4
* DMG: 6 to all > 5 to all (all - Locked)
* Difficulty: Easy > Medium



Landmine:

* TP Gain: 4
* Input Buffer: 0 (always get hit) - Locked
* Note: Damage taken will also be dealt to attacker - Locked



Blast Shield:

* TP Gain: 1
* Input Buffer: 25 (5/12 second) > 20 (1/3 second)
* Note: Damage taken cannot exceed 3 (number is in obj\_combat\_player)



**Items**



Corporate Drink > Energy Drink:

* Price: $90 - $100 > $40 - $60
* Heal: 10 HP



Coffee:

* Price: $90 - $100 > $40 - $60
* Heal: 5 TP



Cleaning Rag > Towel:

* Price: $90 - $100 > $45 - $65
* Cure: Poison and Deafen - Locked



Line Change:

* Price: $90 - $100 > $50 - $70
* Note: Use a random Attack Skill for 0 TP Cost - Locked



Rotten Tomato:

* Price: $90 - $100 > $35 - $55
* Status: Poison - Locked



Flashbang:

* Price: $90 - $100 > $30 - $50
* Status: Stun - Locked



Reel:

* Price: $90 - $100 > $70 - $80
* Sell: $70 - $110 > $55 - $90 (randomizer is in obj\_pranavs\_bandaid\_solution\_2)

