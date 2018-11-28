unit UGeCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGrPadraoCadastro, ImgList, IBCustomDataSet, IBUpdateSQL, DB, Mask, DBCtrls,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin, IBQuery,
  IBTable, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  JvExMask, JvToolEdit, JvDBControls,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList;

type
  TfrmGeCartaCorrecao = class(TfrmGrPadraoCadastro)
    lblNFe: TLabel;
    dtsEmpresa: TDataSource;
    lblEmpresa: TLabel;
    dbEmpresa: TDBLookupComboBox;
    IbDtstTabelaCCE_NUMERO: TIntegerField;
    IbDtstTabelaCCE_EMPRESA: TIBStringField;
    IbDtstTabelaCCE_DATA: TDateField;
    IbDtstTabelaCCE_HORA: TTimeField;
    IbDtstTabelaCCE_ENVIADA: TSmallintField;
    IbDtstTabelaCCE_TEXTO: TMemoField;
    IbDtstTabelaNFE_SERIE: TIBStringField;
    IbDtstTabelaNFE_NUMERO: TIntegerField;
    IbDtstTabelaNFE_MODELO: TSmallintField;
    IbDtstTabelaNUMERO: TIntegerField;
    IbDtstTabelaPROTOCOLO: TIBStringField;
    IbDtstTabelaXML: TMemoField;
    lblDataHora: TLabel;
    dbDataHora: TDBEdit;
    lblNumero: TLabel;
    dbNumero: TDBEdit;
    IbDtstTabelaNFE_DESTINATARIO_RAZAO: TIBStringField;
    IbDtstTabelaNFE_DESTINATARIO_CNPJ: TIBStringField;
    lblCorrecao: TLabel;
    dbCorrecao: TDBMemo;
    lblProtocolo: TLabel;
    dbProtocolo: TDBEdit;
    dbEnviada: TDBCheckBox;
    mmCondicaoUso: TMemo;
    IbDtstTabelaDataHora: TDateTimeField;
    IbDtstTabelaNotaFiscalEletronica: TStringField;
    IbDtstTabelaNFE_DESTINATARIO: TIBStringField;
    lblCartaPendente: TLabel;
    Bevel5: TBevel;
    BtnEnviarCCe: TcxButton;
    dbNFe: TJvDBComboEdit;
    fdQryEmpresa: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure dbNFeButtonClick(Sender: TObject);
    procedure IbDtstTabelaCalcFields(DataSet: TDataSet);
    procedure IbDtstTabelaNewRecord(DataSet: TDataSet);
    procedure IbDtstTabelaBeforeEdit(DataSet: TDataSet);
    procedure IbDtstTabelaBeforeDelete(DataSet: TDataSet);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure pgcGuiasChange(Sender: TObject);
    procedure BtnEnviarCCeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure IbDtstTabelaAfterScroll(DataSet: TDataSet);
    procedure DtSrcTabelaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btbtnListaClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarDesabilitar_Btns;
    procedure RecarregarRegistro;
    procedure RegistrarNovaRotinaSistema;

    function GetRotinaEnviarCCeID : String;
  public
    { Public declarations }
    property RotinaEnviarCCeID : String read GetRotinaEnviarCCeID;
  end;

(*
  Tabelas:
    - TBNFE_CARTA_CORRECAO
    - TBNFE_ENVIADA
    - TBVENDAS
    - TBCLIENTE
    - TBCOMPRAS
    - TBFORNECEDOR
    - TBEMPRESA

  Views:

  Procedures:

*)

var
  frmGeCartaCorrecao: TfrmGeCartaCorrecao;

implementation

uses
  UDMBusiness, UConstantesDGE, UDMNFe, UGeNFEmitida, UDMRecursos;

{$R *.dfm}

procedure TfrmGeCartaCorrecao.FormCreate(Sender: TObject);
begin
  inherited;
  WhereAdditional  := 'c.cce_empresa = ' + QuotedStr(gUsuarioLogado.Empresa);

  RotinaID         := ROTINA_NFE_CARTA_CORRECAO_ID;
  ControlFirstEdit := dbEmpresa;

  DisplayFormatCodigo := '000';
  NomeTabela      := 'TBNFE_CARTA_CORRECAO';
  CampoCodigo     := 'CCE_NUMERO';
  CampoDescricao  := 'PROTOCOLO';
  AbrirTabelaAuto := True;

  UpdateGenerator('GEN_CARTA_CORRECAO');

  CarregarLista(fdQryEmpresa);

  BtnEnviarCCe.Visible := GetEstacaoEmitiNFe(gUsuarioLogado.Empresa) and (gSistema.Codigo in [SISTEMA_GESTAO_COM, SISTEMA_GESTAO_IND, SISTEMA_GESTAO_OPME]);
