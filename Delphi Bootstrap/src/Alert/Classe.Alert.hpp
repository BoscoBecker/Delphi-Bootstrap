// CodeGear C++Builder
// Copyright (c) 1995, 2017 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Classe.Alert.pas' rev: 33.00 (Windows)

#ifndef Classe_AlertHPP
#define Classe_AlertHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.SysUtils.hpp>
#include <System.Variants.hpp>
#include <System.Classes.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Classe
{
namespace Alert
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TAlert;
//-- type declarations -------------------------------------------------------
enum class DECLSPEC_DENUM TStyle : unsigned char { Primary, Secondary, Success, Danger, Warning, Info, Light, Dark };

class PASCALIMPLEMENTATION TAlert : public Vcl::Forms::TFrame
{
	typedef Vcl::Forms::TFrame inherited;
	
__published:
	Vcl::Extctrls::TPanel* shape;
	
private:
	TStyle FStyleAlert;
	System::UnicodeString FTextAlert;
	void __fastcall SetStyleAlert(const TStyle Value);
	void __fastcall SetTextAlert(const System::UnicodeString Value);
	
protected:
	void __fastcall Primary();
	void __fastcall Secondary();
	void __fastcall Success();
	void __fastcall Danger();
	void __fastcall Warning();
	void __fastcall Info();
	void __fastcall Ligth();
	void __fastcall Dark();
	
public:
	void __fastcall MakeRounded(Vcl::Controls::TWinControl* Control);
	
__published:
	__property TStyle StyleAlert = {read=FStyleAlert, write=SetStyleAlert, nodefault};
	__property System::UnicodeString TextAlert = {read=FTextAlert, write=SetTextAlert};
public:
	/* TCustomFrame.Create */ inline __fastcall virtual TAlert(System::Classes::TComponent* AOwner) : Vcl::Forms::TFrame(AOwner) { }
	
public:
	/* TScrollingWinControl.Destroy */ inline __fastcall virtual ~TAlert() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TAlert(HWND ParentWindow) : Vcl::Forms::TFrame(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Alert */
}	/* namespace Classe */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE_ALERT)
using namespace Classe::Alert;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE)
using namespace Classe;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Classe_AlertHPP
