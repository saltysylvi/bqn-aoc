input ← {{𝕊"lose"‿n: -𝕊@‿n; 𝕊·‿n: 10⊸×⊸+˜´⌽n-'0'}2‿3⊏((⊢-˜¬×+`)' '⊸=)⊸⊔𝕩}¨ •FLines "inputs/13.txt"
mat ← ⍉⊸+ 0⊸∾˘⌾((↕8)⌽˘⊢) 8‿7⥊input
Solve ← {𝕊 mat:
    perms ← 0∾˘1+(≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕1-˜≠mat
    ⌈´ {+´ (⍉𝕩≍1⌽𝕩) ⊑⎉1‿2 mat}˘ perms
}   
•Show Solve mat
mat ↩ 0∾˘ 0⊸∾˘⌾⍉ mat
•Show Solve mat
