page 65002 "PayElementsList6"
{
    ApplicationArea = All;
    Caption = 'Pay Elements';
    PageType = List;
    SourceTable = "PayElements6";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee No. field.';
                    Caption = 'Employee No.';
                }
                field("Pay Element Code"; Rec."Pay Element Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay Element Code field.';
                    Caption = 'Pay Element Code';
                }
                field(Discription; Rec.Discription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discription field.';
                    Caption = 'Discription';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                    Caption = 'Amount';
                }
                field("Effective Date"; Rec."Effective Date")
                {
                    ApplicationArea = All;
                    Caption = 'Effective Date';
                    ToolTip = 'Specifies the value of the Effective date field.';
                }
            }
        }
    }
}