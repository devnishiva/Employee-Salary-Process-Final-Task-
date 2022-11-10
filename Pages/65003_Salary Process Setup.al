page 65003 "Salary & Process Setup1"
{
    Caption = 'Salary & Process Setup';
    PageType = Card;
    SourceTable = "Salary Process Setup6";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Employee Nos"; Rec."Employee Nos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employee Nos field.';
                    Caption = 'Employee Nos';
                }
                field("Salary Process Nos"; Rec."Salary Process Nos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Salary Process Nos field.';
                    Caption = 'Salary Process Nos';
                }
            }
        }
    }
}
