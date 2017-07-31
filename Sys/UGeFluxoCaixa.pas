unit UGeFluxoCaixa;

interface

uses
  UGrPadraoCadastro,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IBCustomDataSet, IBUpdateSQL, DB,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  DBClient, Provider, ACBrBase, ACBrExtenso, frxClass, frxDBSet, IBQuery,
  IBTable, JvDBControls, DBCtrls, JvExMask, JvToolEdit, Mask, Buttons,
  ExtCtrls, Grids, DBGrids, ComCtrls, cxButtons, ToolWin,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfrmGeFluxoCaixa = class(TfrmGrPadraoCadastro)
    lblData: TLabel;
    lblContaCorrentePesq: TLabel;
    dtsContaCorrente: TDataSource;
    dtsFormaPagto: TDataSource;
    IbDtstTabelaANO: TSmallintField;
    IbDtstTabelaNUMERO: TIntegerField;
    IbDtstTabelaCAIXA_ANO: TSmallintField;
    IbDtstTabelaCAIXA_NUM: TIntegerField;
    IbDtstTabelaCONTA_CORRENTE: TIntegerField;
    IbDtstTabelaFORMA_PAGTO: TSmallintField;
    IbDtstTabelaDATAHORA: TDateTimeField;
    IbDtstTabelaTIPO: TIBStringField;
    IbDtstTabelaHISTORICO: TIBStringField;
    IbDtstTabelaVALOR: TIBBCDField;
    IbDtstTabelaSITUACAO: TSmallintField;
    IbDtstTabelaVENDA_ANO: TSmallintField;
    IbDtstTabelaVENDA_NUM: TIntegerField;
    IbDtstTabelaCLIENTE: TIBStringField;
    IbDtstTabelaCOMPRA_ANO: TSmallintField;
    IbDtstTabelaCOMPRA_NUM: TIntegerField;
    IbDtstTabelaEMPRESA: TIBStringField;
    IbDtstTabelaFORNECEDOR: TIntegerField;
    IbDtstTabelaUSUARIO: TIBStringField;
    pnlConsolidacao: TPanel;
    Bevel5: TBevel;
    IbDtstTabelaFORMA_PAGTO_DESC: TIBStringField;
    IbDtstTabelaNOME_CLENTE: TIBStringField;
    IbDtstTabelaNOME_FORNECEDOR: TIBStringField;
    IbDtstTabelaVALOR_CREDITO: TIBBCDField;
    IbDtstTabelaVALOR_DEBITO: TIBBCDField;
    IbDtstTabelaDATA: TDateField;
    IbDtstTabelaHORA: TTimeField;
    IbDtstTabelaVENDA: TIBStringField;
    IbDtstTabelaTITULO: TIBStringField;
    IbDtstTabelaCOMPRA: TIBStringField;
    IbDtstTabelaDUPLICATA: TIBStringField;
    qrySaldosDias: TIBQuery;
    dtsSaldosDias: TDataSource;
    pnlSaldosDias: TPanel;
    Panel1: TPanel;
    dbLContaCorrente: TDBText;
    Bevel6: TBevel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dbLDataFinal: TDBText;
    BvDataFinal: TBevel;
    dbLDataInicial: TDBText;
    Bevel9: TBevel;
    dbLDataAnterior: TDBText;
    Bevel10: TBevel;
    Panel5: TPanel;
    dbLSaldoFinal: TDBText;
    BvSaldoFinal: TBevel;
    dbLSaldoInicial: TDBText;
    Bevel12: TBevel;
    dbLSaldoAnterior: TDBText;
    Bevel13: TBevel;
    qrySaldosDiasSALDO_ANTERIOR_DATA: TDateField;
    qrySaldosDiasSALDO_ANTERIOR_VALOR: TIBBCDField;
    qrySaldosDiasSALDO_INICIAL_DATA: TDateField;
    qrySaldosDiasSALDO_INICIAL_VALOR: TIBBCDField;
    qrySaldosDiasSALDO_FINAL_DATA: TDateField;
    qrySaldosDiasSALDO_FINAL_VALOR: TIBBCDField;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    lblDataMov: TLabel;
    dbTipo: TDBLookupComboBox;
    lblTipo: TLabel;
    dbContaCorrente: TDBLookupComboBox;
    lblContaCorrente: TLabel;
    dbSituacao: TDBEdit;
    lblSituacao: TLabel;
    lblMovCaixaCancelado: TLabel;
    dtsTipoMovimento: TDataSource;
    lblCaixa: TLabel;
    d1Caixa: TDBEdit;
    d2Caixa: TDBEdit;
    lblFormaPagto: TLabel;
    dbFormaPagto: TDBLookupComboBox;
    GrpBxCreditoDebito: TGroupBox;
    lblHistorico: TLabel;
    dbHistorico: TDBEdit;
    dbValorMov: TDBEdit;
    lblValorMov: TLabel;
    lblCliente: TLabel;
    lblFornecedor: TLabel;
    lblVenda: TLabel;
    dbVenda: TDBEdit;
    lblTitulo: TLabel;
    dbTitulo: TDBEdit;
    lblCompra: TLabel;
    dbCompra: TDBEdit;
    dbDuplicata: TDBEdit;
    lblDuplicata: TLabel;
    GrbBxObs: TGroupBox;
    memObservacoes: TMemo;
    Bevel7: TBevel;
    Bevel11: TBevel;
    Bevel18: TBevel;
    lblUsuario: TLabel;
    dbUsuario: TDBEdit;
    IbDtstTabelaSITUACAO_CAIXA: TSmallintField;
    IbDtstTabelaDATA_FECH: TDateField;
    IbDtstTabelaDATA_CANCEL: TDateField;
    qryConsolidadoFormaPagto: TIBQuery;
    dtsConsolidadoFormaPagto: TDataSource;
    qryConsolidadoFormaPagtoDATA: TDateField;
    qryConsolidadoFormaPagtoFORMA_PAGTO_DESC: TIBStringField;
    qryConsolidadoFormaPagtoSALDO: TIBBCDField;
    qryConsolidadoFormaPagtoENTRADA: TIBBCDField;
    qryConsolidadoFormaPagtoSAIDA: TIBBCDField;
    Panel6: TPanel;
    DBText1: TDBText;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Panel7: TPanel;
    dbgConsolidadoFormaPagto: TDBGrid;
    qryConsolidadoFormaPagtoSaldoDisplay: TStringField;
    qryConsolidadoFormaPagtoFORMA_PAGTO: TIntegerField;
    qryFluxoSintetico: TIBQuery;
    frdFluxoSintetico: TfrxDBDataset;
    frdFluxoAnalitico: TfrxDBDataset;
    qryFluxoAnalitico: TIBQuery;
    frrFluxoAnalitico: TfrxReport;
    qryFluxoSaldos: TIBQuery;
    frdFluxoSaldos: TfrxDBDataset;
    dtsEmpresa: TDataSource;
    lblEmpresa: TLabel;
    dbEmpresa: TDBLookupComboBox;
    dtsTpDespesa: TDataSource;
    lblTipoDespesa: TLabel;
    dbTipoDespesa: TDBLookupComboBox;
    IbDtstTabelaTIPO_DESPESA: TSmallintField;
    IbDtstTabelaCLIENTE_COD: TIntegerField;
    ppImprimir: TPopupMenu;
    nmImprimirExtrato: TMenuItem;
    nmImprimirReciboA5: TMenuItem;
    FrReciboA5: TfrxReport;
    FrdRecibo: TfrxDBDataset;
    ACBrExtenso: TACBrExtenso;
    QryRecibo: TIBQuery;
    DspRecibo: TDataSetProvider;
    CdsRecibo: TClientDataSet;
    CdsReciboVALOR_BAIXA_EXTENSO: TStringField;
    dbCliente: TJvDBComboEdit;
    dbFornecedor: TJvDBComboEdit;
    dbDataMov: TJvDBDateEdit;
    e1Data: TJvDateEdit;
    e2Data: TJvDateEdit;
    edContaCorrentePesq: TComboBox;
    CdsReciboANO: TSmallintField;
    CdsReciboNUMERO: TIntegerField;
    CdsReciboTIPO: TWideStringField;
    CdsReciboNUMERO_RECIBO: TWideStringField;
    CdsReciboANOLANC: TSmallintField;
    CdsReciboNUMLANC: TIntegerField;
    CdsReciboPARCELA: TSmallintField;
    CdsReciboNOMEEMP: TWideStringField;
    CdsReciboCODFORN: TIntegerField;
    CdsReciboNOMEFORN: TWideStringField;
    CdsReciboPESSOA_FISICA: TSmallintField;
    CdsReciboCNPJ: TWideStringField;
    CdsReciboNOTFISC: TWideStringField;
    CdsReciboTIPPAG: TWideStringField;
    CdsReciboDTEMISS: TDateField;
    CdsReciboDTVENC: TDateField;
    CdsReciboDTPAG: TDateField;
    CdsReciboVALORPAG: TBCDField;
    CdsReciboBANCO: TIntegerField;
    CdsReciboBCO_NOME: TWideStringField;
    CdsReciboNUMCHQ: TWideStringField;
    CdsReciboPAGO_: TWideStringField;
    CdsReciboDOCBAIX: TWideStringField;
    CdsReciboQUITADO: TIntegerField;
    CdsReciboCODTPDESP: TSmallintField;
    CdsReciboSEQ: TIntegerField;
    CdsReciboDATA_PAGTO: TDateField;
    CdsReciboFORMA_PAGTO: TSmallintField;
    CdsReciboFORMA_PAGTO_DESC: TWideStringField;
    CdsReciboHISTORICO: TWideStringField;
    CdsReciboVALOR_BAIXA: TBCDField;
    lblTipoReceita: TLabel;
    dbTipoReceita: TDBLookupComboBox;
    IbDtstTabelaTIPO_RECEITA: TSmallintField;
    dtsTpReceita: TDataSource;
    nmImprimirReciboA4: TMenuItem;
    FrReciboA4: TfrxReport;
    btnRecalcularSaldo: TcxButton;
    bvlRecalcularSaldo: TBevel;
    fdQryEmpresa: TFDQuery;
    fdQryFormaPagto: TFDQuery;
    fdQryContaCorrente: TFDQuery;
    fdQryTipoMovimento: TFDQuery;
    fdQryTipoDespesa: TFDQuery;
    fdQryTipoReceita: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure edContaCorrentePesqChange(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure IbDtstTabelaNewRecord(DataSet: TDataSet);
    procedure IbDtstTabelaSITUACAOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DtSrcTabelaStateChange(Sender: TObject);
    procedure DtSrcTabelaDataChange(Sender: TObject; Field: TField);
    procedure dbClienteButtonClick(Sender: TObject);
    procedure dbFornecedorButtonClick(Sender: TObject);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure ControlEditExit(Sender: TObject);
    procedure btbtnAlterarClick(Sender: TObject);
    procedure btbtnExcluirClick(Sender: TObject);
    procedure qryConsolidadoFormaPagtoCalcFields(DataSet: TDataSet);
    procedure btbtnListaClick(Sender: TObject);
    procedure frrFluxoAnaliticoGetValue(const VarName: String;
      var Value: Variant);
    procedure btbtnIncluirClick(Sender: TObject);
    procedure nmImprimirExtratoClick(Sender: TObject);
    procedure nmImprimirReciboClick(Sender: TObject);
    procedure FrReciboGetValue(const VarName: String; var Value: Variant);
    procedure CdsReciboCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnRecalcularSaldoClick(Sender: TObject);
    procedure pgcGuiasChange(Sender: TObject);
  private
    { Private declarations }
    sGeneratorName : String;
    FImprimirCabecalho : Boolean;
    procedure CarregarContaCorrente;
    procedure CarregarSaldos;
    procedure DefinirControle;
    procedure CarregarTipoDespesa(const ApenasAtivos : Boolean);
    procedure CarregarTipoReceita(const ApenasAtivos : Boolean);
    procedure RegistrarNovaRotinaSistema;
    procedure pgcGuiasOnChange; override;

    function BloquearAlteracaoExclusao : Boolean;
    function GetRotinaRecalcularSaldoID : String;
  public
    { Public declarations }
    property RotinaRecalcularSaldoID : String read GetRotinaRecalcularSaldoID;
  end;

(*
  Tabelas:
  - TBCAIXA_MOVIMENTO
  - TBEMPRESA
  - TBCLIENTE
  - TBFORNECEDOR
  - TBFORMPAGTO
  - TBCAIXA
  - TBTPDESPESA
  - TBTPRECEITA
  - TBCONTPAG
  - TBCONTREC
  - TBBANCO_BOLETO

  Views:
  - VW_EMPRESA
  - VW_CONTA_CORRENTE
  - VW_TIPO_MOVIMENTO_CAIXA

  Procedures:
  - GET_CONTA_CORRENTE_SALDO
  - GET_FLUXO_CAIXA
*)

var
  frmGeFluxoCaixa: TfrmGeFluxoCaixa;

  procedure MostrarTabelaFluxoCaixas(const AOwner : TComponent);

const
  TIPO_MOVIMENTO_CREDITO = 'C';
  TIPO_MOVIMENTO_DEBITO  = 'D';

implementation

uses
  DateUtils, UDMBusiness, UGeCliente, UGeFornecedor, UGeCaixa, UDMNFe,
  UConstantesDGE, UDMRecursos;

{$R *.dfm}

procedure MostrarTabelaFluxoCaixas(const AOwner : TComponent);
var
  frm : TfrmGeFluxoCaixa;
  whr : String;
begin
  frm := TfrmGeFluxoCaixa.Create(AOwner);
  try
    whr := '(m.Empresa = ' + QuotedStr(gUsuarioLogado.Empresa) + ') and ' +
      '(cast(m.Datahora as date) between ' +
      QuotedStr( FormatDateTime('yyyy-mm-dd', frm.e1Data.Date) ) + ' and '  +
      QuotedStr( FormatDateTime('yyyy-mm-dd', frm.e2Data.Date) ) + ') and ' +
      'm.Conta_corrente = ' + IntToStr( frm.fdQryContaCorrente.FieldByName('codigo').AsInteger );

    with frm, IbDtstTabela do
    begin
      Close;
      SelectSQL.Add('where ' + whr);
      SelectSQL.Add('order by ' + CampoOrdenacao);
      Open;
    end;

    frm.CarregarSaldos;
    
    frm.ShowModal;
  finally
    frm.Destroy;
  end;
end;

procedure TfrmGeFluxoCaixa.FormCreate(Sender: TObject);
begin
(*
  IMR - 14/10/2014 :
    Bloco de c�digos referentes a propriedade GeneratorField do dataset descontinuado por est� gerando erro e campo n�o localizado.
*)
  sGeneratorName := 'GEN_CX_MOVIMENTO_' + FormatFloat('0000', YearOf(GetDateDB));

  inherited;

//  SQL_Consolidado := TStringList.Create;
//  SQL_Consolidado.Clear;
//  SQL_Consolidado.AddStrings( cdsCosolidado.SelectSQL );
//
//  SQL_Movimento := TStringList.Create;
//  SQL_Movimento.Clear;
//  SQL_Movimento.AddStrings( qryMovimento.SelectSQL );
//
//  SQL_CaixaSintetico := TStringList.Create;
//  SQL_CaixaSintetico.Clear;
//  SQL_CaixaSintetico.AddStrings( qryCaixaSintetico.SQL );
//
//  SQL_CaixaAnalitico := TStringList.Create;
//  SQL_CaixaAnalitico.Clear;
//  SQL_CaixaAnalitico.AddStrings( qryCaixaAnalitico.SQL );
//
  e1Data.Date := Date;
  e2Data.Date := Date;
  ControlFirstEdit := dbDataMov;

  CarregarLista(fdQryEmpresa);
  CarregarLista(fdQryFormaPagto);
  CarregarLista(fdQryTipoMovimento);

  CarregarTipoReceita(False);
  CarregarTipoDespesa(False);

  CarregarContaCorrente;

  RotinaID            := ROTINA_FIN_TESOURARIA_ID;
  DisplayFormatCodigo := '###0000000';
  ControlFirstEdit    := dbDataMov;
  
  NomeTabela     := 'TBCAIXA_MOVIMENTO';
  CampoCodigo    := 'm.Numero';
  CampoDescricao := 'm.Historico';
  CampoOrdenacao := 'm.Ano, m.Numero';
(*
  with IbDtstTabela, GeneratorField do
  begin
    Field       := CampoCodigo;
    Generator   := sGeneratorName;
    IncrementBy := 1;
  end;
*)
//
//  FAbrirCaixa  := False;
//  FFecharCaixa := False;
end;

procedure TfrmGeFluxoCaixa.FormShow(Sender: TObject);
begin
  inherited;
  RegistrarNovaRotinaSistema;
  btnRecalcularSaldo.Visible := (not btbtnSelecionar.Visible) and
    GetPermissaoRotinaInterna(btnRecalcularSaldo, False);
  Self.Caption := Self.Caption + ' - (' + GetNomeFantasiaEmpresa(gUsuarioLogado.Empresa) + ')';
end;

procedure TfrmGeFluxoCaixa.edContaCorrentePesqChange(Sender: TObject);
begin
  if ( not fdQryContaCorrente.IsEmpty ) then
    fdQryContaCorrente.Locate('Descricao_FULL', edContaCorrentePesq.Text, []);
end;

procedure TfrmGeFluxoCaixa.btnFiltrarClick(Sender: TObject);
var
  aData : TDateTime;
begin
  WaitAMoment(WAIT_AMOMENT_LoadData);
  try

    with fdQryContaCorrente do
    begin

      if not Locate('Descricao_FULL', edContaCorrentePesq.Text, []) then
      begin
        WaitAMomentFree;
        ShowWarning('Favor selecionar Conta Corrente para pesquisa!');
        Abort;
      end;

      WhereAdditional := '(m.Empresa = ' + QuotedStr(gUsuarioLogado.Empresa) + ') and ' +
        '(cast(m.Datahora as date) between '  +
        QuotedStr( FormatDateTime('yyyy-mm-dd', e1Data.Date) ) + ' and '  +
        QuotedStr( FormatDateTime('yyyy-mm-dd', e2Data.Date) ) + ') and ' +
        'm.Conta_corrente = ' + IntToStr( FieldByName('codigo').AsInteger );

      // Recalcular Saldo da Conta Corrente
      if ( FieldByName('codigo').AsInteger > 0 ) then
      begin
        aData := e1Data.Date;
        // O saldo � recalculado apenas para o per�odo m�ximo de 30 dias
        if ( (e2Data.Date - aData) > 30 ) then
          aData := e2Data.Date - 30;

        while aData <= e2Data.Date do
        begin
          GerarSaldoContaCorrente(FieldByName('codigo').AsInteger, aData);
          aData := aData + 1;
        end;
      end;

    end;

    CarregarSaldos;

    inherited;

  finally
    WaitAMomentFree;
  end;
end;

procedure TfrmGeFluxoCaixa.btnRecalcularSaldoClick(Sender: TObject);
var
  dData : TDateTime;
begin
  if not GetPermissaoRotinaInterna(Sender, True) then
    Abort;

  if not ShowConfirmation('Ao executar o rec�lculo dos saldos di�rios da Conta Corrente ' +
    'selecionada, possivelmente os valores sejam alterados no per�odo informado.' + #13#13 +
    'Deseja continuar com o rec�lculo dos saldos?') then
    Exit;

  WaitAMoment(WAIT_AMOMENT_Process);
  try

    with fdQryContaCorrente do
    begin

      if not Locate('Descricao_FULL', edContaCorrentePesq.Text, []) then
        Exit;

      // Recalcular Saldo da Conta Corrente
      if ( FieldByName('codigo').AsInteger > 0 ) then
      begin
        dData := e1Data.Date;

        while dData <= e2Data.Date do
        begin
          GerarSaldoContaCorrente(FieldByName('codigo').AsInteger, dData);
          dData := dData + 1;
        end;
      end;

    end;

    CarregarSaldos;

  finally
    WaitAMomentFree;
  end;
end;

procedure TfrmGeFluxoCaixa.CarregarSaldos;
begin
  dbLDataFinal.Visible  := (e1Data.Date <> e2Data.Date);
  BvDataFinal.Visible   := (e1Data.Date <> e2Data.Date);

  dbLSaldoFinal.Visible := (e1Data.Date <> e2Data.Date);
  BvSaldoFinal.Visible  := (e1Data.Date <> e2Data.Date);

  with qrySaldosDias do
  begin
    Close;
    ParamByName('Conta').AsInteger    := fdQryContaCorrente.FieldByName('codigo').AsInteger;
    ParamByName('DataInicial').AsDate := e1Data.Date;
    ParamByName('DataFinal').AsDate   := e2Data.Date;
    Open;
  end;

  with qryConsolidadoFormaPagto do
  begin
    Close;
    ParamByName('Conta_Corrente').AsInteger := fdQryContaCorrente.FieldByName('codigo').AsInteger;
    ParamByName('Data_Inicial').AsDate := e1Data.Date;
    ParamByName('Data_Final').AsDate   := e2Data.Date;
    Open;
  end;
end;

procedure TfrmGeFluxoCaixa.CarregarTipoDespesa(const ApenasAtivos: Boolean);
begin
  with fdQryTipoDespesa, Params do
  begin
    Close;
    ParamByName('ativo').AsInteger := IfThen(ApenasAtivos, 1, 0);
    ParamByName('todos').AsInteger := IfThen(ApenasAtivos, 0, 1);
    Open;

    Prior;
    Last;
  end;
end;

procedure TfrmGeFluxoCaixa.CarregarTipoReceita(const ApenasAtivos: Boolean);
begin
  with fdQryTipoReceita, Params do
  begin
    Close;
    ParamByName('ativo').AsInteger := IfThen(ApenasAtivos, 1, 0);
    ParamByName('todos').AsInteger := IfThen(ApenasAtivos, 0, 1);
    Open;

    Prior;
    Last;
  end;
end;

procedure TfrmGeFluxoCaixa.IbDtstTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  IbDtstTabelaEMPRESA.Value  := gUsuarioLogado.Empresa;
  IbDtstTabelaANO.Value      := YearOf(GetDateTimeDB);
  IbDtstTabelaDATAHORA.Value := GetDateTimeDB;
  IbDtstTabelaSITUACAO.Value := 1;
  IbDtstTabelaTIPO.Value     := TIPO_MOVIMENTO_CREDITO;
  IbDtstTabelaUSUARIO.Value  := GetUserApp;
  IbDtstTabelaDATA.Value     := GetDateDB;
  IbDtstTabelaHORA.Value     := GetTimeDB;

  IbDtstTabelaTIPO_RECEITA.Clear;
  IbDtstTabelaTIPO_DESPESA.Clear;
  IbDtstTabelaCLIENTE.Clear;
  IbDtstTabelaCLIENTE_COD.Clear;
  IbDtstTabelaFORNECEDOR.Clear;
  IbDtstTabelaFORMA_PAGTO.Clear;

  IbDtstTabelaFORMA_PAGTO_DESC.Clear;
  IbDtstTabelaNOME_CLENTE.Clear;
  IbDtstTabelaNOME_FORNECEDOR.Clear;
  IbDtstTabelaVALOR_CREDITO.Clear;
  IbDtstTabelaVALOR_DEBITO.Clear;
  IbDtstTabelaVENDA.Clear;
  IbDtstTabelaTITULO.Clear;
  IbDtstTabelaCOMPRA.Clear;
  IbDtstTabelaDUPLICATA.Clear;
end;

procedure TfrmGeFluxoCaixa.IbDtstTabelaSITUACAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if ( Sender.IsNull ) then
    Exit;

  Case Sender.AsInteger of
    0 : Text := 'Cancelado';
    1 : Text := 'Confirmado';
  end;
end;

procedure TfrmGeFluxoCaixa.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if ( Sender = dbgDados ) then
  begin
    // Destacar Movimentos de Caixas Cancelados
    if ( IbDtstTabelaSITUACAO.AsInteger = 0 ) then
      dbgDados.Canvas.Font.Color := lblMovCaixaCancelado.Font.Color;

    dbgDados.DefaultDrawDataCell(Rect, dbgDados.Columns[DataCol].Field, State);
  end
  else
  if ( Sender = dbgConsolidadoFormaPagto ) then
  begin
    ShowScrollBar(TDBGrid(Sender).Handle, SB_HORZ, False);
    //ShowScrollBar(TDBGrid(Sender).Handle, SB_VERT, False);
  end;
end;

procedure TfrmGeFluxoCaixa.DefinirControle;
begin
  memObservacoes.Lines.Clear;

  btnRecalcularSaldo.Enabled := (pgcGuias.ActivePage = tbsTabela);

  if ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_CREDITO ) then
  begin
    lblCliente.Enabled := True;
    dbCliente.Enabled  := True;
    lblFornecedor.Enabled  := False;
    dbFornecedor.Enabled   := False;
    lblTipoDespesa.Enabled := False;
    dbTipoDespesa.Enabled  := False;
  end
  else
  if ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_DEBITO ) then
  begin
    lblCliente.Enabled := False;
    dbCliente.Enabled  := False;
    lblFornecedor.Enabled  := True;
    dbFornecedor.Enabled   := True;
    lblTipoDespesa.Enabled := True;
    dbTipoDespesa.Enabled  := True;
  end;

  if ( IbDtstTabelaVENDA_ANO.AsInteger > 0 ) then
  begin
    memObservacoes.Lines.Add(
      'Movimento de fluxo de caixa relacionada a VENDA CONFIRMADA de No. ' + IbDtstTabelaVENDA.AsString +
      '. Este tipo de movimento n�o poder� ser alterado e nem exclu�do, com isso a �nica forma de seu ' +
      'valor n�o ser considerado para o c�lculo do saldo di�rio da conta corrente � CANCELAR A VENDA '  +
      'respons�vel por este movimento.');
  end
  else
  if ( IbDtstTabelaCOMPRA_ANO.AsInteger > 0 ) then
  begin
    memObservacoes.Lines.Add(
      'Movimento de fluxo de caixa relacionada a COMPRA CONFIRMADA de No. ' + IbDtstTabelaCOMPRA.AsString +
      '. Este tipo de movimento n�o poder� ser alterado e nem exclu�do, com isso a �nica forma de seu ' +
      'valor n�o ser considerado para o c�lculo do saldo di�rio da conta corrente � CANCELAR A COMPRA '  +
      'respons�vel por este movimento.');
  end
  else
  if ( Trim(IbDtstTabelaTITULO.AsString) <> EmptyStr ) then
  begin
    memObservacoes.Lines.Add(
      'Movimento de fluxo de caixa relacionado ao T�TULO de No. ' + IbDtstTabelaTITULO.AsString);
    memObservacoes.Lines.Add('(Contas A Receber).');
    memObservacoes.Lines.Add('');
    memObservacoes.Lines.Add(
      'Este tipo de movimento n�o poder� ser alterado e nem exclu�do, com isso a �nica forma de seu '  +
      'valor n�o ser considerado para o c�lculo do saldo di�rio da conta corrente � CANCELAR A BAIXA ' +
      'respons�vel por este movimento.');
  end
  else
  if ( Trim(IbDtstTabelaDUPLICATA.AsString) <> EmptyStr ) then
  begin
    memObservacoes.Lines.Add(
      'Movimento de fluxo de caixa relacionado a DUPLICATA de No. ' + IbDtstTabelaDUPLICATA.AsString);
    memObservacoes.Lines.Add('(Contas A Pagar).');
    memObservacoes.Lines.Add('');
    memObservacoes.Lines.Add(
      'Este tipo de movimento n�o poder� ser alterado e nem exclu�do, com isso a �nica forma de seu '  +
      'valor n�o ser considerado para o c�lculo do saldo di�rio da conta corrente � CANCELAR A BAIXA ' +
      'respons�vel por este movimento.');
  end;
