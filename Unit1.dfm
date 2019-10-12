object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 456
    Height = 42
    Caption = 'Back Up AND Restore DB Sql Server '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_path: TEdit
    Left = 32
    Top = 104
    Width = 456
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btn_restore: TButton
    Left = 312
    Top = 168
    Width = 113
    Height = 57
    Caption = 'Restore '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn_restoreClick
  end
  object btn_backup: TButton
    Left = 80
    Top = 168
    Width = 113
    Height = 57
    Caption = 'Back Up'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Traditional Arabic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn_backupClick
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Toute Les Fichier|*.bak'
    Title = 'Back Up And Restore Databases'
    Left = 560
    Top = 16
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=TEST;Data Source=KIKATOKIRO-' +
      'PC;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=KIKATOKIRO-PC;Use Encryption for Data=False;T' +
      'ag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 552
    Top = 96
  end
  object qry_restore: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 608
    Top = 192
  end
  object qry_backup: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 496
    Top = 192
  end
end
