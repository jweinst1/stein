#file that experiments with word patterns as parts of a poem

patterns =
    noun_s:["verb_s", "verb_past", "punc", "END"]
    det_s:["adj", "noun_s"]
    _ing:["verb_s", "tobe_s"]
    tobe_s:["adj", "END"]