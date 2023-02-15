input ← •FLines "inputs/05.txt"
T1 ← 3≤·+´∊⟜"aeiou" # at least 3 vowels
T2 ← ∨´=⟜« # at least one letter appears twice in a row
T3 ← ¬·∨´"ab"‿"cd"‿"pq"‿"xy"∨´∘⍷¨< # does not contain ab, cd, pq, or xy
•Show +´(T1∧T2∧T3)¨input
T4 ← {∨´1<+˝<`=⌜˜⊐2↕𝕩} # any pair of letters appearing twice w/o overlapping
T5 ← ∨´«∘«⊸= # one letter repeated with exactly one letter between
•Show +´(T4∧T5)¨input
