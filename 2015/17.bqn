# brute force
input ← 10⊸×⊸+˜´∘⌽¨ '0'-˜•FLines "inputs/17.txt"
bitmasks ← (⥊0‿1∾⌜⊢)⍟(≠input)⟨⟨⟩⟩
solutions ← (150=+´¨input<⊸×bitmasks)/bitmasks
•Show ≠solutions
•Show +´⌊´⊸=+´¨solutions
