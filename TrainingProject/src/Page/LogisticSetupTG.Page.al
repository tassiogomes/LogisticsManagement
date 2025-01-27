page 60601 "Logistic Setup TG"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Logistic Setup TG";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(AllowLogisticPurchase; Rec.AllowLogisticPurchase)
                {
                    Caption = 'Allow Logistic Purchase';
                    ToolTip = 'Specifies the value of the Allow Logistic for Purchasing field.';
                }
                field(AllowLogisticSales; Rec.AllowLogisticSales)
                {
                    Caption = 'AlloW Logistic Sales';
                    ToolTip = 'Specifies the value of the Allow Logistic for Sales field';
                }
                field(VolumeUnderload; Rec.VolumeUnderload)
                {
                    Caption = 'Volume Underloaded';
                    ToolTip = 'Specifies the value of the Volume Underload field.';
                }
            }
            group(NumberSeries)
            {
                field(TransportDocumentNoSeries; Rec.TransportDocumentNoSeries)
                {
                    Caption = 'Transport Document No. Series';
                    ToolTip = 'Transport Document No. Series';
                }
            }
            group(SSCC18)
            {
                
                field(GS1CompanyPrefix; Rec.GS1CompanyPrefix)
                {
                    ToolTip = 'Specifies the value of the GS1CompanyPrefix field.', Comment = '%';
                }
                field(SerialReference; Rec.SerialReference)
                {
                    ToolTip = 'Specifies the value of the Serial Reference field.', Comment = '%';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SafeGet();
    end;
}