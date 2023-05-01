program PasswordManager;

uses crt, sysutils;

type
  TLoginInfo = record
    Website: string[50];
    Username: string[50];
    Password: string[50];
  end;

var
  LoginInfo: array[1..100] of TLoginInfo;
  Count: integer;

procedure AddLoginInfo;
begin
    ClrScr;
    writeln('Enter the website: ');
    RadLn(LoginInfo[Count].Website);
    writeln('Enter the username: ');
    RadLn(LoginInfo[Count].Username);
    writeln('Enter the password: ');
    RadLn(LoginInfo[Count].Password);
    Inc(Count);
end

procedure ViewLoginInfo;
var
  i: integer;
begin
  Clrscr;
  for i := 1 to Count do
  begin
    writeln('Website: ', LoginInfo[i].Website);
    writeln('Username: ', LoginInfo[i].Username);
    writeln('Password: ', LoginInfo[i].Password);
    writeln;
  end;
end;

procedure MainLoop;
var
  Choice: char;
begin
  repeat
    ClrScr;
    writeln('1. Add login info');
    writeln('2. View login info');
    writeln('Q. Quit');
    WriteLn('Write your choice: ')
    Choice := ReadKey;
    case Choice of
      '1': AddLoginInfo;
      '2': ViewLoginInfo;
      'q','Q';
      else
        writeln('Invalid choice, Press key');
        ReadKey;
    end;
  until Choice = 'q' or Choice = 'Q';
end;

begin
  Count := 1;
  MainLoop;
end.