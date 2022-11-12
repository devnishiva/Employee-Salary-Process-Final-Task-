table 65000 Employee6
{
    Caption = 'Employee';
    DataClassification = CustomerContent;
    DataCaptionFields = "No.", "First Name";
    LookupPageId = EmployeesList6;
    DrillDownPageId = EmployeesList6;
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(2; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = CustomerContent;
        }
        field(3; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = CustomerContent;
        }
        field(4; "Last Name"; Text[30])
        {
            Caption = 'Last Name';
            DataClassification = CustomerContent;
        }
        field(5; Initials; Text[30])
        {
            Caption = 'Initials';
            DataClassification = CustomerContent;
        }
        field(6; "Job Title"; Text[30])
        {
            Caption = 'Job Title';
            DataClassification = CustomerContent;
        }
        field(7; "Search Name"; Code[30])
        {
            Caption = 'Search Name';
            DataClassification = CustomerContent;
        }
        field(8; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(9; Address2; Text[50])
        {
            Caption = 'Address2';
            DataClassification = CustomerContent;
        }
        field(10; City; Text[50])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
            TableRelation = Location.Name;
            ValidateTableRelation = false;
        }
        field(11; "Poste Code"; Code[20])
        {
            Caption = 'Poste Code';
            DataClassification = CustomerContent;
            TableRelation = "Post Code";
        }
        field(12; Country; Text[30])
        {
            Caption = 'Country';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region".Name;
            ValidateTableRelation = false;
        }
        field(13; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;

        }
        field(14; "E-mail"; Text[80])
        {
            Caption = 'E-mail';
            DataClassification = CustomerContent;
            ExtendedDatatype = EMail;
        }
        field(15; Picture; Blob)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
        field(16; "Birt Date"; Date)
        {
            Caption = 'Birt Date';
            DataClassification = CustomerContent;
        }
        field(17; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            DataClassification = CustomerContent;
        }
        field(18; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            DataClassification = CustomerContent;
        }
        field(19; "No. Series"; Code[30])
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
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "First Name", "Job Title")
        {

        }
    }
    
    trigger OnInsert()
    var
        SalarySetup: Record "Salary Process Setup6";
    begin
        IF "No." = '' THEN BEGIN
            SalarySetup.GET();
            SalarySetup.TESTFIELD("Employee Nos");
            NoSeriesMgt.InitSeries(SalarySetup."Employee Nos", xRec."No. Series", 0D, "No.", "No. Series");
        END;
    end;

    var
        employeep: Record Employee6;
        employeen: Record Employee6;
        SalarySetup: Record "Salary Process Setup6";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    procedure AssistEdit1(employeep: Record Employee6): Boolean
    begin
        employeen := Rec;
        SalarySetup.Get();
        SalarySetup.TestField("Employee Nos");
        IF NoSeriesMgt.SelectSeries(salarysetup."Salary Process Nos", employeep."No. Series", "No. Series") THEN BEGIN
            NoSeriesMgt.SetSeries("No.");
            rec := employeen;
            exit(true);
        end;
    end;
}