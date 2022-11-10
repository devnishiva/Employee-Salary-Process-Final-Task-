page 65001 EmployeesList6
{
    ApplicationArea = All;
    Caption = 'EmployeesList';
    PageType = List;
    SourceTable = Employee6;
    UsageCategory = Lists;
    CardPageId = EmployeeCard6;
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
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                    Caption = 'First Name';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.';
                    Caption = 'Middle Name';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                    Caption = 'Last Name';
                }
                field(Initials; Rec.Initials)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Initials field.';
                    Caption = 'Initials';
                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Search Name field.';
                    Caption = 'Search Name';
                }
                field("Job Title"; Rec."Job Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Title field.';
                    Caption = 'Job Title';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                    Caption = 'Phone No.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                    Caption = 'City';
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Country field.';
                    Caption = 'Country';
                }
                field("Poste Code"; Rec."Poste Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Poste Code field.';
                    Caption = 'Poste Code';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Picture field.';
                    Caption = 'Picture';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Address field.';
                    Caption = 'Address';
                }
                field(Address2; Rec.Address2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Address2 field.';
                    Caption = 'Address2';
                }
                field("Birt Date"; Rec."Birt Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Birt Date field.';
                    Caption = 'Birt Date';
                }
                field("E-mail"; Rec."E-mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-mail field.';
                    Caption = 'E-mail';
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Global Dimension 1 Code field.';
                    Caption = 'Global Dimension 1 Code';
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Global Dimension 2 Code field.';
                    Caption = 'Global Dimension 2 Code';
                }
            }
        }
    }
}