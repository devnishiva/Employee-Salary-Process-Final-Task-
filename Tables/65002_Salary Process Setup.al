table 65002 "Salary Process Setup6"
{
    Caption = 'Salary Process Setup';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "Primary key"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary key';
        }
        field(2; "Employee Nos"; Code[20])
        {
            Caption = 'Employee Nos';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(3; "Salary Process Nos"; Code[20])
        {
            Caption = 'Salary Process Nos';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}