page 60603 "Transport Routes TG"
{
    ApplicationArea = All;
    Caption = 'Transport Routes';
    PageType = List;
    SourceTable = "Transport Route TG";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Info)
            {
                field(Code; Rec.Code)
                {
                    ShowMandatory = true;
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }
}
