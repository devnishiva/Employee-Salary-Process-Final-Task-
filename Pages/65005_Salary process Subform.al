page 65005 "SubForm List6"
{
    ApplicationArea = All;
    Caption = 'SubForm List';
    PageType = ListPart;
    SourceTable = "Salary Process Line6";
    UsageCategory = Lists;
    Editable = false;
    DelayedInsert = true;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document No. field.';
                    Caption = 'Document No.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Caption = 'Line No.';
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee No. field.';
                    Caption = 'Employee No.';
                }
                field("pay Element Code"; Rec."pay Element Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the pay Element Code field.';
                    Caption = 'pay Element Code';
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
                field(Month; Rec.Month)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Month field.';
                    Caption = 'Month';
                }
                field(year; Rec.year)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the year field.';
                    Caption = 'year';
                }
            }
        }
    }
}