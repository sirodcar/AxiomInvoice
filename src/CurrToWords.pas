unit CurrToWords;

{******************************************************************
  @COMPANY:Raven Developers 2008
  @URL: https://www.ravendevelopers.com
  @FILE INFO: Currency to words converter PASCAL UNIT, for INR currency ONLY!
  @COPYRIGHT NOTICE:
  Distributed under Creative Commons Attribution 3.0 License
  More information can be found at: http://creativecommons.org/licenses/by/3.0/legalcode
******************************************************************}

interface

uses
  Classes,
  Controls,
  Dialogs,
  Forms,
  StrUtils,
  SysUtils,
  Variants,
  Windows;

function CurrencyToWord(MyNumber: variant): string;
function ConvertHundreds(MyNumber: variant): string;
function ConvertTens(MyTens: variant): string;
function ConvertDigit(MyDigit: variant): string;

implementation

function CurrencyToWord(MyNumber: variant): string;
var
  Temp:  string;
  Rupees, Paisa, Hundreds, Words: string;
  DecimalPlace, iCount: integer;
  Place: array[0..9] of string;
begin
  Place[0] := ' Thousand ';
  Place[2] := ' ';//Lakh ';
  Place[4] := ' ';//' Crore ';
  Place[6] := ' ';//' Arab ';
  Place[8] := ' ';//' Kharab ';

  //Convert MyNumber to a string, trimming extra spaces.
  MyNumber := Trim(VarToStr(MyNumber));

  //Find decimal place.
  DecimalPlace := AnsiPos('.', MyNumber);

  //If we find decimal place...
  if DecimalPlace > 0 then
  begin
    //Convert Paisa
    Temp  := LeftStr(MidStr(MyNumber, DecimalPlace + 1, 2) + '00', 2);
    Paisa := ' Riyal(s) and ' + ConvertTens(Temp) + ' Halla(s)';
    //Strip off paisa from remainder to convert.
    MyNumber := Trim(LeftStr(MyNumber, DecimalPlace - 1));
  end;

  //Convert last 3 digits of MyNumber to ruppees in word.
  Hundreds := ConvertHundreds(RightStr(MyNumber, 3));
  //Strip off last three digits
  MyNumber := LeftStr(MyNumber, StrLen(PChar(VarToStr(MyNumber))) - 3);

  iCount := 0;
  while MyNumber <> '' do
  begin
    //Strip last two digits
    Temp := RightStr(MyNumber, 2);
    if StrLen(PChar(VarToStr(MyNumber))) = 1 then
    begin
      Words := ConvertDigit(Temp) + Place[iCount] + Words;
      MyNumber := LeftStr(MyNumber, StrLen(PChar(VarToStr(MyNumber))) - 1);
    end
    else
    begin
      Words := ConvertTens(Temp) + Place[iCount] + Words;
      MyNumber := LeftStr(MyNumber, StrLen(PChar(VarToStr(MyNumber))) - 2);
    end;
    Inc(iCount, 2);
  end;
  Result := Words + Hundreds + Paisa;
end;

//Conversion for hundreds
function ConvertHundreds(MyNumber: variant): string;
var
  inResult: string;
begin
  //Exit if there is nothing to convert.
  if StrToInt(VarToStr(MyNumber)) = 0 then
    Exit;
  //Append leading zeros to number.
  MyNumber := RightStr('000' + MyNumber, 3);
  //Do we have a hundreds place digit to convert?
  if LeftStr(MyNumber, 1) <> '0' then
    inResult := ConvertDigit(LeftStr(MyNumber, 1)) + ' Hundred ';
  //Do we have a tens place digit to convert?
  if MidStr(MyNumber, 2, 1) <> '0' then
    inResult := inResult + ConvertTens(MidStr(MyNumber, 2, 2))
  else
    //If not, then convert the ones place digit.
    inResult := inResult + ConvertDigit(MidStr(MyNumber, 3, 2));
  Result := Trim(inResult);
end;

//Conversion for tens
function ConvertTens(MyTens: variant): string;
var
  inResult: string;
begin
  //Is value between 10 and 19?
  if StrToInt(VarToStr(LeftStr(VarToStr(MyTens), 1))) = 1 then
  begin
    case StrToInt(VarToStr(MyTens)) of
      10: inResult := 'Ten';
      11: inResult := 'Eleven';
      12: inResult := 'Twelve';
      13: inResult := 'Thirteen';
      14: inResult := 'Fourteen';
      15: inResult := 'Fifteen';
      16: inResult := 'Sixteen';
      17: inResult := 'Seventeen';
      18: inResult := 'Eighteen';
      19: inResult := 'Nineteen';
      else
    end;
  end
  else
  begin
    //otherwise it's between 20 and 99.
    case StrToInt(VarToStr(LeftStr(VarToStr(MyTens), 1))) of
      2: inResult := 'Twenty ';
      3: inResult := 'Thirty ';
      4: inResult := 'Forty ';
      5: inResult := 'Fifty ';
      6: inResult := 'Sixty ';
      7: inResult := 'Seventy ';
      8: inResult := 'Eighty ';
      9: inResult := 'Ninety ';
      else
    end;
    //Convert ones place digit.
    inResult := inResult + ConvertDigit(RightStr(MyTens, 1));
  end;
  Result := inResult;
end;

function ConvertDigit(MyDigit: variant): string;
var
  inResult: string;
begin
  case StrToInt(VarToStr(MyDigit)) of
    1: inResult := 'One';
    2: inResult := 'Two';
    3: inResult := 'Three';
    4: inResult := 'Four';
    5: inResult := 'Five';
    6: inResult := 'Six';
    7: inResult := 'Seven';
    8: inResult := 'Eight';
    9: inResult := 'Nine';
    else
      inResult := '';
  end;
  Result := inResult;
end;

end.
