using { pricesimulatorNamespace as my } from '../db/schema.cds';

@path : '/service/pricesimulatorService'
service pricesimulatorService
{
    @odata.draft.enabled
    entity pricesimulatorEntity as
        projection on my.pricesimulatorEntity {
            *,
            // Calculate valorNet = (precoNegociado - desconto) * quantidade
            ((coalesce(precoNegociado, 0) - coalesce(desconto, 0)) * coalesce(quantidade, 0)) as valorNet : Decimal(15,2) 
                @title: 'Valor Líquido' 
                @readonly,

            // Criticality for color coding (3=Green for values >= 1000000, 0=Default for others)
            case 
                when ((coalesce(precoNegociado, 0) - coalesce(desconto, 0)) * coalesce(quantidade, 0)) >= 1000000 
                then 3
                else 0
            end as valorNetCriticality : Integer 
                @title: 'Criticality' 
                @readonly
        }
}

annotate pricesimulatorService with @requires :
[
    'authenticated-user'
];