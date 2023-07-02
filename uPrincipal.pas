unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao, Enter;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Registro1: TMenuItem;
    Consulta1: TMenuItem;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Mdulo1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    mnuFechar: TMenuItem;
    BrokenWindow1: TMenuItem;
    Registros1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter : TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadAplicacao;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(dtmPrincipal);
  FreeAndNil(TeclaEnter);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmPrincipal := TdtmPrincipal.Create(Self);

  with dtmPrincipal.ConexaoDB do
  begin
    SQLHourGlass := False;
    Protocol := 'mssql';
    Port := 1433;
    HostName := '.\SERVERCURSO';
    Database := 'broken_windows';
    LibraryLocation := 'C:\workspace\Projetos\Delphi\broken_windows\ntwdblib.dll';
    User := 'sa';
    Password := 'S@geBr.2014';
    Connected := True;
  end;

  TeclaEnter := TMREnter.Create(Self);
  TeclaEnter.FocusEnabled := True;
  TeclaEnter.FocusColor := clInfoBk;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.Sistema1Click(Sender: TObject);
begin
  frmCadAplicacao := TfrmCadAplicacao.Create(Self);
  frmCadAplicacao.ShowModal;
  frmCadAplicacao.Release;
end;

end.
