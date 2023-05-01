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
    crt.clrscr;
    writeln('Enter the website: ');
    RadLn(LoginInfo[Count].Website);
    writeln('Enter the username: ');
    RadLn(LoginInfo[Count].Username);
    writeln('Enter the password: ');
    RadLn(LoginInfo[Count].Password);
    Inc(Count);
end