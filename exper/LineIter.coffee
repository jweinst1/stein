# Implements the line Iter class which constructs
# Poem Lines from a Production Set

# random selection
randArrSel = (arr) ->
    arr[Math.floor(Math.random()*arr.length)]

class LineIter
   constructor:(@grammar, @vocab) ->
       if !("start" in @grammar)
           throw new Error "StartError: No Start rule"
       @key = randArrSel @grammar.start
       @word = randArrSel @vocab[@key]
       
    checkIfEnd:->
        @word is "END"