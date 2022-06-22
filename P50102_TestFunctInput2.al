page 50102 "Test Input Page2"
{
    Caption = 'Test Input Page2';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; inputText)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'Vykdyti i';
                trigger OnAction()

                var
                    functions: Codeunit "Test Fuction2";
                begin
                    functions.ShowMessage(inputText);
                end;
            }
        }
    }

    var
        myInt: Integer;

        inputText: Text;


}