end;

procedure TfrmGeFluxoCaixa.DtSrcTabelaStateChange(Sender: TObject);
begin
  inherited;
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    DefinirControle;

  CarregarTipoReceita( (IbDtstTabela.State in [dsEdit, dsInsert]) );
  CarregarTipoDespesa( (IbDtstTabela.State in [dsEdit, dsInsert]) );
end;

procedure TfrmGeFluxoCaixa.DtSrcTabelaDataChange(Sender: TObject;
  Field: TField);
begin
  if ( Field = IbDtstTabela.FieldByName('TIPO') ) then
    DefinirControle;
end;

procedure TfrmGeFluxoCaixa.pgcGuiasChange(Sender: TObject);
begin
  DefinirControle;
end;

procedure TfrmGeFluxoCaixa.pgcGuiasOnChange;
begin
  DefinirControle;
end;

procedure TfrmGeFluxoCaixa.dbClienteButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sCNPJ ,
  sNome : String;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( SelecionarCliente(Self, iCodigo, sCNPJ, sNome) ) then
    begin
      IbDtstTabelaCLIENTE_COD.AsInteger := iCodigo;
      IbDtstTabelaCLIENTE.AsString      := sCNPJ;
      IbDtstTabelaNOME_CLENTE.AsString  := sNome;
    end;
