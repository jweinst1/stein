class Vocab

  #some basic fields
  @BASE_FIELDS:[
    "1noun-s", "2noun-s","3noun-s", "4noun-s",
    "1verb-s", "2verb-s","3verb-s", "4verb-s",
    "1adv-s", "2adv-s","3adv-s", "4adv-s",
    "1adj-s", "2adj-s","3adj-s", "4adj-s",
    "1noun-p", "2noun-p","3noun-p", "4noun-p",
    "1verb-p", "2verb-p","3verb-p", "4verb-p",
    "1adv-p", "2adv-p","3adv-p", "4adv-p",
    "1adj-p", "2adj-p","3adj-p", "4adj-p"
  ]

  constructor:(dict) ->
    if typeof dict != 'object' or dict is null
      throw new Error 'Must load object as a vocab'
    @words = dict

  #checks if a field exists in the vocabulary
  validate:(field) ->
    field in @words

  #gets random element from field
  randFromField:(field) ->
    @words[field][Math.floor(Math.random()*@words[field].length)]

module.exports = Vocab