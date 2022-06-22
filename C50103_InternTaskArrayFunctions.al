codeunit 50103 "Intern Task Array Functions"
{
    procedure GenerateTaskArrayEntries(count: Integer; maxValue: Integer)
    var
        I: Integer;
        Entry: Record "Intern Task Array Entry";

    begin
        for I := 1 to 100 do begin
            Entry.Init;
            Entry."No." := 0;

            Entry.Value := Random(maxValue);
            Entry.Insert(true, false);
        end;
    end;

    procedure FindMin() Min: Integer
    var
        Entry: Record "Intern Task Array Entry";

    begin
        Min := 10000;
        Entry.Reset();
        if (Entry.FindSet) then
            repeat
                if (Entry.Value < Min) then
                    Min := Entry.Value;
            until (Entry.Next = 0);

        // Entry.SetFilter("Value", '=%1', Min);
    end;

    procedure FindMax() Max: Integer
    var
        Entry: Record "Intern Task Array Entry";

    begin
        Entry.Reset();
        if (Entry.FindSet) then
            repeat
                if (Entry.Value > Max) then
                    Max := Entry.Value;
            until (Entry.Next = 0);

        // Entry.SetFilter("Value", '=%1', Max);
    end;

}