end;

procedure TfrmGeCartaCorrecao.FormShow(Sender: TObject);
begin
  inherited;
  RegistrarNovaRotinaSistema;
end;

procedure TfrmGeCartaCorrecao.dbNFeButtonClick(Sender: TObject);
var
  iAno      ,
  iControle : Integer;
  sEmpresa ,
  sSerie   ,
  sChave   : String;
  iNumero  ,
  iModelo  : Integer;
  dEmissao : TDateTime;
  aDestinatario : TDestinatarioNF;
begin
  iAno      := 0;
  iControle := 0;
  sEmpresa  := IbDtstTabelaCCE_EMPRESA.AsString;
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( SelecionarNFe(Self, sEmpresa, sSerie, sChave, iNumero, iModelo, dEmissao, aDestinatario, iAno, iControle) ) then
    begin
      IbDtstTabelaNFE_SERIE.Value  := sSerie;
      IbDtstTabelaNFE_NUMERO.Value := iNumero;
      IbDtstTabelaNFE_MODELO.Value := iModelo;
      IbDtstTabelaNFE_DESTINATARIO.Value       := FormatFloat('0000000', iNumero) + '-' + sSerie;
      IbDtstTabelaNFE_DESTINATARIO_RAZAO.Value := aDestinatario.RazaoSocial;
      IbDtstTabelaNFE_DESTINATARIO_CNPJ.Value  := aDestinatario.CpfCnpj;
    end;
end;

procedure TfrmGeCartaCorrecao.IbDtstTabelaCalcFields(DataSet: TDataSet);
begin
  IbDtstTabelaDataHora.AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy', IbDtstTabelaCCE_DATA.Value) + ' ' +
    FormatDateTime('hh:mm:ss', IbDtstTabelaCCE_HORA.Value));

  if Trim(IbDtstTabelaNFE_DESTINATARIO.AsString) <> EmptyStr then
    IbDtstTabelaNotaFiscalEletronica.AsString := IbDtstTabelaNFE_DESTINATARIO.AsString + ' - ' + IbDtstTabelaNFE_DESTINATARIO_RAZAO.AsString +
      IfThen(StrIsCNPJ(IbDtstTabelaNFE_DESTINATARIO_CNPJ.AsString),
        ' - CNPJ ' + StrFormatarCnpj(IbDtstTabelaNFE_DESTINATARIO_CNPJ.AsString),
        ' - CPF '  + StrFormatarCpf (IbDtstTabelaNFE_DESTINATARIO_CNPJ.AsString));
end;

procedure TfrmGeCartaCorrecao.IbDtstTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  IbDtstTabelaCCE_EMPRESA.Value := gUsuarioLogado.Empresa;
  IbDtstTabelaCCE_DATA.Value    := GetDateDB;
  IbDtstTabelaCCE_HORA.Value    := GetTimeDB;
  IbDtstTabelaCCE_ENVIADA.Value := 0;
  IbDtstTabelaCCE_TEXTO.Clear;
  IbDtstTabelaXML.Clear;
end;

procedure TfrmGeCartaCorrecao.IbDtstTabelaBeforeEdit(DataSet: TDataSet);
begin
  if ( IbDtstTabelaCCE_ENVIADA.AsInteger = 1 ) then
  begin
    ShowWarning('Esta Carta de Corre��o j� foi enviada para a SEFA e por isso n�o poder� ser alterada!');
    Abort;
  end;
end;

procedure TfrmGeCartaCorrecao.IbDtstTabelaBeforeDelete(DataSet: TDataSet);
begin
  if ( IbDtstTabelaCCE_ENVIADA.AsInteger = 1 ) then
  begin
    ShowWarning('Esta Carta de Corre��o j� foi enviada para a SEFA e por isso n�o poder� ser exclu�da!');
    Abort;
  end
  else
    inherited;
end;

