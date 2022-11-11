codeunit 65001 "Salary Process ledger6"
{
    TableNo = "Salary Process Header6";
    trigger OnRun()
    var
        "LineNo.": Integer;
    begin
        salaryProcheader.Copy(Rec);
        postedsalhed.Init();
        postedsalhed."No." := salaryProcheader."No.";
        postedsalhed."Employee No." := salaryProcheader."Employee No.";
        postedsalhed."Employee Name " := salaryProcheader."Employee Name ";
        postedsalhed."Employee City" := salaryProcheader."Employee City";
        postedsalhed."Employee Poste Code" := salaryProcheader."Employee Poste Code";
        postedsalhed."employee Address" := salaryProcheader."employee Address";
        postedsalhed."Employee Address2" := salaryProcheader."Employee Address2";
        postedsalhed."Employee Country" := salaryProcheader."Employee Country";
        postedsalhed."Employee Phone No." := salaryProcheader."Employee Phone No.";
        postedsalhed.Year := salaryProcheader.Year;
        postedsalhed.Month := salaryProcheader.Month;
        postedsalhed.Status := salaryProcheader.Status;
        postedsalhed.Posted := salaryProcheader.Posted;
        postedsalhed.Insert();

        "LineNo." := 10000;
        salaryprocline.Reset();
        salaryprocline.SetRange("Document No.", salaryProcheader."No.");
        if salaryprocline.FindSet() then
            repeat
                postedsalprocline.Init();
                postedsalprocline."Document No." := Rec."No.";
                postedsalprocline."Line No." := "LineNo.";
                postedsalprocline."Employee No." := Payelement."Employee No.";
                postedsalprocline."pay Element Code" := Payelement."Pay Element Code";
                postedsalprocline.Discription := Payelement.Discription;
                postedsalprocline.Amount := Payelement.Amount;
                postedsalprocline.Month := salaryProcheader.Month;
                postedsalprocline.year := salaryProcheader.Year;
                "LineNo." += 10000;
                postedsalprocline.Insert();
            until salaryprocline.Next() = 0;
        Rec := salaryProcheader;
        salaryprocline.DeleteAll();
    end;

    procedure initsalaryprocessledger(salaryheader: Record "Salary Process Header6")
    begin
        salaryled.Reset();
        salaryled.SetRange("Documnet No.", salaryheader."No.");
        if salaryled.FindFirst() then
            Message('already exited Records');

        salaryprocline.Reset();
        salaryprocline.SetRange("Document No.", salaryheader."No.");
        if salaryprocline.FindSet() then
            repeat
                salaryprocline.Init();
                Clear(salaryled);
                salaryled."Documnet No." := salaryprocline."Document No.";
                salaryled."Document Line No." := salaryprocline."Line No.";
                salaryled."Empployee No." := salaryprocline."Employee No.";
                salaryled."Employee Name " := salaryheader."Employee Name ";
                salaryled."Pay Elemenet code" := salaryprocline."pay Element Code";
                salaryled.Discription := salaryprocline.Discription;
                salaryled.Amount := salaryprocline.Amount;
                salaryled."Posting Date" := salaryheader."Posting Date";
                salaryled.Month := salaryprocline.Month;
                salaryled.Year := salaryprocline.year;
                salaryled.Insert();
            until salaryprocline.Next() = 0;
        //Message('The Record Has been Inserted');
    end;

    var
        salaryprocline: Record "Salary Process Line6";
        salaryled: Record "Salary Process Ledger6";
        salaryProcheader: Record "Salary Process Header6";
        postedsalhed: Record "Posted Salary Process Header6";
        postedsalprocline: Record "Posted Salary Process Line6";
        Payelement: Record PayElements6;
}