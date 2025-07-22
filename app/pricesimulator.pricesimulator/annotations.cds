using pricesimulatorService as service from '../../srv/service';

annotate service.pricesimulatorEntity with @(
  UI.Facets: [
    {
      $Type: 'UI.ReferenceFacet',
      ID: 'GeneralInformation',
      Label: 'General Information',
      Target: '@UI.FieldGroup#GeneralInfo'
    }
  ],

  UI.FieldGroup #GeneralInfo: {
    $Type: 'UI.FieldGroupType',
    Data: [
      {
        $Type: 'UI.DataField',
        Value: cliente,
        Label: 'Cliente',
        ![@HTML5.CssDefaults]: {width: '80px'}
      },
      {
        $Type: 'UI.DataField',
        Value: precoMinimo,
        Label: 'Preço mínimo (USD/ton)',
        ![@HTML5.CssDefaults]: {width: '170px'}
      },
      {
        $Type: 'UI.DataField',
        Value: quantidade,
        Label: 'Quantidade (tons)',
        ![@HTML5.CssDefaults]: {width: '130px'}
      },
      {
        $Type: 'UI.DataField',
        Value: precoNegociado,
        Label: 'Preço negociado (USD/ton)',
        ![@HTML5.CssDefaults]: {width: '190px'}
      },
      {
        $Type: 'UI.DataField',
        Value: desconto,
        Label: 'Desconto (USD/ton)',
        ![@HTML5.CssDefaults]: {width: '140px'}
      },
      {
        $Type: 'UI.DataField',
        Value: valorNet,
        Label: 'Valor net',
        ![@HTML5.CssDefaults]: {width: '120px'},
        // Add criticality to make it green when >= 1000000
        Criticality: valorNetCriticality,
        CriticalityRepresentation: #WithoutIcon
      },
    ]
  },

  UI.LineItem: [
    {
      $Type: 'UI.DataField',
      Value: cliente,
      Label: 'Cliente',
      ![@HTML5.CssDefaults]: {width: '80px'}
    },
    {
      $Type: 'UI.DataField',
      Value: precoMinimo,
      Label: 'Preço mínimo (USD/ton)',
      ![@HTML5.CssDefaults]: {width: '170px'}
    },
    {
      $Type: 'UI.DataField',
      Value: quantidade,
      Label: 'Quantidade (tons)',
      ![@HTML5.CssDefaults]: {width: '130px'}
    },
    {
      $Type: 'UI.DataField',
      Value: precoNegociado,
      Label: 'Preço negociado (USD/ton)',
      ![@HTML5.CssDefaults]: {width: '190px'}
    },
    {
      $Type: 'UI.DataField',
      Value: desconto,
      Label: 'Desconto (USD/ton)',
      ![@HTML5.CssDefaults]: {width: '140px'}
    },
    {
      $Type: 'UI.DataField',
      Value: valorNet,
      Label: 'Valor net',
      ![@HTML5.CssDefaults]: {width: '120px'},
      // Add criticality to make it green when >= 1000000
      Criticality: valorNetCriticality,
      CriticalityRepresentation: #WithoutIcon
    }
  ],
);