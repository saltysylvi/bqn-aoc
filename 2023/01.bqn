input ← •FLines "inputs/01.txt"

# part 1
•Show +´{+´10‿1×'0'-˜0‿¯1⊏𝕩/˜𝕩∊'0'+↕10}¨ input

# part 2
words ← "one"‿"two"‿"three"‿"four"‿"five"‿"six"‿"seven"‿"eight"‿"nine"∾(<"0")+↕10
vals ← (1+↕9)∾↕10
•Show +´{+´10‿1×vals⊑∘/⎉1˜a⊑∘∊⌜˜(⌊´⋈⌈´)∾a←words/∘⍷¨<𝕩}¨ input # yikes