procedure TfrmGeCartaCorrecao.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if ( Sender = dbgDados ) then
  begin
    // Destacar CC-e n�o enviada
    if ( IbDtstTabelaCCE_ENVIADA.AsInteger = 0 ) then
      dbgDados.Canvas.Font.Color := lblCartaPendente.Font.Color;

    dbgDados.DefaultDrawDataCell(Rect, dbgDados.Columns[DataCol].Field, State);
  end;
end;

procedure TfrmGeCartaCorrecao.HabilitarDesabilitar_Btns;
begin
  if ( pgcGuias.ActivePage = tbsCadastro ) then
  begin
    BtnEnviarCCe.Enabled := (IbDtstTabelaCCE_ENVIADA.AsInteger = 0) and (not IbDtstTabela.IsEmpty) and (not (IbDtstTabela.State in [dsEdit, dsInsert]));
    btbtnLista.Enabled   := (IbDtstTabelaCCE_ENVIADA.AsInteger = 1) and (not IbDtstTabela.IsEmpty) and (Trim(IbDtstTabelaPROTOCOLO.AsString) <> EmptyStr);
  end
  else
  begin
    BtnEnviarCCe.Enabled := False;
    btbtnLista.Enabled   := False;
  end;
end;

procedure TfrmGeCartaCorrecao.btbtnListaClick(Sender: TObject);
begin
  inherited;
  DMNFe.ImprimirCCeACBr(IbDtstTabelaCCE_EMPRESA.AsString, IbDtstTabelaCCE_NUMERO.AsInteger);
end;

procedure TfrmGeCartaCorrecao.btbtnSalvarClick(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeCartaCorrecao.pgcGuiasChange(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeCartaCorrecao.BtnEnviarCCeClick(Sender: TObject);
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  if not GetPermissaoRotinaInterna(Sender, True) then
    Abort;

  RecarregarRegistro;

  if not DMNFe.GetValidadeCertificado(IbDtstTabelaCCE_EMPRESA.AsString) then
    Exit;

  if DMNFe.ConfigurarParamentoNFE(IbDtstTabelaCCE_EMPRESA.AsString) then
  begin
    ShowInformation('A emiss�o da CC-e exige a configura��o dos par�metros da empresa.' + #13 + 'Favor entrar em contrato com suporte.');
    Exit;
  end;

  if DMNFe.GerarEnviarCCeACBr(IbDtstTabelaCCE_EMPRESA.AsString, IbDtstTabelaCCE_NUMERO.AsInteger, Trim(mmCondicaoUso.Lines.Text)) then
  begin
    ExecuteScriptSQL(
      'Update TBNFE_CARTA_CORRECAO Set ' +
      '  CCE_ENVIADA     = 1 ' +
      'where CCE_EMPRESA = ' + QuotedStr(IbDtstTabelaCCE_EMPRESA.AsString) +
      '  and CCE_NUMERO  = ' + IbDtstTabelaCCE_NUMERO.AsString
    );
    RecarregarRegistro;
  end;

  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeCartaCorrecao.FormActivate(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeCartaCorrecao.IbDtstTabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeCartaCorrecao.DtSrcTabelaStateChange(Sender: TObject);
begin
  inherited;
  dbEmpresa.ReadOnly := (IbDtstTabela.State = dsEdit);
  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeCartaCorrecao.RecarregarRegistro;
var
  sID : String;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    Exit;

  if IbDtstTabela.IsEmpty then
    sID := EmptyStr
  else
    sID := IbDtstTabelaCCE_NUMERO.AsString;

  if ( sID <> EmptyStr ) then
  begin
    IbDtstTabela.Close;
    IbDtstTabela.Open;
    IbDtstTabela.Locate('CCE_NUMERO', sID, []);
  end;
end;

procedure TfrmGeCartaCorrecao.RegistrarNovaRotinaSistema;
begin
  if ( Trim(RotinaID) <> EmptyStr ) then
  begin
    if BtnEnviarCCe.Visible then
      SetRotinaSistema(ROTINA_TIPO_FUNCAO, RotinaEnviarCCeID, BtnEnviarCCe.Caption, RotinaID);
  end;
end;

function TfrmGeCartaCorrecao.GetRotinaEnviarCCeID: String;
begin
  Result := GetRotinaInternaID(BtnEnviarCCe);
end;

initialization
  FormFunction.RegisterForm('frmGeCartaCorrecao', TfrmGeCartaCorrecao);

end.
