page 50104 "Intern Task String"
{
    PageType = Card;
    Caption = 'Text revelsal and letter counting';

    layout
    {
        area(Content)
        {
            field("Input Text"; inputText)
            {
                ApplicationArea = Basic;
                Importance = Promoted;

                trigger OnValidate()
                begin
                    reversedText := functions.ReverseString(inputText);
                    vowelCount := functions.CountVowels(inputText);
                    consonantCount := functions.CountConsonants(inputText);
                end;
            }

            field("Reversed Input Text"; reversedText)
            {
                ApplicationArea = Basic;
                Editable = false;
            }

            field("Vowel Count"; vowelCount)
            {
                ApplicationArea = Basic;
                Editable = false;
            }

            field("Consonant Count"; consonantCount)
            {
                ApplicationArea = Basic;
                Editable = false;
            }
        }
    }

    var
        vowelCount: Integer;
        consonantCount: Integer;
        inputText: Text;
        reversedText: Text;
        functions: Codeunit "Intern Task String Functions";

}