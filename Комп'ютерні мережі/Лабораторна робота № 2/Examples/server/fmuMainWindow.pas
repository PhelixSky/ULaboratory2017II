unit fmuMainWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

type
  TfmMainWindow = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    chkActive: TCheckBox;
    btnSend: TButton;
    ServerSocket1: TServerSocket;
    ListBox1: TListBox;
    procedure btnSendClick(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure chkActiveClick(Sender: TObject);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
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
  ServerSocket1.Socket.Connections[0].SendText(Edit1.Text);
  Memo1.Lines.Append(Format('ß - %s', [Edit1.Text]));
  Edit1.Text := '';
end;

procedure TfmMainWindow.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Memo1.Lines.Append(Format('Â³í - %s', [Socket.ReceiveText]));
end;

procedure TfmMainWindow.chkActiveClick(Sender: TObject);
begin
  ServerSocket1.Active := chkActive.Checked;
end;

procedure TfmMainWindow.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
   ListBox1.Items.Append(Socket.RemoteHost);
end;

end.
