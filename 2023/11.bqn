i ← '#'=>•FLines "inputs/11.txt" # image
rc ← {/∧˝¬𝕩}¨⟨⍉i,i⟩ # indices of empty rows and columns
g ← /○⥊⟜(↕≢)i # indices of galaxies
d ← +´∘|∘-⌜˜g # unadjusted distances between each pair
e ← {+´(<∘∧˘⍉𝕨≍𝕩)(+´1=⍋)¨rc}⌜˜g # counts of empty rows+columns between each pair
•Show {+´(>⌜˜↕≠g) /○⥊ d+e×𝕩-1}¨2‿1e6