end;

procedure TfrmGeFluxoCaixa.dbFornecedorButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sNome   : String;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( SelecionarFornecedor(Self, iCodigo, sNome) ) then
    begin
      IbDtstTabelaFORNECEDOR.AsInteger     := iCodigo;
      IbDtstTabelaNOME_FORNECEDOR.AsString := sNome;
    end;
end;

procedure TfrmGeFluxoCaixa.btbtnSalvarClick(Sender: TObject);
var
  CxAno,
  CxNumero,
  CxContaCorrente : Integer;
begin
  IbDtstTabelaCLIENTE.Required      := ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_CREDITO );
  IbDtstTabelaFORNECEDOR.Required   := ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_DEBITO );
  IbDtstTabelaTIPO_RECEITA.Required := ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_CREDITO );
  IbDtstTabelaTIPO_DESPESA.Required := ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_DEBITO );

  if ( CaixaAberto(IbDtstTabelaEMPRESA.AsString, IbDtstTabelaUSUARIO.AsString, IbDtstTabelaDATAHORA.AsDateTime, IbDtstTabelaFORMA_PAGTO.AsInteger, CxAno, CxNumero, CxContaCorrente) ) then
    if ( CxContaCorrente <> IbDtstTabelaCONTA_CORRENTE.AsInteger ) then
    begin
      IbDtstTabelaCAIXA_ANO.Clear;
      IbDtstTabelaCAIXA_NUM.Clear;
    end;

  IbDtstTabelaDATA.Value := IbDtstTabelaDATAHORA.AsDateTime;
  IbDtstTabelaHORA.Value := IbDtstTabelaDATAHORA.AsDateTime;

  if ( IbDtstTabelaVALOR.AsCurrency <= 0 ) then
    IbDtstTabelaVALOR.Clear;
    
  if ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_CREDITO ) then
  begin
    IbDtstTabelaVALOR_CREDITO.Value := IbDtstTabelaVALOR.Value;
    IbDtstTabelaVALOR_DEBITO.Value  := 0.0;
  end
  else
  if ( IbDtstTabelaTIPO.AsString = TIPO_MOVIMENTO_DEBITO ) then
  begin
    IbDtstTabelaVALOR_CREDITO.Value := 0.0;
    IbDtstTabelaVALOR_DEBITO.Value  := IbDtstTabelaVALOR.Value;
  end;

  inherited;

  if ( not OcorreuErro ) then
  begin
    GerarSaldoContaCorrente(IbDtstTabelaCONTA_CORRENTE.AsInteger, IbDtstTabelaDATAHORA.AsDateTime);
    CarregarSaldos;
  end;
