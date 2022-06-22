page 50103 "Intern Task Array"
{
    PageType = List;
    SourceTable = "Intern Task Array Entry";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = basic; }
                field("Value"; "Value") { ApplicationArea = basic; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Intern String Tasks")
            {
                ApplicationArea = All;

                RunObject = page "Intern Task String";
            }

            action("Generate Entries")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    functions.GenerateTaskArrayEntries(100, 100);
                end;
            }

            action("Min Value")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    SetFilter("Value", '=%1', functions.GetMinValue());
                end;
            }

            action("Max Value")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    SetFilter("Value", '=%1', functions.GetMaxValue());
                end;
            }

            action("Duplicate Values")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    SetFilter("Value", functions.GetDuplicateValueFilter());
                end;
            }
        }
    }

    var
        functions: Codeunit "Intern Task Array Functions";

}

