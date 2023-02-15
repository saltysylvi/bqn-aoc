input ← {'^':0‿1; 'v':0‿¯1; '>':1‿0; '<':¯1‿0}¨ •FChars "inputs/03.txt"
•Show ≠⍷(<0‿0)∾+`input
•Show ≠⍷(<0‿0)∾⥊+`˘⍉∘‿2⥊input
