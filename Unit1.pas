unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    DBGrid1: TDBGrid;
    teste11: TMenuItem;
    teste21: TMenuItem;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Coluna: TStringField;
    procedure MenuItemClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FSelectedColumn: TColumn;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
var
  Pt: TPoint;
begin
  FSelectedColumn := Column;
  // mostra popup na posição do mouse
  GetCursorPos(Pt);
  PopupMenu1.Popup(Pt.X, Pt.Y);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  teste11.OnClick := MenuItemClick;
  teste21.OnClick := MenuItemClick;
end;

procedure TForm1.MenuItemClick(Sender: TObject);
begin
  if Assigned(FSelectedColumn) and (Sender is TMenuItem) then
    FSelectedColumn.Title.Caption := TMenuItem(Sender).Caption;
end;

end.
