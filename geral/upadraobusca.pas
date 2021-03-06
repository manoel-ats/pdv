unit uPadraoBusca;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, DBGrids, Buttons;

type

  { TfPadraoBusca }

  TfPadraoBusca = class(TForm)
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair1: TBitBtn;
    chInativo: TCheckBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSair1Click(Sender: TObject);

  private

  public

  end;

var
  fPadraoBusca: TfPadraoBusca;

implementation

{$R *.lfm}

{ TfPadraoBusca }

procedure TfPadraoBusca.btnSair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPadraoBusca.btnExcluirClick(Sender: TObject);
var
  n : integer;
begin
  for n := 0 to ComponentCount - 1 do
  begin
    if components[n] is TEdit then
    begin
      TEdit(components[n]).Text := '';
    end
    else if components[n] is TComboBox then
    begin
      TComboBox(components[n]).ItemIndex := -1;
    end;
  end;


end;

end.

