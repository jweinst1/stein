// Generated by CoffeeScript 1.10.0
(function() {
  var LineIter, i, j, patterns, randArrSel, test, voc;

  randArrSel = function(arr) {
    return arr[Math.floor(Math.random() * arr.length)];
  };

  LineIter = (function() {
    function LineIter(grammar, vocab) {
      this.grammar = grammar;
      this.vocab = vocab;
      if (this.grammar.start == null) {
        throw new Error("StartError: No Start rule");
      }
      this.key = randArrSel(this.grammar.start);
    }

    LineIter.prototype.reset = function() {
      return this.key = randArrSel(this.grammar.start);
    };

    LineIter.prototype.nextWord = function() {
      var word;
      word = randArrSel(this.vocab[this.key]);
      this.key = randArrSel(this.grammar[this.key]);
      return word;
    };

    LineIter.prototype.gen = function() {
      var line;
      line = ((function() {
        var results;
        results = [];
        while (this.key !== "END") {
          results.push(this.nextWord());
        }
        return results;
      }).call(this)).join(" ");
      this.reset();
      return line;
    };

    return LineIter;

  })();

  patterns = {
    start: ["noun_s", "det_s", "adj"],
    noun_s: ["verb_s", "verb_past", "END"],
    noun_p: ["verb_past", "END"],
    det_s: ["adj", "noun_s"],
    adj: ["noun_s"],
    verb_s: ["adv", "END"],
    verb_past: ["adv", "day", "END"],
    day: ["END"],
    adv: ["END"],
    END: ["END"]
  };

  voc = {
    noun_s: ["bat", "tree", "leaf", "love", "courage", "power"],
    noun_p: ["boats", "beasts", "skies", "pens", "papers"],
    det_s: ["the", "this", "that", "her", "his", "my"],
    verb_past: ["walked", "blinked", "died", "lived", "throbbed", "pounded", "fought"],
    verb_s: ["thinks", "talks", "looks", "travels", "bleeds"],
    adj: ["red", "big", "fast", "yellow", "dark"],
    day: ["today", "yesterday", "monday", "sunday"],
    adv: ["quickly", "abruptly", "cautiously", "happily", "sadly"]
  };

  test = new LineIter(patterns, voc);

  for (i = j = 0; j <= 20; i = ++j) {
    console.log(test.gen());
  }

}).call(this);

//# sourceMappingURL=LineIter.js.map
