keys ← "children"‿"cats"‿"samoyeds"‿"pomeranians"‿"akitas"‿"vizslas"‿"goldfish"‿"trees"‿"cars"‿"perfumes"
msg ← 3‿7‿2‿3‿0‿0‿5‿3‿2‿1
S ← (⊢-˜¬×+`)∘=⊔⊢
input ← {<˘⍉>1⊸↓¨¨':'⊸S¨','S(1⊑/' '=𝕩)↓𝕩}¨ •FLines "inputs/16.txt"
input {k‿v: ⟨keys⊐k, 10⊸×⊸+˜´∘⌽¨'0'-˜v⟩}¨ ↩
•Show 1+⊑/{k‿v: v≡k⊏msg}¨ input
msg ↩ =‿>‿=‿<‿=‿=‿<‿>‿=‿= ⋈¨ msg
•Show 1+⊑/{k‿v: ∧´ v {a𝕊f‿b: a F b}¨ k⊏msg}¨ input
