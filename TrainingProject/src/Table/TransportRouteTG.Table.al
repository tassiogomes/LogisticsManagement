table 60604 "Transport Route TG"
{
    Caption = 'Transport Route TG';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Route Code';
            ToolTip = 'Route Code';

            trigger OnValidate()
            var
                Regex: Codeunit Regex;
                FormatCodeErr: Label 'The %1 must be exactly 4 characters: 2 uppercase letters followed by 2 digits.', Comment = '%1 - Field Caption';
            begin
                if not Regex.IsMatch(Code, '^[A-Z]{2}\d{2}$') then
                    Error(FormatCodeErr, FieldCaption(Code));
            end;

        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            ToolTip = 'Description';
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    begin
        // TODO: Disallow delete if exists in source document
    end;

}