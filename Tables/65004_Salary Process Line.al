table 65004 "Salary Process Line6"
{
    Caption = 'Salary Process Line';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            DataClassification = CustomerContent;
        }
        field(4; "pay Element Code"; Code[20])
        {
            Caption = 'pay Element Code';
            DataClassification = CustomerContent;
        }
        field(5; Discription; Text[100])
        {
            Caption = 'Discription';
            DataClassification = CustomerContent;
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(7; Month; Integer)
        {
            Caption = 'Month';
            DataClassification = CustomerContent;
        }
        field(8; year; Integer)
        {
            Caption = 'year';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}