report 65001 "Salary Process  Report6"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Salary Process  Report6';
    RDLCLayout = './Salary Process  Report6.rdl';

    dataset
    {
        dataitem("Salary Process Header6"; "Salary Process Header6")
        {
            column(Employee_No_; "Employee No.")
            {

            }
            column(Employee_Name_; "Employee Name ")
            {

            }
            column(employee_Address; "employee Address")
            {

            }
            column(Employee_Address2; "Employee Address2")
            {

            }
            column(Employee_City; "Employee City")
            {

            }
            column(Employee_Country; "Employee Country")
            {

            }
            column(Employee_Poste_Code; "Employee Poste Code")
            {

            }
            column(Employee_Phone_No_; "Employee Phone No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Month; Month)
            {

            }
            column(Year; Year)
            {

            }
            dataitem("Salary Process Line6"; "Salary Process Line6")
            {
                DataItemLinkReference = "Salary Process Header6";
                DataItemLink = "Document No." = field("No.");
                column(Document_No_; "Document No.")
                {

                }
                column(pay_Element_Code; "pay Element Code")
                {

                }
                column(Discription; Discription)
                {

                }
                column(Amount; Amount)
                {

                }
            }
        }
    }

    trigger OnPreReport()
    begin
        Company.get();
        Company.CalcFields(Picture);
    end;

    var
        myInt: Integer;
        Company: Record "Company Information";
}