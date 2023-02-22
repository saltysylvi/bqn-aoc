Carry ← {c ← 0 ⋄ {𝕩+↩c ⋄ c↩𝕩≥26 ⋄ 26|𝕩}¨ 𝕩}
Inc ← (Carry 1⊸+⌾⊑)⌾(⌽-'a'˙)
T1 ← {2≤⌈´(×+⊢)`1=«⊸-𝕩}
T2 ← {¬∨´"iol"∊𝕩}
T3 ← {2≤≠⍷=⟜»⊸/𝕩}
Next ← {𝕊:password Inc↩}•_while_{𝕊:¬(T1∧T2∧T3)password}
password ← "vzbxkghb"
•Show Next@
password Inc↩
•Show Next@
