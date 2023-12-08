input ← •FLines "inputs/08.txt"
i ← "LR"⊐⊑input ⋄ n ← ≠i
[a,b,c] ← ⍉>{<˘(0‿7‿12+⌜↕3)⊏𝕩}¨2↓input
lr ← a⊸⊐¨b‿c
F ← {c←0 ⋄ s‿e←𝕨‿𝕩 ⋄ {𝕊:s↩s⊑lr⊑˜i⊑˜n|c ⋄ c+↩1}•_while_{𝕊:¬⊑s∊e}@} 
# Part 1
s‿e ← a⊐"AAA"‿"ZZZ"
•Show s F ⋈e
# part 2: pray that lcm works
s‿e ↩ a⊸⊐¨("AZ"=¨<2⊏⍉>a)/¨<a
•Show (×÷{𝕨(|𝕊⍟(>⟜0)⊣)𝕩})´ s F¨ <e
