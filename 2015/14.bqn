input ← 10⊸×⊸+˜´∘⌽¨¨ '0'-˜ {(1-˜m×+`>⟜»m←𝕩∊'0'+↕10)⊔𝕩}¨ •FLines "inputs/14.txt"
dist ← {a‿b‿c: +`2503⥊(b⥊a)∾c⥊0}¨ input
•Show ⌈´ ¯1⊸⊑¨ dist
•Show ⌈´+´¨⌈˝⊸=dist
