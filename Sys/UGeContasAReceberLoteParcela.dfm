inherited frmGeContasAReceberLoteParcela: TfrmGeContasAReceberLoteParcela
  ActiveControl = dbCliente
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = 'Contas A Receber - Incluir Lote (Parcelas)'
  ClientHeight = 522
  ClientWidth = 702
  ExplicitWidth = 716
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  object lblInforme: TLabel
    Left = 8
    Top = 486
    Width = 320
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = 
      'Favor verificar os dados do lan'#231'amento antes de confirmar o lote' +
      ' de parcelas.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Bevel1: TBevel
    Left = 0
    Top = 155
    Width = 702
    Height = 4
    Align = alTop
    Shape = bsSpacer
    ExplicitTop = 81
    ExplicitWidth = 551
  end
  object Bevel2: TBevel
    Left = 0
    Top = 476
    Width = 702
    Height = 4
    Align = alTop
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsSpacer
    ExplicitTop = 313
    ExplicitWidth = 551
  end
  object btnConfirmar: TcxButton
    Left = 531
    Top = 484
    Width = 83
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Confirmar'
    Enabled = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360800000000000036000000280000002000000010000000010020000000
      000000000000C40E0000C40E000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C068
      60FFB05850FFA05050FFA05050FFA05050FF904850FF904840FF904840FF8040
      40FF803840FF803840FF703840FF703830FF0000FF000000FF000000FF006E6E
      6EFF5E5E5EFF585858FF585858FF585858FF515151FF4C4C4CFF4C4C4CFF4646
      46FF414141FF414141FF404040FF3B3B3BFF0000FF000000FF00D06870FFF090
      90FFE08080FFB04820FF403020FFC0B8B0FFC0B8B0FFD0C0C0FFD0C8C0FF5050
      50FFA04030FFA04030FFA03830FF703840FF0000FF000000FF00747474FF9999
      99FF898989FF464646FF2C2C2CFFB6B6B6FFB6B6B6FFC1C1C1FFC6C6C6FF5050
      50FF444444FF444444FF404040FF404040FF0000FF000000FF00D07070FFFF98
      A0FFF08880FFE08080FF705850FF404030FF907870FFF0E0E0FFF0E8E0FF9080
      70FFA04030FFA04040FFA04030FF803840FF0000FF000000FF00797979FFA4A4
      A4FF909090FF898989FF585858FF3B3B3BFF787878FFE1E1E1FFE6E6E6FF7C7C
      7CFF444444FF494949FF444444FF414141FF0000FF000000FF00D07870FFFFA0
      A0FFF09090FFF08880FF705850FF000000FF404030FFF0D8D0FFF0E0D0FF8078
      60FFB04840FFB04840FFA04040FF804040FF0000FF000000FF007E7E7EFFA9A9
      A9FF999999FF909090FF585858FF000000FF3B3B3BFFD8D8D8FFDCDCDCFF7171
      71FF505050FF505050FF494949FF464646FF0000FF000000FF00D07880FFFFA8
      B0FFFFA0A0FFF09090FF705850FF705850FF705850FF705850FF706050FF8068
      60FFC05850FFB05050FFB04840FF804040FF0000FF000000FF00838383FFB3B3
      B3FFA9A9A9FF999999FF585858FF585858FF585858FF585858FF5C5C5CFF6868
      68FF606060FF595959FF505050FF464646FF0000FF000000FF00E08080FFFFB0
      B0FFFFB0B0FFFFA0A0FFF09090FFF08880FFE08080FFE07880FFD07070FFD068
      70FFC06060FFC05850FFB05050FF904840FF0000FF000000FF00898989FFB7B7
      B7FFB7B7B7FFA9A9A9FF999999FF909090FF898989FF848484FF797979FF7474
      74FF696969FF606060FF595959FF4C4C4CFF0000FF000000FF00E08890FFFFB8
      C0FFFFB8B0FFD06060FFC06050FFC05850FFC05040FFB05030FFB04830FFA040
      20FFA03810FFC06060FFC05850FF904840FF0000FF000000FF00939393FFC1C1
      C1FFBCBCBCFF6B6B6BFF646464FF606060FF565656FF505050FF4B4B4BFF4040
      40FF363636FF696969FF606060FF4C4C4CFF0000FF000000FF00E09090FFFFC0
      C0FFD06860FFFFFFFFFFFFFFFFFFFFF8F0FFF0F0F0FFF0E8E0FFF0D8D0FFE0D0
      C0FFE0C8C0FFA03810FFC06060FF904850FF0000FF000000FF00989898FFC6C6
      C6FF707070FFFFFFFFFFFFFFFFFFF6F6F6FFF0F0F0FFE6E6E6FFD8D8D8FFCCCC
      CCFFC8C8C8FF363636FF696969FF515151FF0000FF000000FF00E098A0FFFFC0
      C0FFD07070FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFF0F0F0FFF0E8E0FFF0D8
      D0FFE0D0C0FFA04020FFD06860FFA05050FF0000FF000000FF00A1A1A1FFC6C6
      C6FF797979FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFF0F0F0FFE6E6E6FFD8D8
      D8FFCCCCCCFF404040FF707070FF585858FF0000FF000000FF00F0A0A0FFFFC0
      C0FFE07870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFF0F0F0FFF0E8
      E0FFF0D8D0FFB04830FFD07070FFA05050FF0000FF000000FF00A8A8A8FFC6C6
      C6FF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFF0F0F0FFE6E6
      E6FFD8D8D8FF4B4B4BFF797979FF585858FF0000FF000000FF00F0A8A0FFFFC0
      C0FFE08080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0FFF0F0
      F0FFF0E8E0FFB05030FFE07880FFA05050FF0000FF000000FF00ACACACFFC6C6
      C6FF898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFF0F0
      F0FFE6E6E6FF505050FF848484FF585858FF0000FF000000FF00F0B0B0FFFFC0
      C0FFF08890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8
      F0FFF0F0F0FFC05040FF603030FFB05850FF0000FF000000FF00B6B6B6FFC6C6
      C6FF949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
      F6FFF0F0F0FF565656FF343434FF5E5E5EFF0000FF000000FF00F0B0B0FFFFC0
      C0FFFF9090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF8F0FFC05850FFB05860FFB05860FF0000FF000000FF00B6B6B6FFC6C6
      C6FF9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6F6F6FF606060FF636363FF636363FF0000FF000000FF00F0B8B0FFF0B8
      B0FFF0B0B0FFF0B0B0FFF0A8B0FFF0A0A0FFE098A0FFE09090FFE09090FFE088
      90FFE08080FFD07880FFD07870FFD07070FF0000FF000000FF00BBBBBBFFBBBB
      BBFFB6B6B6FFB6B6B6FFB1B1B1FFA8A8A8FFA1A1A1FF989898FF989898FF9393
      93FF898989FF838383FF7E7E7EFF797979FF0000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00}
    OptionsImage.NumGlyphs = 2
    TabOrder = 0
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TcxButton
    Left = 619
    Top = 484
    Width = 83
    Height = 33
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancelar'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360800000000000036000000280000002000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000707070FF505850FF000000FFD0C0AEFF00FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000707070FF545454FF000000FFBCBCBCFF00FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000B0A090FF7C644DFFAD957FFFA0A0A0FFFFFFFFFF5090B0FF101010FF988A
      76FF7B6149FF604830FF604830FF00FF000000FF000000FF000000FF000000FF
      00009C9C9CFF5F5F5FFF909090FFA0A0A0FFFFFFFFFF939393FF101010FF8585
      85FF5C5C5CFF434343FF434343FF00FF000000FF000000FF000000FF000000FF
      0000D6BAA8FFFFFFFFFFF0E8E0FFA0A0A0FF90B8C0FF70D0E0FF5098B0FF1010
      10FFA09890FFB0A090FF604830FF00FF000000FF000000FF000000FF000000FF
      0000B7B7B7FFFFFFFFFFE6E6E6FFA0A0A0FFB6B6B6FFCBCBCBFF989898FF1010
      10FF969696FF9C9C9CFF434343FF00FF000000FF000000FF0000B7B3DAFF0E2B
      DFFFB8ABBDFFFFFFFFFFFFFFFFFFE0E0E0FF50A0B0FF60A8E0FF60C0D0FF5098
      B0FF101010FF909090FF7A5F46FF00FF000000FF000000FF0000BFBFBFFF5E5E
      5EFFB1B1B1FFFFFFFFFFFFFFFFFFE0E0E0FF9C9C9CFFB1B1B1FFBBBBBBFF9898
      98FF101010FF909090FF5A5A5AFF00FF000000FF000000FF00000028FFFF0020
      F0FF4050D0FFFFFFFFFFFFFFFFFFFFFFFFFF4050E0FF0010B0FF90E0F0FF60C0
      D0FF5098B0FF101010FF8B7D72FF00FF000000FF000000FF0000646464FF5B5B
      5BFF747474FFFFFFFFFFFFFFFFFFFFFFFFFF797979FF3E3E3EFFDCDCDCFFBBBB
      BBFF989898FF101010FF7B7B7BFF00FF000000FF000000FF00002D51FCFF1038
      FFFF0028FFFFF0F8FFFFFFFFFFFF9098F0FF0018C0FF6078E0FF60A8B0FF90E0
      F0FF60C0D0FF5098B0FF101010FFCBAF98FF00FF000000FF0000808080FF6F6F
      6FFF646464FFF9F9F9FFFFFFFFFFB1B1B1FF484848FF949494FFA3A3A3FFDCDC
      DCFFBBBBBBFF989898FF101010FFAAAAAAFF00FF000000FF0000E7D7DBFF3050
      FFFF2040FFFF90A0F0FFC0C8F0FF0028F0FF4058F0FFFFF8F0FFD0D8E0FF70B0
      C0FF90E0F0FF70C8E0FF808880FF303890FFB19595FF00FF0000D9D9D9FF8181
      81FF767676FFB6B6B6FFD3D3D3FF606060FF838383FFF6F6F6FFD9D9D9FFAEAE
      AEFFDCDCDCFFC6C6C6FF848484FF515151FF979797FF00FF000000FF0000DCD0
      DCFF4060FFFF3050FFFF2040FFFF3050FFFFFFF8FFFFFFFFFFFFFFF8F0FFD0D8
      E0FF80B0C0FFD0B8B0FF7088D0FF6070B0FF303890FF00FF000000FF0000D4D4
      D4FF8C8C8CFF818181FF767676FF818181FFFAFAFAFFFFFFFFFFF6F6F6FFD9D9
      D9FFB0B0B0FFB8B8B8FF9B9B9BFF818181FF515151FF00FF000000FF000000FF
      0000B8B5D1FF4068FFFF4060FFFFD0D8FFFFFFFFFFFFFFFFFFFFFFF8FFFFF0F0
      F0FFD0D8D0FF6070B0FF7090E0FF6078D0FF6070B0FF00FF000000FF000000FF
      0000BDBDBDFF919191FF8C8C8CFFE2E2E2FFFFFFFFFFFFFFFFFFFAFAFAFFF0F0
      F0FFD4D4D4FF818181FFA4A4A4FF909090FF818181FF00FF000000FF0000C6C4
      E2FF6078FFFF6078FFFF6080FFFF5070FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFF8
      F0FFF0F0F0FFB0A0A0FF6070B0FF6070B0FFD1B2A5FF00FF000000FF0000CDCD
      CDFF9E9E9EFF9E9E9EFFA2A2A2FF979797FFF4F4F4FFFFFFFFFFFFFFFFFFF6F6
      F6FFF0F0F0FFA1A1A1FF818181FF818181FFB1B1B1FF00FF0000B1B6E9FF5078
      FFFF5078FFFFC0D0FFFFFFFFFFFF7088FFFF6078FFFFD0E0FFFFFFFFFFFFFFFF
      FFFFB0A090FFB0A090FF96785EFF00FF000000FF000000FF0000C4C4C4FF9C9C
      9CFF9C9C9CFFDCDCDCFFFFFFFFFFA9A9A9FF9E9E9EFFE7E7E7FFFFFFFFFFFFFF
      FFFF9C9C9CFF9C9C9CFF737373FF00FF000000FF0000859BF3FF5078FFFF5078
      FFFFC8BED1FFFFFFFFFFFFFFFFFFFFFFFFFFB0C8FFFF8098FFFFFFFFFFFFB0A0
      90FF806850FF806050FF604830FF00FF000000FF0000B3B3B3FF9C9C9CFF9C9C
      9CFFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6FFB4B4B4FFFFFFFFFF9C9C
      9CFF636363FF5E5E5EFF434343FF00FF000000FF0000859BF3FF6585FAFFDCD2
      DCFFD8C7B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8
      90FFD0C8C0FF806850FFDEBAA5FF00FF000000FF0000B3B3B3FFA4A4A4FFD6D6
      D6FFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3
      A3FFC6C6C6FF636363FFB7B7B7FF00FF000000FF000000FF000000FF000000FF
      0000D0C0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8
      A0FF807060FFDFBDA7FF00FF000000FF000000FF000000FF000000FF000000FF
      0000BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FF6C6C6CFFB9B9B9FF00FF000000FF000000FF000000FF000000FF000000FF
      0000E0C0B0FFE0C0B0FFE0C0B0FFE0C0B0FFE0C0B0FFD0C0B0FFD0B8B0FFD0B0
      A0FFE0BEAAFF00FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000BEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBCBCBCFFB8B8B8FFAEAE
      AEFFBBBBBBFF00FF000000FF000000FF000000FF0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object GrpBxLancamento: TGroupBox
    Left = 0
    Top = 0
    Width = 702
    Height = 155
    Align = alTop
    Caption = 'Dados nominais'
    TabOrder = 2
    object lblEmpresa: TLabel
      Left = 16
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Enabled = False
      FocusControl = dbEmpresa
    end
    object lblCliente: TLabel
      Left = 279
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      FocusControl = dbCliente
    end
    object lblEmissao: TLabel
      Left = 17
      Top = 104
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
      FocusControl = dbEmissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblFormaPagto: TLabel
      Left = 279
      Top = 64
      Width = 106
      Height = 13
      Caption = '&Forma de Pagamento:'
      FocusControl = dbFormaPagto
    end
    object lblBanco: TLabel
      Left = 430
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Banco:'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblNotaFiscal: TLabel
      Left = 128
      Top = 104
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
      Enabled = False
      FocusControl = dbNotaFiscal
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 64
      Width = 78
      Height = 13
      Caption = '&Tipo de Receita:'
      FocusControl = dbTipoReceita
    end
    object dbEmpresa: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 257
      Height = 21
      DataField = 'Empresa'
      DataSource = dtsDadosNominais
      DropDownRows = 10
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CNPJ'
      ListField = 'RAZAO'
      ListSource = dtsEmpresa
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbCliente: TJvDBComboEdit
      Left = 279
      Top = 40
      Width = 410
      Height = 21
      ButtonHint = 'Pesquisar Cliente (Ctrl+P)'
      CharCase = ecUpperCase
      ClickKey = 16464
      Color = clMoneyGreen
      DataField = 'ClienteNome'
      DataSource = dtsDadosNominais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
        AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
        6048306048306048306048306048306048306048306048306048305048403050
        604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
        FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
        D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
        FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
        E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
        7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
        FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
        B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
        7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
        FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
        8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
        F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
        FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
        5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
        F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
        FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
        6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
        FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
        FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
        951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
        FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
        FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
        B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
        7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
        FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
        B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
        7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
        B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
        B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
        B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
        E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      OnButtonClick = dbClienteButtonClick
    end
    object dbEmissao: TJvDBDateEdit
      Left = 17
      Top = 120
      Width = 105
      Height = 21
      DataField = 'Emissao'
      DataSource = dtsDadosNominais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 5
    end
    object dbFormaPagto: TDBLookupComboBox
      Left = 279
      Top = 80
      Width = 145
      Height = 21
      DataField = 'FormaPagto'
      DataSource = dtsDadosNominais
      DropDownRows = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD'
      ListField = 'DESCRI'
      ListSource = dtsFormaPagto
      ParentFont = False
      TabOrder = 3
    end
    object dbBanco: TDBLookupComboBox
      Left = 430
      Top = 80
      Width = 259
      Height = 21
      DataField = 'Banco'
      DataSource = dtsDadosNominais
      DropDownRows = 10
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'BCO_COD'
      ListField = 'BCO_NOME'
      ListSource = dtsBanco
      ParentFont = False
      TabOrder = 4
    end
    object dbNotaFiscal: TDBEdit
      Left = 128
      Top = 120
      Width = 89
      Height = 21
      DataField = 'NotaFiscal'
      DataSource = dtsDadosNominais
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbTipoReceita: TDBLookupComboBox
      Left = 16
      Top = 80
      Width = 257
      Height = 21
      DataField = 'TipoReceita'
      DataSource = dtsDadosNominais
      DropDownRows = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD'
      ListField = 'TIPOREC'
      ListSource = dtsTpReceita
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlParcelas: TPanel
    Left = 0
    Top = 159
    Width = 702
    Height = 317
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel3: TBevel
      Left = 305
      Top = 0
      Width = 4
      Height = 317
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 0
      ExplicitHeight = 702
    end
    object GrpBxParametros: TGroupBox
      Left = 0
      Top = 0
      Width = 305
      Height = 317
      Align = alLeft
      Caption = 'Dados para gerar o lote de parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        305
        317)
      object lblNumeroParcelasX: TLabel
        Left = 16
        Top = 31
        Width = 161
        Height = 11
        Caption = 'N'#250'mero de parcelas....:'
        FocusControl = dbNumeroParcelas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object lblValorTotalX: TLabel
        Left = 16
        Top = 56
        Width = 161
        Height = 11
        Caption = 'Valor Total (R$)......:'
        FocusControl = dbValorTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object lblDiaVencimentoX: TLabel
        Left = 16
        Top = 108
        Width = 161
        Height = 11
        Caption = 'Dia de vencimento.....:'
        FocusControl = dbDiaVencimento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object lblNumeroDiasX: TLabel
        Left = 16
        Top = 133
        Width = 161
        Height = 11
        Caption = 'Gerar vencimento a cada'
        FocusControl = dbNumeroDias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 232
        Top = 133
        Width = 42
        Height = 11
        Caption = 'dia(s)'
        FocusControl = dbNumeroDias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object lblPrimeiroVencimentoX: TLabel
        Left = 16
        Top = 82
        Width = 161
        Height = 11
        Caption = 'Primeiro vencimento...:'
        FocusControl = dbPrimeiroVencimento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object dbNumeroParcelas: TDBEdit
        Left = 183
        Top = 28
        Width = 43
        Height = 19
        DataField = 'NumeroParcelas'
        DataSource = dtsDadosNominais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbValorTotal: TDBEdit
        Left = 183
        Top = 53
        Width = 111
        Height = 19
        DataField = 'ValorTotal'
        DataSource = dtsDadosNominais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbDiaVencimento: TDBEdit
        Left = 183
        Top = 105
        Width = 43
        Height = 19
        DataField = 'DiaVencimento'
        DataSource = dtsDadosNominais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbNumeroDias: TDBEdit
        Left = 183
        Top = 130
        Width = 43
        Height = 19
        DataField = 'NumeroDias'
        DataSource = dtsDadosNominais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object BtnGerar: TcxButton
        Left = 16
        Top = 250
        Width = 278
        Height = 33
        Hint = 'Gerar Parcelas'
        Anchors = [akRight, akBottom]
        Caption = 'Gerar Parcelas'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = DMRecursos.ImgBotoes16x16
        TabOrder = 6
        OnClick = BtnGerarClick
      end
      object RdGrpVencimentoFimSemana: TRadioGroup
        Left = 16
        Top = 154
        Width = 278
        Height = 90
        Caption = 'Vencimentos nos finais de Semana'
        ItemIndex = 2
        Items.Strings = (
          'Permanecer inalterado'
          'Antecipar data de vencimento'
          'Prorrogar data de vencimento')
        TabOrder = 5
      end
      object dbPrimeiroVencimento: TJvDBDateEdit
        Left = 183
        Top = 78
        Width = 111
        Height = 21
        DataField = 'PrimeiroVencimento'
        DataSource = dtsDadosNominais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 2
      end
    end
    object GrpBxParcelas: TGroupBox
      Left = 309
      Top = 0
      Width = 393
      Height = 317
      Align = alClient
      Caption = 'LOTE DE PARCELAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object dbgParcelas: TcxGrid
        Left = 2
        Top = 15
        Width = 389
        Height = 300
        Align = alClient
        TabOrder = 0
        OnEnter = dbgParcelasEnter
        OnExit = dbgParcelasExit
        object dbgParcelasTbl: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dtsParcelas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00#'
              Kind = skSum
              FieldName = 'ValorParcela'
              Column = dbgParcelasTblValorParcela
            end>
          DataController.Summary.SummaryGroups = <>
          Images = DMRecursos.ImgBotoes16x16
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '<Sem lote de parcelas gerado>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object dbgParcelasTblParcela: TcxGridDBColumn
            Caption = '#'
            DataBinding.FieldName = 'Parcela'
            HeaderAlignmentHorz = taCenter
            MinWidth = 30
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 30
          end
          object dbgParcelasTblCompetencia: TcxGridDBColumn
            Caption = 'Compet'#234'ncia'
            DataBinding.FieldName = 'Competencia'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CMP_NUM'
            Properties.ListColumns = <
              item
                FieldName = 'CMP_DESC'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dtsCompetencia
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object dbgParcelasTblVencimento: TcxGridDBColumn
            DataBinding.FieldName = 'Vencimento'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            MinWidth = 95
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 95
          end
          object dbgParcelasTblDiaSemana: TcxGridDBColumn
            Caption = 'Dia'
            DataBinding.FieldName = 'DiaSemana'
            HeaderAlignmentHorz = taCenter
            MinWidth = 40
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 40
          end
          object dbgParcelasTblValorParcela: TcxGridDBColumn
            Caption = 'Valor (R$)'
            DataBinding.FieldName = 'ValorParcela'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 100
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object dbgParcelasTblObservacao: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'Observacao'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Visible = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
        end
        object dbgParcelasLv: TcxGridLevel
          GridView = dbgParcelasTbl
        end
      end
    end
  end
  object tmrAlerta: TTimer
    Interval = 500
    OnTimer = tmrAlertaTimer
    Left = 16
    Top = 487
  end
  object cdsDadosNominais: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Empresa'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cliente'
        DataType = ftInteger
      end
      item
        Name = 'ClienteNome'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ClienteCNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TipoReceita'
        DataType = ftSmallint
      end
      item
        Name = 'FormaPagto'
        DataType = ftSmallint
      end
      item
        Name = 'Banco'
        DataType = ftInteger
      end
      item
        Name = 'Emissao'
        DataType = ftDateTime
      end
      item
        Name = 'NotaFiscal'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NumeroParcelas'
        DataType = ftInteger
      end
      item
        Name = 'ValorTotal'
        DataType = ftCurrency
      end
      item
        Name = 'PrimeiroVencimento'
        DataType = ftDateTime
      end
      item
        Name = 'DiaVencimento'
        DataType = ftSmallint
      end
      item
        Name = 'NumeroDias'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = cdsDadosNominaisNewRecord
    Left = 136
    object cdsDadosNominaisEmpresa: TStringField
      FieldName = 'Empresa'
    end
    object cdsDadosNominaisCliente: TIntegerField
      FieldName = 'Cliente'
      Required = True
    end
    object cdsDadosNominaisClienteNome: TStringField
      FieldName = 'ClienteNome'
      Size = 150
    end
    object cdsDadosNominaisClienteCNPJ: TStringField
      FieldName = 'ClienteCNPJ'
    end
    object cdsDadosNominaisTipoReceita: TSmallintField
      DisplayLabel = 'Tipo de Receita'
      FieldName = 'TipoReceita'
      Required = True
    end
    object cdsDadosNominaisFormaPagto: TSmallintField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'FormaPagto'
      Required = True
    end
    object cdsDadosNominaisBanco: TIntegerField
      FieldName = 'Banco'
    end
    object cdsDadosNominaisEmissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Emissao'
      Required = True
    end
    object cdsDadosNominaisNotaFiscal: TStringField
      FieldName = 'NotaFiscal'
      Size = 15
    end
    object cdsDadosNominaisNumeroParcelas: TIntegerField
      DisplayLabel = 'N'#250'mero de Parcelas'
      FieldName = 'NumeroParcelas'
      Required = True
    end
    object cdsDadosNominaisPrimeiroVencimento: TDateTimeField
      FieldName = 'PrimeiroVencimento'
    end
    object cdsDadosNominaisValorTotal: TCurrencyField
      DisplayLabel = 'Valor Total (R$)'
      FieldName = 'ValorTotal'
      DisplayFormat = ',0.00#'
    end
    object cdsDadosNominaisDiaVencimento: TSmallintField
      DisplayLabel = 'Dia de vencimento'
      FieldName = 'DiaVencimento'
      Required = True
      DisplayFormat = '00'
    end
    object cdsDadosNominaisNumeroDias: TIntegerField
      DisplayLabel = 'Gerar vencimento a cada ? dia(s)'
      FieldName = 'NumeroDias'
      Required = True
      DisplayFormat = '00'
    end
  end
  object dtsDadosNominais: TDataSource
    DataSet = cdsDadosNominais
    Left = 168
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Parcela'
        DataType = ftSmallint
      end
      item
        Name = 'Competencia'
        DataType = ftInteger
      end
      item
        Name = 'Vencimento'
        DataType = ftDateTime
      end
      item
        Name = 'DiaSemana'
        DataType = ftSmallint
      end
      item
        Name = 'ValorParcela'
        DataType = ftCurrency
      end
      item
        Name = 'Observacao'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    IndexFieldNames = 'Parcela'
    Params = <>
    StoreDefs = True
    Left = 437
    Top = 223
    object cdsParcelasParcela: TSmallintField
      Alignment = taCenter
      FieldName = 'Parcela'
      DisplayFormat = '00'
    end
    object cdsParcelasCompetencia: TIntegerField
      FieldName = 'Competencia'
    end
    object cdsParcelasVencimento: TDateTimeField
      FieldName = 'Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsParcelasDiaSemana: TSmallintField
      Alignment = taCenter
      FieldName = 'DiaSemana'
      OnGetText = cdsParcelasDiaSemanaGetText
    end
    object cdsParcelasValorParcela: TCurrencyField
      FieldName = 'ValorParcela'
      DisplayFormat = ',0.00#'
    end
    object cdsParcelasObservacao: TStringField
      FieldName = 'Observacao'
      Size = 250
    end
  end
  object dtsParcelas: TDataSource
    DataSet = cdsParcelas
    OnStateChange = dtsParcelasStateChange
    OnDataChange = dtsParcelasDataChange
    Left = 469
    Top = 223
  end
  object dtsCompetencia: TDataSource
    DataSet = fdQryCompetencia
    Left = 368
    Top = 320
  end
  object fdQryTipoReceita: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select *'
      'from TBTPRECEITA r'
      'where (r.ativo = :ativo) or (:todos = 1)'
      'order by r.tiporec'
      '')
    Left = 336
    Top = 352
    ParamData = <
      item
        Name = 'ATIVO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TODOS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsTpReceita: TDataSource
    DataSet = fdQryTipoReceita
    Left = 368
    Top = 352
  end
  object fdQryEmpresa: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    e.cnpj'
      '  , e.codigo'
      '  , e.razao'
      '  , e.fantasia'
      'from VW_EMPRESA e'
      'order by'
      '    e.razao')
    Left = 336
    Top = 216
  end
  object dtsEmpresa: TDataSource
    DataSet = fdQryEmpresa
    Left = 368
    Top = 216
  end
  object fdQryFormaPagto: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '      f.cod'
      '    , f.descri'
      '    , count(x.conta_corrente) as conta_corrente'
      'from TBFORMPAGTO f'
      '  left join ('
      '    Select'
      '        fc.forma_pagto'
      '      , fc.conta_corrente'
      '      , c.descricao'
      '    from TBFORMPAGTO_CONTACOR fc'
      
        '      inner join TBCONTA_CORRENTE c on (c.codigo = fc.conta_corr' +
        'ente and c.empresa = :empresa)'
      '    where c.tipo = 1'
      '  ) x on (x.forma_pagto = f.cod)'
      'group by'
      '      f.cod'
      '    , f.descri'
      'order by'
      '      f.descri')
    Left = 336
    Top = 248
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsFormaPagto: TDataSource
    DataSet = fdQryFormaPagto
    Left = 368
    Top = 248
  end
  object fdQryBanco: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    b.bco_codigo'
      '  , b.bco_cod'
      '  , b.empresa'
      '  , b.bco_nome'
      '  , b.bco_agencia'
      '  , b.bco_cc'
      '  , b.bco_nome ||'
      
        '    coalesce('#39' - AG. '#39'  || nullif(trim(b.bco_agencia), '#39#39'), '#39#39') ' +
        '||'
      
        '    coalesce('#39' - C/C. '#39' || nullif(trim(b.bco_cc), '#39#39'), '#39#39')  as b' +
        'co_nome_agencia_conta'
      'from TBBANCO_BOLETO b'
      'order by'
      '  2, 7')
    Left = 336
    Top = 280
  end
  object dtsBanco: TDataSource
    DataSet = fdQryBanco
    Left = 368
    Top = 280
  end
  object fdQryCompetencia: TFDQuery
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    SQL.Strings = (
      'Select'
      '    c.cmp_num'
      '  , c.cmp_desc'
      'from TBCOMPETENCIA c'
      'order by c.cmp_desc')
    Left = 336
    Top = 312
  end
  object cdsContaAReceber: TFDQuery
    CachedUpdates = True
    Connection = DMBusiness.fdConexao
    Transaction = DMBusiness.fdTransacao
    UpdateTransaction = DMBusiness.fdTransacao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CONTAREC_NUM_2019'
    UpdateOptions.KeyFields = 'ANOLANC;NUMLANC'
    UpdateOptions.AutoIncFields = 'NUMLANC'
    UpdateObject = updContaAReceber
    SQL.Strings = (
      'Select'
      '    r.anolanc'
      '  , r.numlanc'
      '  , r.empresa'
      '  , r.cliente'
      '  , r.cnpj'
      '  , r.codtprec'
      '  , r.forma_pagto'
      '  , r.historic'
      '  , r.dtemiss'
      '  , r.dtvenc'
      '  , r.competencia_apuracao'
      '  , r.valorrec'
      '  , r.valorrectot'
      '  , r.valorsaldo'
      '  , r.parcela'
      '  , r.baixado'
      '  , r.enviado'
      '  , r.situacao'
      '  , r.lote'
      'from TBCONTREC r'
      'where 1 = 0')
    Left = 603
    Top = 336
    object cdsContaAReceberANOLANC: TSmallintField
      FieldName = 'ANOLANC'
      Origin = 'ANOLANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaAReceberNUMLANC: TFDAutoIncField
      FieldName = 'NUMLANC'
      Origin = 'NUMLANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object cdsContaAReceberEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 18
    end
    object cdsContaAReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object cdsContaAReceberCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object cdsContaAReceberCODTPREC: TSmallintField
      FieldName = 'CODTPREC'
      Origin = 'CODTPREC'
    end
    object cdsContaAReceberFORMA_PAGTO: TSmallintField
      FieldName = 'FORMA_PAGTO'
      Origin = 'FORMA_PAGTO'
    end
    object cdsContaAReceberHISTORIC: TMemoField
      FieldName = 'HISTORIC'
      Origin = 'HISTORIC'
      BlobType = ftMemo
    end
    object cdsContaAReceberDTEMISS: TDateField
      FieldName = 'DTEMISS'
      Origin = 'DTEMISS'
    end
    object cdsContaAReceberDTVENC: TDateField
      FieldName = 'DTVENC'
      Origin = 'DTVENC'
    end
    object cdsContaAReceberCOMPETENCIA_APURACAO: TIntegerField
      FieldName = 'COMPETENCIA_APURACAO'
      Origin = 'COMPETENCIA_APURACAO'
    end
    object cdsContaAReceberPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object cdsContaAReceberBAIXADO: TSmallintField
      FieldName = 'BAIXADO'
      Origin = 'BAIXADO'
      Required = True
    end
    object cdsContaAReceberENVIADO: TSmallintField
      FieldName = 'ENVIADO'
      Origin = 'ENVIADO'
      Required = True
    end
    object cdsContaAReceberSITUACAO: TSmallintField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object cdsContaAReceberLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 14
    end
    object cdsContaAReceberVALORREC: TFMTBCDField
      FieldName = 'VALORREC'
      Origin = 'VALORREC'
      Precision = 18
      Size = 2
    end
    object cdsContaAReceberVALORRECTOT: TFMTBCDField
      FieldName = 'VALORRECTOT'
      Origin = 'VALORRECTOT'
      Precision = 18
      Size = 2
    end
    object cdsContaAReceberVALORSALDO: TFMTBCDField
      FieldName = 'VALORSALDO'
      Origin = 'VALORSALDO'
      Precision = 18
      Size = 2
    end
  end
  object updContaAReceber: TFDUpdateSQL
    Connection = DMBusiness.fdConexao
    InsertSQL.Strings = (
      'INSERT INTO TBCONTREC'
      '(ANOLANC, NUMLANC, EMPRESA, CLIENTE, CNPJ, '
      '  FORMA_PAGTO, HISTORIC, DTEMISS, DTVENC, '
      '  VALORREC, VALORRECTOT, VALORSALDO, PARCELA, '
      '  BAIXADO, ENVIADO, CODTPREC, SITUACAO, '
      '  LOTE, COMPETENCIA_APURACAO)'
      
        'VALUES (:NEW_ANOLANC, :NEW_NUMLANC, :NEW_EMPRESA, :NEW_CLIENTE, ' +
        ':NEW_CNPJ, '
      '  :NEW_FORMA_PAGTO, :NEW_HISTORIC, :NEW_DTEMISS, :NEW_DTVENC, '
      
        '  :NEW_VALORREC, :NEW_VALORRECTOT, :NEW_VALORSALDO, :NEW_PARCELA' +
        ', '
      '  :NEW_BAIXADO, :NEW_ENVIADO, :NEW_CODTPREC, :NEW_SITUACAO, '
      '  :NEW_LOTE, :NEW_COMPETENCIA_APURACAO)'
      'RETURNING NUMLANC')
    ModifySQL.Strings = (
      'UPDATE TBCONTREC'
      
        'SET ANOLANC = :NEW_ANOLANC, NUMLANC = :NEW_NUMLANC, EMPRESA = :N' +
        'EW_EMPRESA, '
      
        '  CLIENTE = :NEW_CLIENTE, CNPJ = :NEW_CNPJ, FORMA_PAGTO = :NEW_F' +
        'ORMA_PAGTO, '
      
        '  HISTORIC = :NEW_HISTORIC, DTEMISS = :NEW_DTEMISS, DTVENC = :NE' +
        'W_DTVENC, '
      '  VALORREC = :NEW_VALORREC, VALORRECTOT = :NEW_VALORRECTOT, '
      
        '  VALORSALDO = :NEW_VALORSALDO, PARCELA = :NEW_PARCELA, BAIXADO ' +
        '= :NEW_BAIXADO, '
      
        '  ENVIADO = :NEW_ENVIADO, CODTPREC = :NEW_CODTPREC, SITUACAO = :' +
        'NEW_SITUACAO, '
      
        '  LOTE = :NEW_LOTE, COMPETENCIA_APURACAO = :NEW_COMPETENCIA_APUR' +
        'ACAO'
      'WHERE ANOLANC = :OLD_ANOLANC AND NUMLANC = :OLD_NUMLANC'
      'RETURNING NUMLANC')
    DeleteSQL.Strings = (
      'DELETE FROM TBCONTREC'
      'WHERE ANOLANC = :OLD_ANOLANC AND NUMLANC = :OLD_NUMLANC')
    FetchRowSQL.Strings = (
      
        'SELECT ANOLANC, NUMLANC, EMPRESA, CLIENTE, CNPJ, FORMA_PAGTO, TI' +
        'PPAG, '
      '  HISTORIC, NUMREC, DTEMISS, DTVENC, DTREC, DOCBAIX, VALORREC, '
      '  VALORMULTA, VALORRECTOT, VALORSALDO, NUMCONTRATO, PARCELA, '
      
        '  STATUS, CODBANCO, BANCO_FEBRABAN, NOSSONUMERO, ESPECIE_BOLETO,' +
        ' '
      
        '  REMESSA, PERCENTJUROS, PERCENTMULTA, PERCENTDESCONTO, DATAPROC' +
        'ESSOBOLETO, '
      '  BAIXADO, ENVIADO, ANOVENDA, NUMVENDA, ANOOS, NUMOS, CODTPREC, '
      '  SITUACAO, LOTE, COMPETENCIA_APURACAO'
      'FROM TBCONTREC'
      'WHERE ANOLANC = :ANOLANC AND NUMLANC = :NUMLANC')
    Left = 635
    Top = 336
  end
end
