#file that experiments with word patterns as parts of a poem
#reverse version of markov chain

# random selection
randArrSel = (arr) ->
    arr[Math.floor(Math.random()*arr.length)]

patterns =
    start:["noun_s", "det_s", "adj"]
    noun_s:["verb_s", "verb_past", "END"]
    det_s:["adj", "noun_s"]
    adj:["noun_s"]
    verb_s:["adv", "END"]
    verb_past:["adv", "END"]
    adv:["END"]
    
    
voc =
    noun_s:["bat", "tree", "leaf", "love", "courage"]
    det_s:["the", "this", "that", "her", "his", "my"]
    verb_s:["walked", "blinked", "died", "lived", "throbbed", "pounded", "fought"]
    verb_past:[""]