page 65006 "Salary Orders6"
{
    ApplicationArea = All;
    Caption = 'Salary Orders';
    PageType = List;
    SourceTable = "Salary Process Header6";
    UsageCategory = Lists;
    CardPageId = "Salary Process Order6";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                    Caption = 'No.';
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee No. field.';
                    Caption = 'Employee No.';
                }
                field("Employee Name "; Rec."Employee Name ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Name  field.';
                    Caption = 'Employee Name ';
                }
                field("employee Address"; Rec."employee Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the employee Address field.';
                    Caption = 'employee Address';
                }
                field("Employee City"; Rec."Employee City")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee City field.';
                    Caption = 'Employee City';
                }
                field("Employee Poste Code"; Rec."Employee Poste Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Poste Code field.';
                    Caption = 'Employee Poste Code';
                }
                field("Employee Country"; Rec."Employee Country")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Country field.';
                    Caption = 'Employee Country';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                    Caption = 'Posting Date';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                    Caption = 'Status';
                }
            }
        }
    }
}