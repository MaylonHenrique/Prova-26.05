unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnChecar: TButton;
    btnChecar2: TButton;
    btnChecar3: TButton;
    edtValor5: TEdit;
    edtValor6: TEdit;
    edtResultado3: TEdit;
    edtResultado2: TEdit;
    edtValor3: TEdit;
    edtValor4: TEdit;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResposta: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbAtual: TLabel;
    lbEmpresa: TLabel;
    lbvalo1: TLabel;
    lbvlor2: TLabel;
    procedure btnChecar2Click(Sender: TObject);
    procedure btnChecar3Click(Sender: TObject);
    procedure btnChecarClick(Sender: TObject);
    procedure edtResultado3Change(Sender: TObject);
  private
      valor1, valor2, valor3, valor4, valor5, valor6, resultado3, resultado2, resultado: integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnChecarClick(Sender: TObject);
begin
  valor1 := StrToInt(edtValor1.text);
  valor2 := StrToInt(edtValor2.text);
  resultado := valor1 - valor2;

  edtResposta.text:= IntToStr (resultado)
end;

procedure TForm1.edtResultado3Change(Sender: TObject);
begin
  edtResultado3.text:= IntToStr (resultado3);
end;

procedure TForm1.btnChecar2Click(Sender: TObject);
begin
  valor3 := StrToInt(edtValor3.text);
  valor4 := StrToInt(edtValor4.text);
  resultado2 := valor3 - valor4;

  edtResultado2.text:= IntToStr (resultado2);
end;

procedure TForm1.btnChecar3Click(Sender: TObject);
begin
   valor5 := StrToInt(edtValor5.text);
   valor6 := StrToInt(edtValor6.text);
   if (valor5 >=60) and (valor6 >=30)  then
    write('Apto para aposentadoria')
    else
    write('nao apto a aposentadoria');


end;

end.

