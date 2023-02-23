input ← 29_000_000

While   ← {𝕩{𝔽⍟𝔾∘𝔽_𝕣_𝔾∘𝔽⍟𝔾𝕩}𝕨@}´
DoWhile ← {𝕏@ ⋄ While 𝕨‿𝕩}´

# prime factorize adapted from At Play with J
P ← {𝕊n:
    f ← ⟨⟩
    t ← 2‿3‿5‿7‿11‿13‿17‿19‿23‿29‿31‿37
    o ← +` 432⥊4‿2‿4‿2‿4‿6‿2‿6
    m ← ↕1 # placeholder
    DoWhile {𝕊: n≥×˜⊑t}‿{𝕤
        DoWhile {𝕊: 0<≠m}‿{𝕤
            m ↩ (0=t|n)/t
            f ∾↩ m
            n ÷↩ ×´m
        }
        t ↩ o + ¯1⊑t
    }
    (⊑⋈≠)¨⊐⊸⊔ n∾⍟(≠⟜1)f
}

S ← {×´{p‿e: +´p⋆↕1+e}¨P𝕩} # Sum of divisors
D ← {⥊×⌜´{p‿e: p⋆↕1+e}¨P𝕩} # Divisors
S50 ← {+´(50≥𝕩÷⊢)⊸/D𝕩} # sum of divisors that leave quotient ≤ 50

Solve ← {𝕊 mul‿S: n←1 ⋄ While{𝕊:input>mul×S n}‿{𝕊:n+↩1}}
•Show Solve¨ ⟨10‿S, 11‿S50⟩
