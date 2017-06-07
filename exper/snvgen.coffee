###
generates noun-verb phrases
###

# random selection
randArrSel = (arr) ->
    arr[Math.floor(Math.random()*arr.length)]
# uses vocab to randomly select nouns and verbs
# meant for more specific vocab
nVGen = (vocab)->
    -> "#{randArrSel(vocab.nouns)} #{randArrSel(vocab.verbs)}"
    
    
    
voc = {
    nouns:["bikes", "people", "lions", "thieves", "petals"],
    verbs:["walk", "ran", "flew", "dove", "sighed", "love"]
}

#demonstrate vocab
tester = nVGen(voc)
console.log(tester()) for i in [0..20]