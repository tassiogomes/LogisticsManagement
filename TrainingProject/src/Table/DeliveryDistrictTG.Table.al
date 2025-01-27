table 60602 "Delivery District TG"
{
    Caption = 'Delivery District';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Delivery Code';
            ToolTip = 'Specifies the code of the district';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Delivery Description';
            ToolTip = 'Specifies the description of the district';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    begin
        // TODO: Disallow delete if exists in source document
    end;
}
