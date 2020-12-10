unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmCalculadora }

  TfrmCalculadora = class(TForm)
    btnCalcular: TButton;
    cmbOperacao: TComboBox;
    edtResultado: TEdit;
    edtNumero2: TEdit;
    edtNumero1: TEdit;
    lblResultado: TLabel;
    lblOperacao: TLabel;
    lblNumero2: TLabel;
    lblNumero1: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.lfm}

{ TfrmCalculadora }

procedure TfrmCalculadora.btnCalcularClick(Sender: TObject);
var N1, N2, Resultado: Double; Operacao: String;
begin
     N1 := StrToFloat(edtNumero1.Text);
     N2 := StrToFloat(edtNumero2.Text);
     Operacao := cmbOperacao.Text;

     if (Operacao = 'Somar') then begin
        Resultado := N1 + N2;;
     end;

     if (Operacao = 'Subtrair') then begin
        Resultado := N1 - N2;
     end;

     if (Operacao = 'Multiplicar') then begin
        Resultado := N1 * N2;
     end;

     if (Operacao = 'Dividir') then begin
        Resultado := N1 / N2;
     end;

     edtResultado.Text := FloatToStr(Resultado);
end;

end.

