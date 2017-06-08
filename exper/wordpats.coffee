#file that experiments with word patterns as parts of a poem
#reverse version of markov chain

# random selection
randArrSel = (arr) ->
    arr[Math.floor(Math.random()*arr.length)]

patterns =
    start:["noun_s", "det_s", "adj"]
    noun_s:["verb_s", "verb_past", "END"]
    noun_p:["verb_past", "END"]
    det_s:["adj", "noun_s"]
    adj:["noun_s"]
    verb_s:["adv", "END"]
    verb_past:["adv","day", "END"]
    #special pattern
    day:["END"]
    adv:["END"]
    END:["END"]
    
    
voc =
    noun_s:["bat", "tree", "leaf", "love", "courage", "power"]
    noun_p:["boats", "beasts", "skies", "pens", "papers"]
    det_s:["the", "this", "that", "her", "his", "my"]
    verb_past:["walked", "blinked", "died", "lived", "throbbed", "pounded", "fought"]
    verb_s:["thinks", "talks", "looks", "travels", "bleeds"]
    adj:["red", "big", "fast", "yellow", "dark"]
    day:["today", "yesterday", "monday", "sunday"]
    adv:["quickly", "abruptly", "cautiously", "happily", "sadly"]
 
 
class WordIter
   constructor:(@pat, @vocab) ->
       @key = randArrSel @pat.start
   
   nextWord:->
       word = randArrSel @vocab[@key]
       @key = randArrSel @pat[@key]
       word
       
    
genPhrase = ->
    gen = new WordIter(patterns, voc)
    (gen.nextWord() until gen.key is "END").join(" ")
    
    
console.log(genPhrase() + ",") for i in [0..10]