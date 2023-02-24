# A super jank json tokenizer/parser in <20 loc hehe <3
Tokenize ← {
    ns ← >⟜» n ← (𝕩='-')∨𝕩∊'0'+↕10
    numbers ← {'-'=⊑𝕩? -𝕊1↓𝕩; 10⊸×⊸+˜´⌽𝕩-'0'}¨ (1-˜n×+`ns)⊔𝕩
    s ← ≠`q ← '"'=𝕩
    strings ← (1-˜(q<s)×+`s∧q)⊔𝕩
    t ← ns ∨ (s∧q) ∨ 𝕩∊"[]{}"
    tokens ← 'a'¨⌾((t/s∧q)⊸/) '0'¨⌾((t/ns)⊸/) t/𝕩
    tokens‿numbers‿strings
}
Parse ← {𝕊 t‿n‿s:
    { '0'‿t: ⟨⟨'n',⊑n⟩, t, 1↓n, s⟩;
      'a'‿t: ⟨⟨'s',⊑s⟩, t, n, 1↓s⟩;
      '['‿t: l←⟨⟩ ⋄ v←@ ⋄ {𝕊:v‿t‿n‿s↩Parse t‿n‿s ⋄ l∾↩<v}•_while_{𝕊:']'≠⊑t}@ ⋄ ⟨⟨'l',l⟩,1↓t,n,s⟩;
      '{'‿t: d←⟨⟩ ⋄ v←@ ⋄ {𝕊:v‿t‿n‿s↩Parse t‿n‿s ⋄ d∾↩<v}•_while_{𝕊:'}'≠⊑t}@ ⋄ ⟨⟨'d',⍉∘‿2⥊d⟩,1↓t,n,s⟩
    } ⟨⊑t, 1↓t⟩
}
t‿n‿s ← Tokenize •FChars "inputs/12.txt"
•Show +´n
json ← ⊑Parse t‿n‿s
Sum ← {𝕊 type‿val:
    { type='n'? val; # number
      type='s'? 0; # string
      type='l'? +´Sum¨val; # list
      (type='d')∧¬⊑'s'‿"red"<⊸∊1⊏val ? +´Sum¨1⊏val; 0 # dict/obj
    }
}
•Show Sum json
