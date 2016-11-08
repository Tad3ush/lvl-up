program sami_ubogi_code_ever;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  cin:string;
  ex,e:boolean;

procedure stat;
  begin
    writeln('1')
  end;

procedure add;
  begin
    writeln('2')
  end;

procedure new;
  begin
    writeln('3')
  end;

procedure ext;
  begin
    writeln('0');
    writeln('Exit?');
    repeat
    e:=true;
    readln(cin);
    cin:=lowercase(cin);
    if cin='yes' then ex:=true else
    if cin='no' then ex:=false else
    begin
      e:=false;
      writeln('ERROR! Command does not exist. Try again')
    end;
    until e ;
  end;


begin
  writeln('What',#39,'s up');
  ex:= false;
  repeat
    readln(cin);
    cin:=lowercase(cin);
      if cin='stat' then stat else
      if cin='add' then add else
      if cin='new' then new else
      if cin='exit' then ext else
      writeln('ERROR! Command does not exist. Try again')
  until(ex);
end.
