Ints ← {{'-'=⊑𝕩 ? -𝕊1↓𝕩 ; 10⊸×⊸+˜´⌽𝕩-'0'}¨𝕩⊔˜1-˜∧⟜(+`>⟜»)𝕩∊'-'∾'0'+↕10}
input ← Ints¨ •FLines "inputs/09.txt"
diffs ← (1⊸↓-¯1⊸↓)⍟(↕≠)¨ input
•Show +´{+´¯1⊑¨𝕩}¨ diffs
•Show +´{-´⊑¨𝕩}¨ diffs