end;

procedure TfrmGeFluxoCaixa.ControlEditExit(Sender: TObject);
var
  CxAno,
  CxNumero,
  CxContaCorrente : Integer;
begin
  inherited;

  if ( Sender = dbFormaPagto ) then
    if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
      if ( CaixaAberto(IbDtstTabelaEMPRESA.AsString, IbDtstTabelaUSUARIO.AsString, IbDtstTabelaDATAHORA.AsDateTime, IbDtstTabelaFORMA_PAGTO.AsInteger, CxAno, CxNumero, CxContaCorrente) ) then
      begin
        IbDtstTabelaCONTA_CORRENTE.AsInteger := CxContaCorrente;
        IbDtstTabelaCAIXA_ANO.AsInteger := CxAno;
        IbDtstTabelaCAIXA_NUM.AsInteger := CxNumero;
      end
      else
      begin
        IbDtstTabelaCONTA_CORRENTE.Value := fdQryContaCorrente.FieldByName('codigo').AsInteger;
        IbDtstTabelaCAIXA_ANO.Clear;
        IbDtstTabelaCAIXA_NUM.Clear;
      end;
end;

function TfrmGeFluxoCaixa.BloquearAlteracaoExclusao : Boolean;
var
  Return : Boolean;
begin
  Return := False;

  if ( (IbDtstTabelaVENDA_NUM.AsInteger > 0) or (IbDtstTabelaCOMPRA_NUM.AsInteger > 0) ) then
  begin
    DefinirControle;

    ShowWarning('Movimento de Fluxo de Caixa bloqueado para edi��o ou exclus�o!');
    pgcGuias.ActivePage := tbsCadastro;

    Return := True;
  end
  else
  if ( Trim(IbDtstTabelaTITULO.AsString) <> EmptyStr ) then
  begin
    DefinirControle;

    ShowWarning('Movimentos de Fluxo de Caixa associados a T�tulos n�o podem ser editados ou exclu�dos!' + #13#13 +
      'Favor promover essas altera��es direto no registro de baixa do T�tulo (Contas A Receber).');
    pgcGuias.ActivePage := tbsCadastro;

    Return := True;
  end
  else
  if ( Trim(IbDtstTabelaDUPLICATA.AsString) <> EmptyStr ) then
  begin
    DefinirControle;

    ShowWarning('Movimentos de Fluxo de Caixa associados a Duplicatas n�o podem ser editados ou exclu�dos!' + #13#13 +
      'Favor promover essas altera��es direto no registro de baixa da Duplicata (Contas A Pagar).');
    pgcGuias.ActivePage := tbsCadastro;

    Return := True;
  end
  else
  if ( IbDtstTabelaSITUACAO_CAIXA.AsInteger <> STATUS_CAIXA_ABERTO ) then
  begin
    ShowWarning('O Controle de Caixa referente a referente a este movimento n�o est� aberto!');
    Return := True;
  end;

  Result := Return;
