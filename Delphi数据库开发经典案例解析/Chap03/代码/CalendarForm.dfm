object Calendar: TCalendar
  Left = 241
  Top = 189
  Width = 700
  Height = 480
  Caption = #24037#21378#26085#21382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 344
    Top = 96
    Width = 345
    Height = 353
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 8
    object Label3: TLabel
      Left = 63
      Top = 34
      Width = 64
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24180#20221
    end
    object Label4: TLabel
      Left = 63
      Top = 66
      Width = 64
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #35745#21010#26399
    end
    object Label5: TLabel
      Left = 63
      Top = 98
      Width = 64
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24320#22987#26085#26399
    end
    object Label6: TLabel
      Left = 63
      Top = 130
      Width = 64
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #32467#26463#26085#26399
    end
    object Label7: TLabel
      Left = 72
      Top = 160
      Width = 64
      Height = 13
      AutoSize = False
      Caption = #22791#27880
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 337
    Height = 361
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = #24180#20221
        Visible = True
      end
      item
        Expanded = False
        FieldName = #35745#21010#26399
        Visible = True
      end
      item
        Expanded = False
        FieldName = #24320#22987#26085#26399
        Visible = True
      end
      item
        Expanded = False
        FieldName = #32467#26463#26085#26399
        Visible = True
      end
      item
        Expanded = False
        FieldName = #22791#27880
        Width = 200
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 475
    Top = 128
    Width = 121
    Height = 21
    DataField = #24180#20221
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 475
    Top = 160
    Width = 121
    Height = 21
    DataField = #35745#21010#26399
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 475
    Top = 192
    Width = 121
    Height = 21
    DataField = #24320#22987#26085#26399
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 475
    Top = 224
    Width = 121
    Height = 21
    DataField = #32467#26463#26085#26399
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object DBMemo1: TDBMemo
    Left = 424
    Top = 280
    Width = 201
    Height = 129
    DataField = #22791#27880
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 48
    Width = 689
    Height = 41
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 6
    object Label1: TLabel
      Left = 98
      Top = 10
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #24180#20221
    end
    object Label2: TLabel
      Left = 282
      Top = 10
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #35745#21010#26399
    end
    object BitBtn11: TBitBtn
      Left = 2
      Top = 2
      Width = 81
      Height = 33
      Caption = #25628#32034
      TabOrder = 0
      OnClick = BitBtn11Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880008888
        8000888880808888808088888000788870008888800000000000000000800008
        00000888808000080000080080000000000008888800008000080CCCCCC00CCC
        00888C888880088800888C800800080800888C8888888888C8888CCCCCCCCCCC
        C8888C8CC8CC8CC8C8888CCCCCCCCCCCC8888888888888888888}
      Layout = blGlyphRight
      Spacing = 3
    end
    object Edit1: TEdit
      Left = 154
      Top = 10
      Width = 100
      Height = 21
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 338
      Top = 10
      Width = 100
      Height = 21
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 692
    Height = 47
    AutoSize = True
    BorderWidth = 1
    ButtonHeight = 39
    ButtonWidth = 36
    Caption = 'ToolBar1'
    TabOrder = 7
    object BitBtn1: TBitBtn
      Left = 0
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #39318#35760#24405
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888448888818888888844888811
        8888888844888111888888884488111188888888448111118888888844881111
        8888888844888111888888884488881188888888448888818888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object BitBtn2: TBitBtn
      Left = 41
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #19978#35760#24405
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888881888888888888881188
        8888888888811188888888888811118888888888811111888888888888111188
        8888888888811188888888888888118888888888888881888888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object BitBtn3: TBitBtn
      Left = 82
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #19979#35760#24405
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888881888888888888888118888
        8888888888111888888888888811118888888888881111188888888888111188
        8888888888111888888888888811888888888888881888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object BitBtn4: TBitBtn
      Left = 123
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #23614#35760#24405
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = BitBtn4Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888188888448888888811888844
        8888888811188844888888881111884488888888111118448888888811118844
        8888888811188844888888881188884488888888188888448888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object ToolButton1: TToolButton
      Left = 164
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsDivider
    end
    object BitBtn5: TBitBtn
      Left = 172
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #26032#22686
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888800000000000888880888888888088888088888888
        8088888088888888808888808888888880888880888888888088888088888888
        8088888088888888808888808888888880888880888888000088888088888808
        0888888088888800888888800000000888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object BitBtn6: TBitBtn
      Left = 213
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #20462#25913
      ParentBiDiMode = False
      TabOrder = 5
      OnClick = BitBtn6Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888880808080888888888888888008888888888888800088888000000000B
        708888088888880B8088880800800800B708880888888880B808880CCCCCCCCC
        0B70888C888888880B00888C800800800011888C888888888000888CCCCCCCCC
        CCC8888C8CC8CC8CC8C8888CCCCCCCCCCCC88888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object BitBtn7: TBitBtn
      Left = 254
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #21024#38500
      ParentBiDiMode = False
      TabOrder = 6
      OnClick = BitBtn7Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888881F88881F8888888888888991F8888889F8888191F88888
        1F888888199F88891F8888888191F819F88888888819199F88888888888919F8
        888888888891911F888888888191F89F88888889191F88819F88881919F88888
        19F88891F8888888819F88888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object ToolButton2: TToolButton
      Left = 295
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsDivider
    end
    object BitBtn8: TBitBtn
      Left = 303
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #20445#23384
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 7
      OnClick = BitBtn8Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880000000000000880EE000000880E0880EE000000880E0880EE00000088
        0E0880EE000000000E0880EEEEEEEEEEEE0880EE00000000EE0880E088888888
        0E0880E0888888880E0880E0888888880E0880E0888888880E0880E088888888
        000880E088888888080880000000000000088888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object BitBtn9: TBitBtn
      Left = 344
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #21462#28040
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 8
      OnClick = BitBtn9Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888708888800000888880788880CC08888888088880C0888888
        8808888008088888880888808880088880788888888880000788888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
    object ToolButton3: TToolButton
      Left = 385
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsDivider
    end
    object BitBtn10: TBitBtn
      Left = 393
      Top = 2
      Width = 41
      Height = 39
      BiDiMode = bdLeftToRight
      Caption = #36864#20986
      ParentBiDiMode = False
      TabOrder = 9
      OnClick = BitBtn10Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888800888888
        8888888030888888888888033088888888888833300000000888883330880888
        88888033008808888488F033308808884488F033308808844444F03330880844
        4444803330880884444488330888088844888830888808888488880888880888
        8888880000000888888888888888888888888888888888888888}
      Layout = blGlyphTop
      Spacing = 0
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=$%*^@;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=mrpbook'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#24037#21378#26085#21382)
    Left = 464
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 496
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=$%*^@;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=mrpbook'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max('#24180#20221') maxyear,max('#35745#21010#26399') '
      'maxorder,max('#32467#26463#26085#26399') maxdate '
      'from '#24037#21378#26085#21382)
    Left = 528
    Top = 16
  end
end
