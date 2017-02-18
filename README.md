Scrumkin is a visciously fun card game where you deal the best and worse software and management practices for fun and profit.

#### Version history & changelog

* 2017.02.19 - 0.1

### Rules

#### Competitive Rulebook

* Todo

#### Collaborative Rulebook

* Todo

#### Scrumkin for Retrospective

* Todo

### Behind the covers

#### Output

In the "\_Output" folder you will find a pre-generated version of the game i.e. all the cards as PNG Files and two PDF files (for print on differently colored paper).

#### Generate the cards

Scrumkin is generated using the Ruby Framework [Squib](https://github.com/andymeneely/squib). Please refer to its documentation for installation instructions. At the time of writing these lines, you need to install ruby 2.0 and install Squib via:

> gem install squib

Then to generate the cards, just call:

> ruby deck.rb

To change the set being created, comment and uncomment the required lines at the beginning of the 'deck.rb' file:

> data = Squib.xlsx file: 'data_sprint.xlsx'

#### Structure

All the data is to be found in the MS Excel files.

### FAQ

* Todo

### License

The game is shared under the CreativeCommon-Attribution-NonCommercial-ShareAlike 4.0 International license.

The font used is [KG Second Chance](http://www.dafont.com/kg-second-chances.font). It is free for personal use. For commercial licensing, please see the following [website](http://kimberlygeswein.com).

All the icons were created by various authors and can be found on [Game-icons.net](http://game-icons.net/). Many thanks to them.
