input ← •FLines "inputs/06.txt"
cmds ← ({'n':1¨; 'f':0¨; ' ':¬}6⊑⊢)¨ input
rngs ← {m←𝕩∊'0'+↕10 ⋄ <˘⍉2‿2⥊10⊸×⊸+˜´∘⌽¨'0'-˜(1-˜m×+`>⟜»m)⊔𝕩}¨ input
Do ← {
    grid ← 1000‿1000⥊0
    𝕨 {grid 𝕎⌾(((⊑+·↕¬˜´)¨𝕩)⊸⊏)↩ ⋄ @}¨ 𝕩
    +´⥊grid
}
•Show cmds Do rngs
cmds ↩ ({'n':+⟜1; 'f':0⌈-⟜1; ' ':+⟜2}6⊑⊢)¨ input
•Show cmds Do rngs
