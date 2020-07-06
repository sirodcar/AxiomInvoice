object frmGrid: TfrmGrid
  Left = 0
  Top = 0
  Caption = 'Grid'
  ClientHeight = 436
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 532
    Height = 436
    Align = alClient
    TabOrder = 0
    object btnAdd: TcxButton
      Left = 10
      Top = 401
      Width = 75
      Height = 25
      Caption = '&Add'
      TabOrder = 0
    end
    object btnedit: TcxButton
      Left = 91
      Top = 401
      Width = 75
      Height = 25
      Caption = '&Edit'
      TabOrder = 1
    end
    object GrBase: TcxGrid
      Left = 10
      Top = 40
      Width = 250
      Height = 200
      TabOrder = 5
      object GrDB: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBase
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 27
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 25
      end
      object grLvl: TcxGridLevel
        GridView = GrDB
      end
    end
    object btnDel: TcxButton
      Left = 172
      Top = 401
      Width = 75
      Height = 25
      Caption = '&Delete'
      TabOrder = 2
    end
    object txtCari: TcxButtonEdit
      Left = 10
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 0
          Kind = bkGlyph
        end>
      Properties.Images = img
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Text = 'Search.....'
      Width = 327
    end
    object cxButton1: TcxButton
      Left = 447
      Top = 401
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object GrBtm: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrHeader: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grMain: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LyFeel
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object itmBtnok: TdxLayoutItem
      Parent = GrBtm
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnAdd
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = GrBtm
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnedit
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmGr: TdxLayoutItem
      Parent = grMain
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GrBase
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = GrBtm
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnDel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = GrHeader
      AlignHorz = ahLeft
      Control = txtCari
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 327
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object btnClose: TdxLayoutItem
      Parent = GrBtm
      AlignHorz = ahRight
      CaptionOptions.Text = 'Close'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object LyBase: TdxLayoutLookAndFeelList
    Left = 208
    Top = 256
    object LyFeel: TdxLayoutCxLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      PixelsPerInch = 96
    end
  end
  object dsBase: TUniDataSource
    DataSet = Master
    Left = 240
    Top = 256
  end
  object Master: TUniQuery
    Connection = Data.DTCon
    Left = 176
    Top = 256
  end
  object img: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 8913064
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000532042360B701040D5800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000052F0548B3E134C5FFFF245E96DE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000631064BBFE634C7FFFF4AC1ECFB060E3B6000000000000000000000
          0000000000000000000000000003000000230101012A00000010000000000000
          0B220354C3E735C8FFFF4CC3EFFB04093B570000000000000000000000000000
          0000000000000F0F0F5E5E5E5ECC989693F49D9B98F86F6F6EDE1A1B1B7E292E
          58A08ACCE5FF3DB8EFFC04094157000000000000000000000000000000000000
          000024252584C4BEB8FFF4E4CFFFFFECD2FFFFECD2FFF7E6D0FFC8BFB5FFB9B7
          ACFF535968B800053A4600000000000000000000000000000000000000001718
          184FBEB8B2FFFFE6C7FFFFE3BEFFFFDDB7FFFFDDB6FFFFE2BDFFFFE9C8FFCFC4
          B8FF2424248C0000000000000000000000000000000000000000000000007677
          78C7EDD3B7FFFFD8A9FFFFCF9CFFFFCD9AFFFFCD9AFFFFCF9CFFFFD6A7FFFCDC
          B9FF898785EE000000170000000000000000000000000000000000000000AAA6
          A1F6F9CDA0FFFFCE99FFFFD1A1FFFFD4A8FFFFD4A8FFFFD1A2FFFFCD9AFFFFD2
          9FFFB9AEA2FF050506390000000000000000000000000000000000000000A9A4
          A0F4F9CA9BFFFFD7ABFFFFDCB8FFFFE0C0FFFFE0C0FFFFDDB9FFFFD7ADFFFFD0
          9CFFBAAC9FFF0404053200000000000000000000000000000000000000007576
          76C1EBCCACFFFFE0BAFFFFE5CBFFFFEBD5FFFFEBD6FFFFE6CCFFFFE1BDFFFBD4
          ADFF868280E40000000C00000000000000000000000000000000000000002121
          2245C1BAB2FEFBDFC2FFFFF1DCFFFFF7ECFFFFF7EDFFFFF1DFFFFFE5C6FFD1C3
          B4FF262727740000000000000000000000000000000000000000000000000000
          00003B3C3C6DC0BBB6FAEADFD2FFF7F3EEFFF8F5F0FFEDE2D5FFCAC1B9FF6162
          629C010101030000000000000000000000000000000000000000000000000000
          000000000000272727497E7E7EBFB4B3B2F5B7B7B6F98E8E8ED13D3E3F670000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFB0000FFF10000FFE30000FFC70000F08F0000C01F0000C01F
          0000801F0000801F0000801F0000801F0000C03F0000E03F0000F0FF0000FFFF
          0000}
      end>
  end
end
