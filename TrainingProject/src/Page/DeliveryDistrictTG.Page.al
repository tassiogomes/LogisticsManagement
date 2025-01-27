page 60602 "Delivery District TG"
{
    Caption = 'Delivery District TG';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Delivery District TG";
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Code"; Rec."Code")
                {
                    ShowMandatory = true;
                }
                field(Description; Rec.Description){}
            }
        }

    }
}