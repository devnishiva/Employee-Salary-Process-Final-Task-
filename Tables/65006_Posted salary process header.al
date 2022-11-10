table 65006 "Posted Salary Process Header6"
{
    Caption = 'Posted Salary Process Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            DataClassification = ToBeClassified;
        }
        field(3; "Employee Name "; Text[100])
        {
            Caption = 'Employee Name ';
            DataClassification = CustomerContent;
        }
        field(4; "employee Address"; Text[50])
        {
            Caption = 'employee Address';
            DataClassification = CustomerContent;
        }
        field(5; "Employee Address2"; Text[30])
        {
            Caption = 'Employee Address2';
            DataClassification = CustomerContent;
        }
        field(6; "Employee City"; Text[30])
        {
            Caption = 'Employee City';
            DataClassification = CustomerContent;
        }
        field(7; "Employee Poste Code"; Code[20])
        {
            Caption = 'Employee Poste Code';
            DataClassification = CustomerContent;
        }
        field(8; "Employee Country"; Code[30])
        {
            Caption = 'Employee Country';
            DataClassification = CustomerContent;
        }
        field(9; "Employee Phone No."; Text[30])
        {
            Caption = 'Employee Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }
        field(10; Year; Integer)
        {
            Caption = 'Year';
            DataClassification = CustomerContent;
        }
        field(11; Month; Integer)
        {
            Caption = 'Month';
            DataClassification = CustomerContent;
        }
        field(12; Posted; Boolean)
        {
            Caption = 'Posted';
            DataClassification = CustomerContent;
        }
        field(13; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Released;
            OptionCaption = 'Open,Released';
            DataClassification = CustomerContent;
        }
        field(14; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(15; "No. Series"; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Series';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}