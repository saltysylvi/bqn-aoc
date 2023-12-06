# input and parsing
input ← •FLines "inputs/05.txt"
Nats ← {10⊸×⊸+˜´∘⌽¨'0'-˜𝕩⊔˜1-˜∧⟜(+`>⟜»)𝕩∊'0'+↕10}
seeds ← Nats ⊑input
maps ← {>Nats¨ 1↓𝕩}¨ ((⊢-˜¬×+`)⟨⟩⊸≡¨)⊸⊔ 2↓input

# Part 1 Strategy:
# Convert each map into bins and offsets.
# The bins are in the format to be left arg to ⍋
# The offsets are the numbers we need to add to the
# input if the input falls inside the corresponding range.
# To process inputs by a map:
#  - get bin index (bins⍋inputs)
#  - index into offsets (offsets⊏˜bins⍋inputs)
#  - add offsets to inputs (inputs+offsets⊏˜bins⍋inputs)
# To process inputs for all maps left fold (˜´⌽) over the maps

# bins and offsets
bo ← {
    m ← ⍉𝕩⊏˜⍋1⊏⍉𝕩         # sort map by range starts, transpose for convenience
    [s,e] ← +`1↓m         # range starts (inclusive) and ends (exclusive)
    o ← -˝2↑m             # offsets for each range
    g ← e≠«s              # gaps when a range doesn't touch the next range
    b ← ∧s∾g/e            # bins are all the starts, plus the ends that are not starts, sorted
    i ← 1-˜/1∾g           # indices to insert zeros after in the offsets (need zeros for gaps and outside the map)
    o ↩ ((↕≠o)∾i)⍋⊸⊏o∾0¨i # insert zeros by appending and shuffling into place
    b‿o                   # return bins and offsets
}¨ maps

Step ← {s𝕊b‿o: s+o⊏˜b⍋s}
•Show ⌊´seeds Step˜´⌽ bo

# Part 2 Strategy:
# Do the same thing as part 1, as much as possible
# The crux is implementing an analog of bins up that works on a single interval right argument
# Since an interval can be in multiple bins at once, our interval bins up (IBins) will
# return not only the bin indices, but an array of sub-intervals corresponding to the indices
# E.g. 2‿8‿10 IBins [5‿12] → ⟨1‿2‿3, [5‿7,8‿9,10‿12]⟩
# all intervals will be represented with *inclusive* endpoints!

iseeds ← (0‿1-˜+`)⌾⍉ ∘‿2⥊seeds # get seed ranges, subtracting 1 from ends to make inclusive

# the block function only handles one interval at a time
# The stuff before and after makes it handle a whole array of intervals properly
IBins ← (⊑˘⋈1⊸↓⌾⍉)·∾{    # join into one ∘‿3 array, split out first column
    i ← (⊣+↕∘¬˜)´𝕨⍋𝕩     # get bin indices of start and end, expand into range (7‿10 → 7‿8‿9‿10)
    s ← ⥊¯1‿0+⌜𝕨⊏˜¯1↓i   # find all the bin boundaries the interval crosses, treating each boundary as an end, start pair
    a ← ∘‿2⥊∧𝕩∾s         # insert into the interval the split points, reshape to array of intervals
    i‿a                  # return indices and intervals
}⎉1                      # operate on lists/rows

Step2 ← {s𝕊b‿o: i‿a←b IBins s ⋄ a+i⊏o} 
•Show ⌊´⥊iseeds Step2˜´⌽ bo
