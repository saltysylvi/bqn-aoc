input ← {⟨¯2↓𝕩,10⊸×⊸+˜´⌽'0'-˜¯2⊑𝕩,¯1⊑𝕩⟩}¨ {𝕩⊔˜1-˜(¬m)×1+`m←𝕩∊"-["}¨ ¯1⊸↓¨ •FLines "inputs/04.txt"
CheckSum ← 5↑⍷⊸{𝕨⍒⊸⊏˜(≠¨⊐⊸⊔𝕩)⋈¨'a'-𝕨}
realRooms ← {(¯1⊑𝕩)≡CheckSum∾⊑𝕩}¨⊸/ input
•Show +´ 1⊸⊑¨ realRooms
•Show (∨´"north"⍷1⊸⊑)¨⊸/ 1⊸⊑⊸{⟨𝕨,∾∾⟜' '¨'a'+26|𝕨+'a'-˜𝕩⟩}⟜⊑¨ realRooms
