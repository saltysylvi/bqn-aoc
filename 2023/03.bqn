input ← >•FLines "inputs/03.txt"
#input ← ["467..114..","...*......","..35..633.","......#...","617*......",".....+.58.","..592.....","......755.","...$.*....",".664.598.."]

t ← ¯1↓˘{𝕩∧+`>⟜»𝕩}⌾⥊ ∾⟜0˘ input∊'0'+↕10 # tag numbers with ids > 0
n ← 10⊸×⊸+˜´∘⌽¨ (t-1) ⊔○⥊ input-'0' # numbers
m ← t-(0=t)∧'.'≠input # map where numbers>0, dot=0, symbol=¯1
i ← ⍷0⊸<⊸/⥊∾(¯1=m) /○⥊ <⎉2 3‿3↕{⌽⍉0∾˘𝕩}⍟4 m # ids of numbers next to symbol
•Show +´ (i-1) ⊏ n

g ← '*'=input # (potential) gears
•Show +´ ×´¨ ⊏⟜n¨ 1-˜(2=≠)¨⊸/(⍷·0⊸<⊸/⥊)¨g /○⥊ <⎉2 3‿3↕{⌽⍉0∾˘𝕩}⍟4 t-g
