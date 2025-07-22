namespace pricesimulatorNamespace;

entity pricesimulatorEntity
{
    key ID : UUID;
    cliente : String;
    precoMinimo : String;
    quantidade : String;
    precoNegociado : String;
    desconto : String;
    valorNet : String @Core.Computed;
}
