table 60601 "Logistic Setup TG"
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2;AllowLogisticPurchase; Boolean)
        {
            Caption = 'Allow Logistic for Purchasing';
            ToolTip = 'Allow Logistic for Purchasing';
        }
        field(3; AllowLogisticSales; Boolean)
        {
            Caption = 'Allow Logistic for Sales';
            ToolTip = 'Allow Logistic for Sales';
        }
        field(4; TransportDocumentNoSeries; Code[20])
        {
            Caption = 'Transport Document No. Series';
            ToolTip = 'Transport Document No. Series';
            TableRelation = "No. Series";        
        }
        field(5; VolumeUnderload; Integer)
        {
            Caption = 'Volume Underload';
            ToolTip = 'Volume of permitted underload (% of the underload rate of the total volume of the vehicle), max 50%, min 10%';
            InitValue = 10;
            trigger OnValidate()
            var
                UnderloadValueErrorLbl: Label 'The Volume of Permitted Underload must be between 10% and 50%';
            begin
                if not (VolumeUnderload in [10 .. 50]) then
                    Error(UnderloadValueErrorLbl);
            end;
        }
        field(6; GS1CompanyPrefix; Code[9])
        {
            Caption = 'GS1CompanyPrefix';
            ToolTip = 'GS1 Company Prefix, Code[9], only numbers, for SSCC18 Barcode';
        }
        field(7; SerialReference; Code[20])
        {
            Caption = 'Serial Reference';
            ToolTip = 'Serial Reference. Code[20], Table relation: No. Series, Check that it Serial No. contain only numbers, for SSCC18 Barcode';
        }
    }
    
    keys
    {
       key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
    internal procedure SafeGet()
    begin
        If not Rec.Get() then
            rec.Insert();
    end;
    
}