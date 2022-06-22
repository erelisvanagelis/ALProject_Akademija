pageextension 50101 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(General)
        {
            field("Surname"; "Surname")
            {
                Caption = 'Pavarde';
            }

            field("Birth date"; "BirthDate")
            {
                Caption = 'Gimimo Metai';
            }
        }
    }

    actions
    {
        addfirst(processing)
        {
            action("Message")
            {
                Caption = 'Message';

                trigger OnAction();
                begin
                    Message('Sveiki');
                end;
            }
        }
    }
}

tableextension 50102 CustomerTableExtension extends Customer
{
    fields
    {
        // Adding a new table field in the 'Customer' table
        field(50001; Surname; Text[100]) { }
        field(50002; BirthDate; Date) { }
    }
}