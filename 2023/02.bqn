input ← •FLines "inputs/02.txt"
S ← +`∘=⊔⊢
N ← 10⊸×⊸+˜´∘⌽ -⟜'0'
input ↩ {1⊸↓¨⌾(1⊸⊑)¨ N¨⌾⊑¨ <˘∘⍉∘>¨ ' 'S¨¨ 2↓¨¨ ','S¨ ';'S ⊑∘⊐⟜':'⊸↓ 𝕩}¨ input
input ↩ {{g←⍒1⊑𝕩 ⋄ /˜´∊⌾(1⊸⊑) g⊸⊏¨𝕩}¨ ∾⟜"red"‿"green"‿"blue"⌾(1⊸⊑)¨ ∾⟜0‿0‿0⌾⊑¨ 𝕩}¨ input
•Show +´1+/(∧´12‿13‿14⊸≥)¨⌈´¨input
•Show +´×´¨⌈´¨input
