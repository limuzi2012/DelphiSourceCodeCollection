inherited frmAllocOriginalView: TfrmAllocOriginalView
  Left = 1
  Top = 0
  Width = 1022
  Height = 738
  Caption = #21407#26009#35843#25320#21333#22788#29702
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 1014
    Height = 38
    inherited tbFindData: TToolButton
      Visible = False
    end
    inherited ToolButton1: TToolButton
      Wrap = False
      Visible = False
    end
    inherited ToolButton2: TToolButton
      Left = 408
      Top = 0
      Visible = False
    end
    inherited tbConfirm: TToolButton
      Left = 476
      Top = 0
      Visible = False
    end
    inherited tbExport: TToolButton
      Left = 544
      Top = 0
    end
    inherited tbCancel: TToolButton
      Left = 612
      Top = 0
    end
    inherited ToolButton6: TToolButton
      Left = 680
      Top = 0
    end
    inherited tbExit: TToolButton
      Left = 688
      Top = 0
    end
  end
  inherited grdList: TdxDBGrid
    Top = 249
    Width = 1014
    Height = 462
    KeyField = 'RecId'
    DataSource = Allocd
    Filter.Criteria = {00000000}
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoSmartRefresh, edgoSmartReload, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object grdListRecId: TdxDBGridColumn
      Visible = False
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RecId'
    end
    object grdListI_ORIGINAL_CD: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_ORIGINAL_CD'
    end
    object grdListI_ORIGINAL_NAME: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 214
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_ORIGINAL_NAME'
    end
    object grdListI_PROPERTY_CODE: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_PROPERTY_CODE'
    end
    object grdListI_SHOP_CD: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 128
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_SHOP_CD'
    end
    object grdListI_UNIT: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 178
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_UNIT'
    end
    object grdListI_QTY1: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_QTY1'
    end
    object grdListI_QTY2: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_QTY2'
    end
    object grdListI_QTY3: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_QTY3'
    end
    object grdListI_COUNT: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'I_COUNT'
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 38
    Width = 1014
    Height = 211
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 39
      Height = 13
      Caption = #31867#21035#65306
    end
    object Label2: TLabel
      Left = 88
      Top = 8
      Width = 94
      Height = 13
      Caption = '1-'#25320#20837'  2-'#25320#20986
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 39
      Height = 13
      Caption = #26085#26399#65306
    end
    object Label4: TLabel
      Left = 184
      Top = 36
      Width = 21
      Height = 13
      Caption = 'NO.'
    end
    object Label5: TLabel
      Left = 336
      Top = 36
      Width = 65
      Height = 13
      Caption = #23545#26041#21333#20301#65306
    end
    object Label6: TLabel
      Left = 8
      Top = 62
      Width = 65
      Height = 13
      Caption = #21407#26009#36873#25321#65306
    end
    object Label7: TLabel
      Left = 8
      Top = 86
      Width = 65
      Height = 13
      Caption = #21407#26009#21333#20301#65306
    end
    object Label8: TLabel
      Left = 8
      Top = 111
      Width = 65
      Height = 13
      Caption = #22806#21253#25968#37327#65306
    end
    object Label9: TLabel
      Left = 8
      Top = 136
      Width = 65
      Height = 13
      Caption = #20869#21253#25968#37327#65306
    end
    object Label10: TLabel
      Left = 8
      Top = 161
      Width = 65
      Height = 13
      Caption = #25955#35013#25968#37327#65306
    end
    object Label11: TLabel
      Left = 21
      Top = 186
      Width = 52
      Height = 13
      Caption = #24635#25968#37327#65306
    end
    object eFlag: TdxEdit
      Left = 40
      Top = 4
      Width = 41
      Style.BorderStyle = xbsSingle
      TabOrder = 0
      OnKeyPress = eFlagKeyPress
      MaxLength = 1
      StoredValues = 2
    end
    object eDate: TdxDateEdit
      Left = 40
      Top = 32
      Width = 141
      Style.BorderStyle = xbsSingle
      TabOrder = 1
      OnKeyDown = eDateKeyDown
      Date = -700000
      UseEditMask = True
      StoredValues = 4
    end
    object eNo: TdxEdit
      Left = 208
      Top = 32
      Width = 121
      Style.BorderStyle = xbsSingle
      TabOrder = 2
      OnKeyDown = eNoKeyDown
    end
    object eShop: TdxPickEdit
      Left = 396
      Top = 32
      Width = 269
      Style.BorderStyle = xbsSingle
      TabOrder = 3
      OnKeyPress = eShopKeyPress
      MaxLength = 6
      StoredValues = 2
    end
    object eOriginal: TdxPickEdit
      Left = 68
      Top = 58
      Width = 257
      Style.BorderStyle = xbsSingle
      TabOrder = 4
      OnChange = eOriginalChange
    end
    object eUnit: TdxEdit
      Left = 68
      Top = 82
      Width = 429
      Enabled = False
      Style.BorderStyle = xbsSingle
      TabOrder = 5
    end
    object eQty1: TdxEdit
      Left = 68
      Top = 107
      Width = 150
      Style.BorderStyle = xbsSingle
      TabOrder = 6
      Text = '0'
      OnKeyDown = eQty1KeyDown
      OnKeyPress = eQty1KeyPress
    end
    object eQty2: TdxEdit
      Left = 68
      Top = 132
      Width = 150
      Style.BorderStyle = xbsSingle
      TabOrder = 7
      Text = '0'
      OnKeyDown = eQty2KeyDown
      OnKeyPress = eQty2KeyPress
    end
    object eQty3: TdxEdit
      Left = 68
      Top = 157
      Width = 150
      Style.BorderStyle = xbsSingle
      TabOrder = 8
      Text = '0'
      OnKeyDown = eQty3KeyDown
      OnKeyPress = eQty3KeyPress
    end
    object eCount: TdxEdit
      Left = 68
      Top = 182
      Width = 150
      Enabled = False
      Style.BorderStyle = xbsSingle
      TabOrder = 9
      Text = '0'
    end
  end
  inherited Viewq: TCSADOQuery
    object ViewqI_ORIGINAL_CD: TStringField
      DisplayLabel = #21697#21495
      FieldName = 'I_ORIGINAL_CD'
      ReadOnly = True
      Size = 6
    end
    object ViewqI_ORIGINAL_NAME: TStringField
      DisplayLabel = #21697#21517
      FieldName = 'I_ORIGINAL_NAME'
      ReadOnly = True
      Size = 30
    end
    object ViewqI_PROPERTY_CODE: TStringField
      DisplayLabel = #23646#24615#30721
      FieldName = 'I_PROPERTY_CODE'
      ReadOnly = True
      Size = 4
    end
    object ViewqI_UNIT: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'I_UNIT'
      ReadOnly = True
      Size = 100
    end
    object ViewqI_QTY1: TIntegerField
      DisplayLabel = #22806#21253#25968#37327
      FieldName = 'I_QTY1'
    end
    object ViewqI_QTY2: TIntegerField
      DisplayLabel = #20869#21253#25968#37327
      FieldName = 'I_QTY2'
    end
    object ViewqI_QTY3: TIntegerField
      DisplayLabel = #25955#35013#25968#37327
      FieldName = 'I_QTY3'
    end
  end
  object memAlloc: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 280
    Top = 184
    object memAllocI_ORIGINAL_CD: TStringField
      DisplayLabel = #21697#21495
      FieldName = 'I_ORIGINAL_CD'
      Size = 6
    end
    object memAllocI_ORIGINAL_NAME: TStringField
      DisplayLabel = #21697#21517
      FieldName = 'I_ORIGINAL_NAME'
      Size = 30
    end
    object memAllocI_PROPERTY_CODE: TStringField
      DisplayLabel = #23646#24615#30721
      FieldName = 'I_PROPERTY_CODE'
      Size = 4
    end
    object memAllocI_UNIT: TStringField
      DisplayLabel = #21333#20301
      DisplayWidth = 100
      FieldName = 'I_UNIT'
      Size = 100
    end
    object memAllocI_QTY1: TIntegerField
      DisplayLabel = #22806#21253#25968#37327
      FieldName = 'I_QTY1'
    end
    object memAllocI_QTY2: TIntegerField
      DisplayLabel = #20869#21253#25968#37327
      FieldName = 'I_QTY2'
    end
    object memAllocI_QTY3: TIntegerField
      DisplayLabel = #25955#35013#25968#37327
      FieldName = 'I_QTY3'
    end
    object memAllocI_COUNT: TIntegerField
      DisplayLabel = #24635#25968#37327
      FieldName = 'I_COUNT'
    end
    object memAllocI_SHOP_CD: TStringField
      DisplayLabel = #23545#26041#21333#20301
      FieldName = 'I_SHOP_CD'
      Size = 10
    end
  end
  object Allocd: TDataSource
    AutoEdit = False
    DataSet = memAlloc
    Left = 280
    Top = 212
  end
end
