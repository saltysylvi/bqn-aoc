Split ← {i←⊑/𝕨⍷𝕩 ⋄ ⟨i↑𝕩, (i+≠𝕨)↓𝕩⟩}
N ← 10⊸×⊸+˜´∘⌽ -⟜'0'
Parse ← {
    "rect"⊑∘⍷𝕩 ? ⟨0,N¨"x" Split 5↓𝕩⟩;
    "rotate row"⊑∘⍷𝕩 ? ⟨1,N¨" by " Split 13↓𝕩⟩;
    ⟨2,N¨" by " Split 16↓𝕩⟩
}
Do ← {
    𝕊⟨0,a‿b⟩: screen 1¨⌾((↕b‿a)⊸⊑)↩;
    𝕊⟨1,a‿b⟩: screen ((-b)⊸⌽)⌾(a⊸⊏)↩;
    𝕊⟨2,a‿b⟩: screen ((-b)⊸⌽)⌾(a⊸⊏)⌾⍉↩
}
screen ← 6‿50⥊0
Do∘Parse¨ •FLines "inputs/08.txt"
•Show +´⥊screen
•Show screen ⊏ " #"
