input ←  {⟨⊑𝕩, 10⊸×⊸+˜´∘⌽'0'-˜1↓𝕩⟩}¨ (¯1+`∊⟜"LR")⊸⊔ ¬∘∊⟜", "⊸/¯1↓•FChars "inputs/01.txt"
ds ← ⟨0‿1, 1‿0, 0‿¯1, ¯1‿0⟩ # directions
i ← 0 # index to current direction
steps ← ∾ (-⟜¬'R'=⊑¨input) {i↩4|i+𝕨 ⋄ 𝕩⥊<i⊑ds}¨ 1⊸⊑¨input
•Show +´|+´steps
•Show +´|⊑∊⊸⊐⟜0⊸⊏(<0‿0)∾+`steps
