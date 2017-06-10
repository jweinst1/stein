# Implements the line Iter class which constructs
# Poem Lines from a Production Set

# random selection
randArrSel = (arr) ->
    arr[Math.floor(Math.random()*arr.length)]

class LineIter
   constructor:(@grammar, @vocab) ->
       if !@grammar.start?
           throw new Error "StartError: No Start rule"
       @key = randArrSel @grammar.start
    
    # resets the iterator 
    reset:->
        @key = randArrSel @grammar.start
        
    nextWord:->
        word = randArrSel @vocab[@key]
        @key = randArrSel @grammar[@key]
        word
        
        
    gen:->
        line = (@nextWord() until @key is "END").join(" ")
        @reset()
        line
        
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
    
test = new LineIter(patterns, voc)
console.log(test.gen()) for i in [0..20]