codeunit 50104 "Intern Task String Functions"
{
    procedure ReverseString(textVar: Text) reversedText: Text
    var
        I: Integer;
    begin
        for I := Text.StrLen(textVar) downto 1 do
            reversedText := reversedText + textVar[I];
    end;

    procedure CountVowels(textVar: Text): Integer
    begin
        exit(CountLetters(textVar, 'aąeęėiįyouųū'))
    end;

    procedure CountConsonants(textVar: Text): Integer
    begin
        exit(CountLetters(textVar, 'bcčdfghjklmnprsštvzž'))
    end;

    procedure CountLetters(textVar: Text; letters: Text) letterCount: Integer
    var
        I: Integer;

    begin
        textVar := Text.LowerCase(textVar);
        for I := 1 to Text.StrLen(textVar) do
            if letters.Contains(textVar[I]) then
                letterCount := letterCount + 1;
    end;
}