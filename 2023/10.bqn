g ← >•FLines "inputs/10.txt" # grid
p ← "|-LJ7F" # pipes
c ← ⟨⟨¯1‿0,1‿0⟩,⟨0‿¯1,0‿1⟩,⟨¯1‿0,0‿1⟩,⟨¯1‿0,0‿¯1⟩,⟨1‿0,0‿¯1⟩,⟨1‿0,0‿1⟩⟩ # connections

# Part 1
start ← <⊑('S'=g)/○⥊↕≢g # find S
n ← {¬(𝕩⊑g)∊"S."}⊸/{∧´0≤𝕩}¨⊸/⥊(↕3‿3)+<¯1‿¯1+⊑start # neighboring pipes to S
s ← n/˜start∊˘n+>c⊏˜p⊐n⊑g # the two which connect to S
l ← 2⥊start # last two pipes; both S
loop ← start∾s # save loop indices for pt 2
Step ← {s‿l: ⟨l(≢¨˘/○⥊⊢)s+>c⊏˜p⊐s⊑g, s⟩} # get next two pipes in loop, remember last two pipes
i←0 ⋄ •Show 1+{𝕊:s‿l↩Step s‿l ⋄ loop∾↩s ⋄ i+↩1}•_while_{𝕊:≢´s}@
loop ↩ ¯1↓loop # remove duplicate last index

# Part 2
# idea: expand grid by interleaving blank rows and columns so that simple flood fill works
# very slow (~90s!), but it gets the job done
es ← 1+2×≢g # expanded shape
o ← {⍷𝕩∾⥊(1↓𝕩)+>c⊏˜p⊐(1↓loop)⊑g}1+2×loop # outside/on loop (starts as expanded,reconnected loop; filled later)
q ← ⟨0‿0⟩ # queue for flood fill
FF ← {(∨´𝕩<0)∨(∨´𝕩≥es)∨⊑𝕩<⊸∊o ? @ ; o∾↩<𝕩 ⋄ q∾↩⟨0‿1,1‿0,0‿¯1,¯1‿0⟩+<𝕩 ⋄ @}
{𝕊:FF⊑q⋄q↩1↓q}•_while_{𝕊:0≠≠q}@
•Show +´∧´¨2|¬∘∊⟜o⊸/⥊↕es # inside is odd indices not in o
