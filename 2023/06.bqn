input ← •FLines"inputs/06.txt"
Nats ← {10⊸×⊸+˜´∘⌽¨'0'-˜𝕩⊔˜1-˜∧⟜(+`>⟜»)𝕩∊'0'+↕10}
Go ← {(⌈-1˙)⊸¬⟜(⌊+1˙)´2÷˜𝕨(+⋈-)√(𝕨⋆2)-4×𝕩}
•Show ×´Go´Nats¨input
•Show Go´⊑∘Nats¨' '⊸≠⊸/¨input
