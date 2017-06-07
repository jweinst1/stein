vocabs = require("./VocabManage")
ptrns = require("./patterns.json")
Vocab = require("./Vocab")

class Haiku
  #randomly picks element from patterns
  @randPatt:(arr)->
    arr[Math.floor(Math.random()*arr.length)]

  constructor:(voc)->
    @patterns = [Haiku.randPatt(ptrns.syl_5), Haiku.randPatt(ptrns.syl_7), Haiku.randPatt(ptrns.syl_5)]
    @vocab = new Vocab(vocabs[voc])
    @poem = (@genFromPattern(pat) for pat in @patterns).join("\n")

  genFromPattern:(pat)->
    (@vocab.randFromField(field) for field in pat).join(" ")

  getPoem:->
    @poem

module.exports = Haiku