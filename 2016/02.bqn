input ← •FLines "inputs/02.txt"
#input ← "ULL"‿"RRDDD"‿"LURDL"‿"UUUUD"
steps ← {'U':¯1‿0; 'D':1‿0; 'L':0‿¯1; 'R':0‿1}¨¨ input
_go ← {start Add _go pad:
    state ← start # coords of current button
    i ← {state ↩ state Add˜´⌽ 𝕩}¨ steps
    i ⊑ pad
}

pad1 ← 3‿3⥊1+↕10
Add1 ← 0⌈2⌊+
•Show 1‿1 Add1 _go pad1

pad2 ← ["  1  "," 234 ","56789"," ABC ","  D  "]
Add2 ← {a𝕊b: s←a+b ⋄ {2≥+´|2‿2-s ? s ; a}}
•Show 2‿0 Add2 _go pad2
