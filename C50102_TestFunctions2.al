codeunit 50102 "Test Fuction2"
{
    trigger OnRun()
    begin

    end;

    procedure ShowMessage(textVar: Text)
    var
        resultVar: Text;
    begin
        resultVar := textVar + 'Papildytas tekstas';
        Message(resultVar);
    end;

    var
        myInt: Integer;
}