//couplet poem test

var iter = require("../LineIter");
var vrs = require("./verse.json");

var iwriter = new iter(vrs.ip_tb.grammar, vrs.ip_tb.vocab);

var pwriter = new iter(vrs.scene_nat_0.grammar, vrs.scene_nat_0.vocab);

for(var i=0;i<10;i++){
    console.log(pwriter.gen() + ",");
    console.log(iwriter.gen());
    console.log("\n");
}