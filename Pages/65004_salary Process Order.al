page 65004 "Salary Process Order6"
{
    Caption = 'Salary Process Order';
    PageType = Document;
    SourceTable = "Salary Process Header6";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                
                
                field("No."; Rec."No.")
                {
                    Enabled = editable;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                    Caption = 'No.';
                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
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
                    Enabled =editable;
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
            part(SubForm; "SubForm List6")
            {
                SubPageLink = "Document No." = field("No.");
                Caption = 'Line';
            }
        }
    }
    actions
    {

        area(Processing)
        {
            action(post)
            {
                Promoted = true;
                Image = PostDocument;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Executes the Post action.';
                ApplicationArea = All;
                Caption = 'post';
                trigger OnAction()
                var  
                    initsalaryledger: Codeunit "Salary Process ledger6";
                    postedsalPro :Record "Posted Salary Process Header6";

                begin
                    initsalaryledger.initsalaryprocessledger(Rec);
                    initsalaryledger.Run(Rec);
                    Rec.Delete();
                end;
            }
            action(Release)
            {
                ApplicationArea = All;
                Promoted = true;
                Image = ReleaseDoc;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                Caption = 'Release';
                ToolTip = 'Executes the Released action.';

                trigger OnAction()
                begin 
                end;
            }
            action(Reopen)
            {
                ApplicationArea = All;
                Promoted = true;
                Image = ReOpen;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Reopen';
                ToolTip = 'Executes the Reopen action.';
                trigger OnAction()
                begin
                end;
            }
            action(Print)
            {
                ApplicationArea = All;
                Promoted = true;
                Image = Print;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Print';
                ToolTip = 'Executes the Print action.';
                trigger OnAction()
                begin

                end;
            }


            action("pay get element")
            {
                ApplicationArea = All;
                Promoted = true;
                Image = SetupPayment;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Executes Pay get element';
                Caption = 'pay get element';
                trigger OnAction()
                var
                    LineNo: Integer;
                    payelement: Record PayElements6;
                    payelement1: Record PayElements6;
                    salaryline: Record "Salary Process Line6";
                    salaryheader: Record "Salary Process Header6";
                begin
                    LineNo := 10000;
                    salaryline.Reset();
                    salaryline.SetRange("Document No.", Rec."No.");
                    if salaryline.FindSet() then
                        Error('Alredy The Record Has been Inserted');

                    payelement.Reset();
                    payelement.SetCurrentKey("Effective Date");
                    payelement.SetRange("Employee No.", Rec."Employee No.");
                    payelement.SetFilter("Effective Date",'<%1',salaryheader."Posting Date");
                    if payelement.FindLast() then;
                    
                    payelement1.Reset();
                    payelement1.SetRange("Employee No.", Rec."Employee No."); 
                    payelement1.SetRange("Effective Date",payelement."Effective Date");
                    if payelement.FindSet() then
                    
                        repeat
                            salaryline.Init();
                            salaryline."Document No." := Rec."No.";
                            salaryline."Line No." := LineNo;
                            salaryline."Employee No." := payelement."Employee No.";
                            salaryline."pay Element Code" := payelement."Pay Element Code";
                            salaryline.Discription := payelement.Discription;
                            salaryline.Amount := payelement.Amount;
                            LineNo += 10000;
                            salaryline.Insert();
                        until payelement.Next() = 0;
                    Message('Employee No %1 is inserted', SalaryLine."Employee No.");
                end;
            }
        }
    }
    var
     editable :Boolean;
    
}