end;

procedure TfrmGeFluxoCaixa.btbtnAlterarClick(Sender: TObject);
begin
  if ( BloquearAlteracaoExclusao ) then
    Exit;

  inherited;
end;

procedure TfrmGeFluxoCaixa.btbtnExcluirClick(Sender: TObject);
begin
  if ( BloquearAlteracaoExclusao ) then
    Exit;

  inherited;
end;

procedure TfrmGeFluxoCaixa.qryConsolidadoFormaPagtoCalcFields(
  DataSet: TDataSet);
begin
  if ( qryConsolidadoFormaPagtoFORMA_PAGTO.AsInteger > 0 ) then
    qryConsolidadoFormaPagtoSaldoDisplay.AsString := EmptyStr
  else
    if ( qryConsolidadoFormaPagtoSALDO.AsCurrency >= 0 ) then
      qryConsolidadoFormaPagtoSaldoDisplay.AsString := FormatFloat(',0.00', qryConsolidadoFormaPagtoSALDO.AsCurrency)
    else
      qryConsolidadoFormaPagtoSaldoDisplay.AsString := FormatFloat('"- ",0.00', qryConsolidadoFormaPagtoSALDO.AsCurrency);  
end;

procedure TfrmGeFluxoCaixa.RegistrarNovaRotinaSistema;
begin
  if ( Trim(RotinaID) <> EmptyStr ) then
  begin
    if btnRecalcularSaldo.Visible then
      SetRotinaSistema(ROTINA_TIPO_FUNCAO, RotinaRecalcularSaldoID, btnRecalcularSaldo.Caption, RotinaID);
  end;
