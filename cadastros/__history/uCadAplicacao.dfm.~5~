inherited frmCadAplicacao: TfrmCadAplicacao
  Caption = 'Cadastro de Aplica'#231#227'o'
  ClientWidth = 776
  ExplicitWidth = 788
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 776
    ExplicitWidth = 861
    ExplicitHeight = 331
    inherited tabListagem: TTabSheet
      ExplicitWidth = 768
      inherited grdListagem: TDBGrid
        Width = 768
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 643
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ExplicitWidth = 768
    end
  end
  inherited pnlRodape: TPanel
    Width = 776
    DesignSize = (
      776
      50)
    inherited btnFechar: TBitBtn
      Left = 695
      ExplicitLeft = 695
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlListagem: TPanel
    Width = 776
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT id, '
      '             nome'
      '  FROM aplicacao')
    Left = 440
    object QryListagemid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      ReadOnly = True
    end
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'nome'
      Size = 30
    end
  end
  inherited dtsListagem: TDataSource
    Left = 504
  end
end
