// Generated by CoffeeScript 1.10.0
(function() {
  var engData, iter, one, poemWriter, three, two, write,
    slice = [].slice;

  engData = require("./threeline.json");

  iter = require("../LineIter");

  one = new iter(engData.begin.grammar, engData.begin.vocab);

  two = new iter(engData.des_obj.grammar, engData.des_obj.vocab);

  three = new iter(engData.act.grammar, engData.act.vocab);

  poemWriter = function() {
    var generators;
    generators = 1 <= arguments.length ? slice.call(arguments, 0) : [];
    return function(amount) {
      var i, j, obj, ref, results;
      results = [];
      for (i = j = 0, ref = amount; 0 <= ref ? j <= ref : j >= ref; i = 0 <= ref ? ++j : --j) {
        results.push(((function() {
          var k, len, results1;
          results1 = [];
          for (k = 0, len = generators.length; k < len; k++) {
            obj = generators[k];
            results1.push(obj.gen());
          }
          return results1;
        })()).join(",\n"));
      }
      return results;
    };
  };

  write = function(num) {
    var poet;
    poet = poemWriter(one, two, three);
    return poet(num).join("\n") + "\n";
  };

  module.exports.write = write;

  console.log(write(4));

}).call(this);
