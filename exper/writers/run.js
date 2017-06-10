//test file for writers

var iter = require("../LineIter");
var vrs = require("./verse.json");

var writer = new iter(vrs.ip_tb.grammar, vrs.ip_tb.vocab);

for(var i=0;i<20;i++) console.log(writer.gen());