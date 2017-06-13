# main file for three line poem writer

engData = require("./threeline.json")
iter = require("../LineIter")

one = new iter(engData.begin.grammar, engData.begin.vocab)
two = new iter(engData.des_obj.grammar, engData.des_obj.vocab)
three = new iter(engData.act.grammar, engData.act.vocab)


poemWriter = (generators...)->
    (amount) ->
        ((obj.gen() for obj in generators).join(",\n") for i in [0..amount-1])


write = (num)->
    poet = poemWriter(one, two, three)
    poet(num).join("\n") + "\n"

module.exports.write = write

