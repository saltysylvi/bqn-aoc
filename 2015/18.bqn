input ← ".#"⊐>•FLines "inputs/18.txt"
Step ← {𝕩{1𝕊a: ⊑a∊3‿4; 0𝕊a: a=3}¨+´∘⥊⎉2 3‿3↕(0∾˘⍉∘⌽)⍟4 𝕩}
•Show +´⥊Step⍟100 input
T ← 1¨⌾(0‿¯1⊸⊏⎉1 0‿¯1⊸⊏) # turn on corners
•Show +´⥊ T Step∘T⍟100 input
