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

    procedure GetMinValue() Min: Integer
    var
        Entry: Record "Intern Task Array Entry";

    begin
        Entry.Reset();
        if (Entry.FindSet) then begin
            Min := Entry.Value;
            repeat
                if (Entry.Value < Min) then
                    Min := Entry.Value;
            until (Entry.Next = 0);
        end;
        // Entry.SetFilter("Value", '=%1', Max);
    end;

    procedure GetMaxValue() Max: Integer
    var
        Entry: Record "Intern Task Array Entry";

    begin
        Entry.Reset();
        if (Entry.FindSet) then begin
            Max := Entry.Value;
            repeat
                if (Entry.Value > Max) then
                    Max := Entry.Value;
            until (Entry.Next = 0);
        end;

        // Entry.SetFilter("Value", '=%1', Max);
    end;

    procedure GetDuplicateValueFilter() FilterQuery: Text
    var
        Entry: Record "Intern Task Array Entry";
        Specified: Record "Intern Task Array Entry";
        Duplicates: List of [Integer];
        IntValue: Integer;

    begin
        Entry.Reset();
        if (Entry.FindSet) then begin
            repeat
                Specified.Reset();
                Specified.SetFilter("Value", '=%1', Entry.Value);
                if (Specified.Count > 1) and (not Duplicates.Contains(Entry.Value)) then
                    Duplicates.Add(Entry.Value);
            until (Entry.Next = 0);
        end;


        foreach IntValue in Duplicates do begin
            FilterQuery += '=';
            FilterQuery += Format(IntValue);
            FilterQuery += '|';
        end;

        FilterQuery := FilterQuery.Remove(Text.StrLen(FilterQuery))
    end;

}