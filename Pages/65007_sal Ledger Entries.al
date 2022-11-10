page 65007 "Salary Ledger Entries6"
{
    ApplicationArea = All;
    Caption = 'Salary Ledger Entries';
    PageType = List;
    SourceTable = "Salary Process Ledger6";
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    Caption = 'Entry No.';
                }
                field("Documnet No."; Rec."Documnet No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Documnet No. field.';
                    Caption = 'Documnet No.';
                }
                field("Document Line No."; Rec."Document Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Line No. field.';
                    Caption = 'Document Line No.';
                }
                field("Empployee No."; Rec."Empployee No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Empployee No. field.';
                    Caption = 'Empployee No.';
                }
                field("Employee Name "; Rec."Employee Name ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Name  field.';
                    Caption = 'Employee Name';
                }
                field("Pay Elemenet code"; Rec."Pay Elemenet code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay Elemenet code field.';
                    Caption = 'Pay Elemenet code';
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
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                    Caption = 'Posting Date';
                }
                field(Month; Rec.Month)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Month field.';
                    Caption = 'Month';
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year field.';
                    Caption = 'Year';
                }
            }
        }
    }
}