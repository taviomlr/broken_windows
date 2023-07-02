unit uCadAplicacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmCadAplicacao = class(TfrmTelaHeranca)
    QryListagemid: TIntegerField;
    QryListagemnome: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAplicacao: TfrmCadAplicacao;

implementation

{$R *.dfm}

end.
