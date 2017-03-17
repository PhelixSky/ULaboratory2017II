unit fmuMainWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

type
  TfmMainWindow = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    btnSend: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    ClientSocket1: TClientSocket;
    procedure btnSendClick(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainWindow: TfmMainWindow;

implementation

{$R *.dfm}

procedure TfmMainWindow.btnSendClick(Sender: TObject);
begin
  ClientSocket1.Socket.SendText(Edit1.Text);
  Memo1.Lines.Append(Format('Я - %s', [Edit1.Text]));
  Edit1.Text := '';
end;

procedure TfmMainWindow.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Memo1.Lines.Append(Format('Вона - %s', [Socket.ReceiveText]));
end;

procedure TfmMainWindow.CheckBox1Click(Sender: TObject);
begin
  ClientSocket1.Host := Edit2.Text;
  ClientSocket1.Active := CheckBox1.Checked;
end;

procedure TfmMainWindow.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnSendClick(Sender);
end;

end.
