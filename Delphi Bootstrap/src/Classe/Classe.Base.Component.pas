unit Classe.Base.Component;

interface

{$SCOPEDENUMS ON}
 Type
  TStyle = (Primary, Secondary, Success, Danger, Warning, Info, Light, Dark);
{$SCOPEDENUMS OFF}

Type
  TBaseComponent =  class


  private
    procedure MakeRounded(Control: TWinControl);

  end;

implementation

{ TBaseComponent }

procedure TBaseComponent.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 5, 5);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

end.
