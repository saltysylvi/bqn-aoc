input â 29_000_000

While   â {ð©{ð½âð¾âð½_ð£_ð¾âð½âð¾ð©}ð¨@}Â´
DoWhile â {ð@ â While ð¨â¿ð©}Â´

# prime factorize adapted from At Play with J
P â {ðn:
    f â â¨â©
    t â 2â¿3â¿5â¿7â¿11â¿13â¿17â¿19â¿23â¿29â¿31â¿37
    o â +` 432â¥4â¿2â¿4â¿2â¿4â¿6â¿2â¿6
    m â â1 # placeholder
    DoWhile {ð: nâ¥ÃËât}â¿{ð¤
        DoWhile {ð: 0<â m}â¿{ð¤
            m â© (0=t|n)/t
            f â¾â© m
            n Ã·â© ÃÂ´m
        }
        t â© o + Â¯1ât
    }
    (âââ )Â¨ââ¸â nâ¾â(â â1)f
}

S â {ÃÂ´{pâ¿e: +Â´pââ1+e}Â¨Pð©} # Sum of divisors
D â {â¥ÃâÂ´{pâ¿e: pââ1+e}Â¨Pð©} # Divisors
S50 â {+Â´(50â¥ð©Ã·â¢)â¸/Dð©} # sum of divisors that leave quotient â¤ 50

Solve â {ð mulâ¿S: nâ1 â While{ð:input>mulÃS n}â¿{ð:n+â©1}}
â¢Show SolveÂ¨ â¨10â¿S, 11â¿S50â©