end;

procedure TfrmGeFluxoCaixa.btbtnListaClick(Sender: TObject);
begin
  inherited;
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  ppImprimir.Popup(btbtnLista.ClientOrigin.X, btbtnLista.ClientOrigin.Y + btbtnLista.Height);
end;

procedure TfrmGeFluxoCaixa.frrFluxoAnaliticoGetValue(const VarName: String;
  var Value: Variant);
begin
  inherited;
  if ( VarName = 'Periodo_Desc' ) then
    if ( e1Data.Date = e2Data.Date ) then
      Value := 'D a t a'
    else
      Value := 'P e r � o d o';

  if ( VarName = 'Periodo' ) then
    if ( e1Data.Date = e2Data.Date ) then
      Value := FormatDateTime('dd/mm/yyyy', e1Data.Date)
    else
      Value := FormatDateTime('dd/mm/yyyy', e1Data.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', e2Data.Date);
end;

function TfrmGeFluxoCaixa.GetRotinaRecalcularSaldoID: String;
begin
  Result := GetRotinaInternaID(btnRecalcularSaldo);
end;

procedure TfrmGeFluxoCaixa.btbtnIncluirClick(Sender: TObject);
var
  iAno ,
  iNum : Integer;
begin
(*
  IMR - 14/10/2014 :
    Inser��o deste bloco de c�digo para substituir a fun��o da propriedade GeneratorField do dataset por est� gerando erro de campo n�o
    localizado.
*)
  iAno := YearOf(GetDateDB);
  iNum := GetGeneratorID(sGeneratorName);

  inherited;

  if ( not OcorreuErro ) then
  begin
    IbDtstTabelaANO.AsInteger        := iAno;
    IbDtstTabelaNUMERO.AsInteger     := iNum;
    IbDtstTabelaCONTA_CORRENTE.Value := fdQryContaCorrente.FieldByName('codigo').AsInteger;
  end;
end;


procedure TfrmGeFluxoCaixa.nmImprimirExtratoClick(Sender: TObject);
var
  Data : TDateTime;
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  try
    WaitAMoment(WAIT_AMOMENT_PrintPrepare);

    Data := e1Data.Date;
    // O saldo � recalculado apenas para o per�odo m�ximo de 30 dias
    if ( (e2Data.Date - Data) > 30 ) then
      Data := e2Data.Date - 30;

    while Data <= e2Data.Date do
    begin
      GerarSaldoContaCorrente(IbDtstTabela.FieldByName('CONTA_CORRENTE').AsInteger, Data);
      Data := Data + 1;
    end;

    with DMNFe do
    begin

      with qryEmitente do
      begin
        Close;
        ParamByName('Cnpj').AsString := gUsuarioLogado.Empresa;
        Open;
      end;

      with qryFluxoSaldos do
      begin
        Close;
        ParamByName('Conta').AsInteger := fdQryContaCorrente.FieldByName('codigo').AsInteger;
        ParamByName('DataInicial').AsDateTime  := e1Data.Date;
        ParamByName('DataFinal').AsDateTime    := e2Data.Date;
        Open;
      end;

      with qryFluxoSintetico do
      begin
        Close;
        ParamByName('Conta_Corrente').AsInteger := fdQryContaCorrente.FieldByName('codigo').AsInteger;
        ParamByName('Data_Inicial').AsDateTime  := e1Data.Date;
        ParamByName('Data_Final').AsDateTime    := e2Data.Date;
        Open;
      end;

      with qryFluxoAnalitico do
      begin
        Close;
        ParamByName('Conta_Corrente').AsInteger := fdQryContaCorrente.FieldByName('codigo').AsInteger;
        ParamByName('Data_Inicial').AsDateTime  := e1Data.Date;
        ParamByName('Data_Final').AsDateTime    := e2Data.Date;
        Open;
      end;

      WaitAMomentFree;
      if ( not qryFluxoAnalitico.IsEmpty ) then
        frrFluxoAnalitico.ShowReport;

    end;
  finally
    WaitAMomentFree;
  end;
end;

procedure TfrmGeFluxoCaixa.nmImprimirReciboClick(Sender: TObject);
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  with CdsRecibo, Params do
  begin
    Close;
    ParamByName('ano').AsInteger    := IbDtstTabelaANO.AsInteger;
    ParamByName('numero').AsInteger := IbDtstTabelaNUMERO.AsInteger;
    Open;

    if IsEmpty then
      Exit;
  end;

  FImprimirCabecalho := ShowConfirmation('Recibo', 'Deseja imprimir no recibo o Cabe�alho com informa��es da empresa?');

  if (Sender = nmImprimirReciboA4) then
    frReport := FrReciboA4
  else
  if (Sender = nmImprimirReciboA5) then
    frReport := FrReciboA5;

  SetVariablesDefault(frReport);

  frReport.PrepareReport;
  frReport.ShowReport;
end;

procedure TfrmGeFluxoCaixa.FrReciboGetValue(const VarName: String;
  var Value: Variant);
begin
  if ( VarName = VAR_TITLE ) then
    Value := 'RECIBO';

  if ( VarName = VAR_EMPRESA ) then
    Value := GetEmpresaNomeDefault;

  if ( VarName = VAR_USER ) then
    Value := GetUserApp;

  if ( VarName = VAR_SYSTEM ) then
    Value := Application.Title + ' - vers�o ' + ver.FileVersion;

  if ( VarName = 'Imprimir_Cabecalho' ) then
    Value := IfThen(FImprimirCabecalho, 1, 0);
end;

procedure TfrmGeFluxoCaixa.CdsReciboCalcFields(DataSet: TDataSet);
begin
  CdsReciboVALOR_BAIXA_EXTENSO.AsString := AnsiUpperCase(ACBrExtenso.ValorToTexto(CdsReciboVALOR_BAIXA.AsCurrency, ACBrExtenso.Formato));
end;

procedure TfrmGeFluxoCaixa.CarregarContaCorrente;
begin
  edContaCorrentePesq.OnChange := nil;
  try

    with fdQryContaCorrente do
    begin
      Filter   := 'cnpj = ' + QuotedStr(gUsuarioLogado.Empresa);
      Filtered := True;
      Open;

      edContaCorrentePesq.Clear;

      while not Eof do
      begin
        edContaCorrentePesq.Items.Add( FieldByName('descricao_full').AsString );
        Next;
      end;
    end;

    edContaCorrentePesq.ItemIndex := 0;

  finally
    edContaCorrentePesq.OnChange := edContaCorrentePesqChange;
  end;
end;

initialization
  FormFunction.RegisterForm('frmGeFluxoCaixa', TfrmGeFluxoCaixa);

end.
