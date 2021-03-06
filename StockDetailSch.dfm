object SchStockDetail: TSchStockDetail
  Left = 0
  Top = 0
  Caption = #24211#23384#26126#32454#26597#35810#31243#24335
  ClientHeight = 382
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Edit1: TEdit
      Left = 88
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 88
      Top = 53
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 304
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit3Change
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 15
      Width = 66
      Height = 17
      Caption = #26009#21495#65306
      TabOrder = 3
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 55
      Width = 66
      Height = 17
      Caption = #21697#21517#65306
      TabOrder = 4
    end
    object CheckBox3: TCheckBox
      Left = 232
      Top = 15
      Width = 66
      Height = 17
      Caption = #35268#26684#65306
      TabOrder = 5
    end
    object Button1: TButton
      Left = 504
      Top = 11
      Width = 75
      Height = 25
      Caption = #26597#35810'(&F)'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 504
      Top = 42
      Width = 75
      Height = 25
      Caption = #20851#38381'(&C)'
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 764
    Height = 260
    Align = alClient
    DataSource = dsStock
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TBNo_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TBDate_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AppUser_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'It_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PartCode_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Spec_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Final_'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 357
    Width = 764
    Height = 25
    DataSource = dsStock
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alBottom
    TabOrder = 2
  end
  object cdsStock: TADOQuery
    Connection = FrmMain.adoConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select H.TBNo_,H.TBDate_,H.AppUser_,H.Type_,B.It_,B.PartCode_,B.' +
        'Desc_,B.Spec_,B.Unit_,B.Unit_,B.Num_,B.Final_ '
      'from TranH H inner join TranB B on H.ID_=B.PID_')
    Left = 48
    Top = 144
  end
  object dsStock: TDataSource
    DataSet = cdsStock
    Left = 48
    Top = 200
  end
end
