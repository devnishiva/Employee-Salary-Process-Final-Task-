page 65008 "Posted Salary Process Order6"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Posted Salary Process Order list';
    SourceTable = "Posted Salary Process Header6";
    CardPageId = "Posted Salary Process Order";
    Editable =false;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                    TableRelation = Employee6;
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
                field("Employee Address2"; Rec."Employee Address2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Address2 field.';
                    Caption = 'Employee Address2';
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
                field("Employee Phone No."; Rec."Employee Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Phone No. field.';
                    Caption = 'Employee Phone No.';
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year field.';
                    Caption = 'Year';
                }
                field(Month; Rec.Month)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Month field.';
                    Caption = 'Month';
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posted field.';
                    Caption = 'Posted';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                    Caption = 'Status';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                    Caption = 'Posting Date';
                }
            }
        }
    }
}