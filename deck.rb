require 'squib'
require 'pp'

#Squib::logger.level = Logger::DEBUG

data = Squib.xlsx file: 'data_sprint.xlsx'
#data = Squib.xlsx file: 'data_action.xlsx'
#data = Squib.xlsx file: 'data_covers.xlsx'

def plusify(inputArray)
  return  inputArray.map{|num| num == nil || (not(num.is_a? Integer)) || num == 0 ? num : num < 0 ? num.to_s.insert(1, ' ') : '+ ' + num.to_s}
end

def CompleteSVGPath(inputArray)
  return  inputArray.map{|svg| svg == nil ? nil : 'svg\\' + svg}
end

####################################
############ CARDS DECK ############
####################################

Squib::Deck.new cards: data['Name'].size, layout: 'scrumkins.yml' do
  background color: 'white'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
  #rect layout: 'safe' # safe zone as defined by TheGameCrafter

  # Middle Art Piece
  svg layout: 'art', file: data['Icon']

  # Background
  svg layout: data['Background']

  # Description (must be under the icons)
  text str: data['Description'], layout: 'description'

  # Bubbles
  svg layout: data['Effect1']
  svg layout: data['Effect2']
  svg layout: data['Effect3']
  svg layout: data['Effect4']

  # Mini Bubbles
  svg layout: data['Protect']
  svg layout: data['Bugs']
  text str: plusify(data['BugCount']), layout: 'bugCount'

  # Text
  text str: plusify(data['Sprint1Nbr']), layout: 'Sprint1Nbr'
  text str: plusify(data['Sprint2Nbr']), layout: 'Sprint2Nbr'
  text str: plusify(data['Sprint3Nbr']), layout: 'Sprint3Nbr'
  text str: plusify(data['Sprint4Nbr']), layout: 'Sprint4Nbr'

  # Title
  text str: data['Name'], layout:'title'

  #text str: Time.now, layout: 'credits'
  save_png prefix: 'card_'
  save_pdf trim: 37.5, file: 'cards.pdf'
end
