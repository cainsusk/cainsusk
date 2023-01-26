---
header-includes: |
        \usepackage{fontspec}
        \setmainfont[
                BoldFont=Cormorant Bold,
                ItalicFont=Cormorant Italic,
                BoldItalicFont=Cormorant Bold Italic
        ]{Cormorant Regular}
        \usepackage{geometry}
        \geometry{
                paper=a4paper, % Change to letterpaper for US letter
                top=3cm, % Top margin
                bottom=1.5cm, % Bottom margin
                left=4.5cm, % Left margin
                right=4.5cm, % Right margin
                %showframe, % Uncomment to show how the type block is set on the page
        }
        \longindentation=0pt 

        \signature{Cain Susko} 
        \address{
                437 Frontenac St \\ 
                Kingston, Ontario K7L3T3 \\ 
                (604) 902-5071
        } 

        \newcommand\Employer{XXX}
        \newcommand\Location{XXX}

colorlinks: true
documentclass: letter
---

\begin{letter}{
        Human Resources \\ 
        \Employer \\ 
        \Location
}

\opening{To whom it may concern:}

        Hello ! My name is Cain Susko, and I am a student of Software
        Engineering at Queen's University. 

        I believe I would be a good fit for the position because...

        Furthermore I would be a passionate employee because...

        Thank you for your time and consideration -- and I look forward to your
        response.

\closing{Kindly,}

\end{letter}



