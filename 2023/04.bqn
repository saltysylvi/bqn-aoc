input ← ⍉>{10⊸×⊸+˜´∘⌽¨ '0'-˜{1-˜∧⟜(+`>⟜»)𝕩∊'0'+↕10}⊸⊔𝕩}¨ •FLines "inputs/04.txt"
w ← ⍉(1+↕10)⊏input # (w)inning numbers
y ← ⍉(11+↕25)⊏input # (y)our numbers
m ← y(+´∊)˘w # number of (m)atches
•Show +´2⋆1-˜0⊸<⊸/m

n ← ≠⊏input # (n)number distinct of cards
c ← n⥊1 # number of each (c)ard
{c+↩(𝕩⊑c)×n↑/⁼1+𝕩+↕𝕩⊑m⋄@}¨↕n
•Show +´c
