### Welcome to Scrumkin Inc.

Scrumkin is a visciously fun card game where you deal the best and worse software and management practices for fun and profit.

#### Version history & changelog

* 2017.02.19 - 0.1

### Rulebook

Each player represents a different Scrum team in an almost non-dysfunctional company. Even though they work on the same project, the players are not really working together on that new “Mammoth” product. They share the common goal of delivering this revolutionary product on time, on budget, with top notch quality and the complete scope, but if one player could be more on time than the others, it would be better for his/her career...

#### Game content

* 110 cards
 * 22 "action cards"
 * 88 "sprint cards"
* A representation of each backlog as a game board
 * Print this template (todo) or make your own
 * Alternatively, you can use stacked up LEGO Bricks of different colors (one color per player)
* A "Velocity-Meter" to display the
current velocity of each player
 * Print this template (todo) or make your own

#### Units

The game builds upon two artifacts:
* A backlog for each player
* The velocity at which the player is implementing backlog items, measured in “number of items per sprint”

#### Cards

Each card has a title, a description and an artwork.
Values placed on the top-left corner are velocity modifiers.
Values placed at the bottom of the card are backlog modifiers.

#### Action cards

Action cards are of two kinds:
* Boosters (blue circles), the value indicates a velocity change for all the players
* Bugs (red monster at the bottom), the value indicates the number of bugs to add to the backlog.

![Team event](ReadMeResources\TeamEvent.png)
![Bugtopus](ReadMeResources\BugTopus.png)

#### Sprint cards

Sprint cards only affect velocity, but can have multiple values over time:
* A circle with a value indicates a velocity change for the current sprint only.
* A circle with an ∞ character indicates a permanent velocity change.
* If more than one circle is present, the circles represent values over time. The bottom circle is the value to use for the sprint when you play the card. Then sprint n+1, n+2 and n+3. Use paperclips or partially cover the card with another card to indicate which value is actual.

![Scope Creep](ReadMeResources\ScopeCreep.png)
![20% Innovation Time](ReadMeResources\20%InnovationTime.png)

* Cards with a small “green shield” are protective cards. They can be used to counter any card laid down at any time during the game.

Note: they can also be used as plain normal cards.

![Collocated Teams](ReadMeResources\CollocatedTeams.png)

#### Setup

* Put all the "Event cards” in one “Event stack”, all the others forming the “Sprint Stack”.
* Red bricks are left aside as “bugs”.
* Each player receives 21 bricks of the same color. 20 bricks are stacked to form the player's Backlog. 1 brick is placed on the “velocity-meter” for everyone to see.
* Each player picks 3 cards from the “Sprint Stack”. At any time, a player can have at most 3 cards in hand.

#### Starting the Game

The last player who ate some chocolate is the “leader” for the first round and starts the game. The leader role is then passed on to another player at each turn.

The leader pulls the topmost action card and reads it aloud:
* If it is a boost card (blue bubble), the velocity boost applies to everyone.
* If it is a bug card (red bubble), the leader adds many red-bricks to the top of his backlog as the number of bugs displayed on bottom of the card and puts the card at the bottom of the action stack.

#### Sprint
Starting with the leader, each player can then in turn play 1 or 2 of the following options:
1. Play a card in his/her own game by placing face up on the table in front of himself.
2. Play a card in somebody else's game by placing it face up on the table in front of this other person.
3. Discard one card by putting it back face down at the end of the stack.

<Table>

Note: you cannot play the same option twice in the same round, you can thus play the following combinations: 1 & 2, 2 & 3 or 1 & 3. Everyone must play, “passing” is not allowed.

#### Computing your velocity
When the sprint is over for all the players, each player adds up the numbers on his/her cards to find out his/her current velocity. The velocity is then made visible to all via the Velocity-Meter.
* If your velocity is greater than zero, you have completed some features! You can remove as many items from your backlog.
* If your velocity is smaller or equals to zero, you didn't finish any features during this sprint.
Note: bugs count like any other item.

#### Setup for the next round
At the end of each sprint, each player refills his hand to have 3 cards. Players that have cards with values over time also update those values by moving the paper clips to point to the new value.

#### Finishing the game

The winner is the player to finish his/her entire backlog first.

#### Collaborative Rulebook

There is now a time limit of 10 sprints to complete the entire backlog. If the entire backlog is completed, the first player to complete his/her backlog wins. If the entire backlog isn’t completed, everybody loses:

* Players can help each other by implementing work items for another player. For each overtaken item, the new owner takes a -1 velocity penalty.

Ex: Thelma volunteers to take over 3 backlog items from Louise. Thelma has now +3 backlog items and -3 Velocity penalty. In the first round, Thelma implements 2 items. In the next round, Thelma has only +1 backlog item left and a velocity penalty of -1.
* Version 1: players are not allowed to show their cards to their opponents, i.e. no common global strategy.
* Version 2: players are allowed to play with a fully open game

#### Scrumkin for Retrospective

After the game, conduct a retrospective.

Here are some suggested questions and directions to steer the discussion toward:
* Any parallel to real life? How did it feel to play with those concepts?
* Did any card ring a bell? Tell us that story!
* What did you notice in the group dynamic?
* …

### Behind the covers

#### Output

In the "\_Output" folder you will find a pre-generated version of the game i.e. all the cards as PNG Files and two PDF files (for print on differently colored paper).

#### Generate the cards

Scrumkin is generated using the Ruby Framework [Squib](https://github.com/andymeneely/squib). Please refer to its documentation for installation instructions. At the time of writing these lines, you need to install ruby 2.0 and install Squib via:

```ruby
gem install squib
```

Then to generate the cards, just call:

```ruby
ruby deck.rb
```

#### Structure

All the data is to be found in the MS Excel files:
* data_sprint.xlsx -> All the sprint cards
* data_action.xlsx -> All the action cards
* data_covers.xlsx -> Two backside

Those sets are created separately. To change the set being created, comment and uncomment the required lines at the beginning of the 'deck.rb' file:

```ruby
data = Squib.xlsx file: 'data_sprint.xlsx' #Will generate only the sprint cards
#data = Squib.xlsx file: 'data_action.xlsx' #Commented out
#data = Squib.xlsx file: 'data_covers.xlsx' #Commented out
```

> Nota: the images and pdfs created in the output folder will overwrite any pre-existing data. Save your generated content somewhere else when you are happy with it.

### FAQ

* Todo

### License

* The game is shared under the CreativeCommon-Attribution-NonCommercial-ShareAlike 4.0 International license.
* The font used is [KG Second Chance](http://www.dafont.com/kg-second-chances.font). It is free for personal use. For commercial licensing, please see the following [website](http://kimberlygeswein.com).
* All the icons were created by various authors and can be found on [Game-icons.net](http://game-icons.net/). Many thanks to them.
