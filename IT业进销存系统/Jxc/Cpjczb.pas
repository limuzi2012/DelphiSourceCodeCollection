unit Cpjczb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComDjzb, Menus, StdCtrls, ComCtrls, DBCtrls, ExtCtrls, ToolWin, Grids,
  DBGrids, ActnList, db, dbclient, ComDczb;

type
  TfrmCpjczb = class(TfrmComDczb)
    procedure FormShow(Sender: TObject);override;
    procedure LoadEditForm(strState: string);override;
    procedure OpendataSet;override;
    procedure dsAfterScroll(DataSet: TDataSet);override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCpjczb: TfrmCpjczb;

implementation

uses Dm, Main, ComDj, Cpjc, ComFun;

{$R *.DFM}

procedure TfrmCpjczb.FormShow(Sender: TObject);
begin
  strAutoScale := 'DBGrid2';
  inherited;
end;

procedure TfrmCpjczb.LoadEditForm(strState: string);
begin
  frmDj := TfrmComDj(TfrmCpjc.Create(Application));
  inherited;
end;

procedure TfrmCpjczb.OpendataSet;
var
  strWhere: string;
begin
  //ͬʱ���� MyLib.Open
  if CheckBox1.Checked then
    strWhere := 'where Z.RQ between ' +
      '#' + FormatDateTime( 'yyyy-mm-dd',dtpRqa.Date ) + '# and ' +
      '#' + FormatDateTime( 'yyyy-mm-dd',dtpRqb.Date ) + '#'
  else
    strWhere := '';
  dsJbzl.Close;
  dsJbzl.CommandText :=
    'select Z.*, ' +
    'C.MC as aCKMC ' +
    'from CPJCZB Z, CK C, ' +
    'Z inner join C on Z.CKID = C.ID ' + strWhere + ' ' +
    'order by Z.DJBH';
  inherited;
end;

procedure TfrmCpjczb.dsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if aDetail.Checked and (DataSet = DBGrid1.DataSource.DataSet) then
    with TClientDataSet(DBGrid2.DataSource.DataSet) do
    begin
      Close;
      CommandText :=
        'select M.*, ' +
        'H.BH as aBH, H.PM as aPM, H.DW as aDW ' +
        'from CPJC M, HP H, M inner join H on M.HPID=H.ID ' +
        'where ZBID = ' + Float2Str(dsJbzl['ID']);
      Open;
    end;
end;

end.
