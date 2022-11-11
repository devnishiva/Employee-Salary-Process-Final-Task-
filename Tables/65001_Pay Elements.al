table 65001 "PayElements6"
{
    Caption = 'PayElements';
    DataClassification = CustomerContent;
    LookupPageId = PayElementsList6;
    DrillDownPageId = PayElementsList6;
    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            DataClassification = CustomerContent;
        }
        field(2; "Pay Element Code"; Code[20])
        {
            Caption = 'Pay Element Code';
            DataClassification = CustomerContent;
        }
        field(3; Discription; Text[100])
        {
            Caption = 'Discription';
            DataClassification = CustomerContent;
        }
        field(4; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(5; "Effective Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Effective Date';
        }
    }
    keys
    {
        key(PK; "Employee No.", "Pay Element Code","Effective Date")
        {
            Clustered = true;
        }
    }
}