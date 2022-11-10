table 65005 "Salary Process Ledger6"
{
    Caption = 'Salary Process Ledger';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Documnet No."; Code[20])
        {
            Caption = 'Documnet No.';
            DataClassification = CustomerContent;
        }
        field(3; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            DataClassification = CustomerContent;
        }
        field(4; "Empployee No."; Code[20])
        {
            Caption = 'Empployee No.';
            DataClassification = CustomerContent;
        }
        field(5; "Employee Name "; Text[100])
        {
            Caption = 'Employee Name ';
            DataClassification = CustomerContent;
        }
        field(6; "Pay Elemenet code"; Code[20])
        {
            Caption = 'Pay Elemenet code';
            DataClassification = CustomerContent;
        }
        field(7; Discription; Text[100])
        {
            Caption = 'Discription';
            DataClassification = CustomerContent;
        }
        field(8; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(10; Month; Integer)
        {
            Caption = 'Month';
            DataClassification = CustomerContent;
        }
        field(11; Year; Integer)
        {
            Caption = 'Year';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}