// CodeGear C++Builder
// Copyright (c) 1995, 2017 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Classe.Badge.pas' rev: 33.00 (Windows)

#ifndef Classe_BadgeHPP
#define Classe_BadgeHPP

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
#include <System.UITypes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Classe
{
namespace Badge
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBadge;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBadge : public Vcl::Forms::TFrame
{
	typedef Vcl::Forms::TFrame inherited;
	
__published:
	Vcl::Extctrls::TPanel* Shape;
	Vcl::Extctrls::TPanel* Notification;
	
private:
	System::UnicodeString FCountNotification;
	void __fastcall SetCountNotification(const System::UnicodeString Value);
	
__published:
	void __fastcall MakeRounded(Vcl::Controls::TWinControl* Control);
	void __fastcall DrawShadow(Vcl::Graphics::TCanvas* Canvas, Vcl::Extctrls::TPanel* Painel, System::Uitypes::TColor Cor = (System::Uitypes::TColor)(0x0));
	__property System::UnicodeString CountNotification = {read=FCountNotification, write=SetCountNotification};
public:
	/* TCustomFrame.Create */ inline __fastcall virtual TBadge(System::Classes::TComponent* AOwner) : Vcl::Forms::TFrame(AOwner) { }
	
public:
	/* TScrollingWinControl.Destroy */ inline __fastcall virtual ~TBadge() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TBadge(HWND ParentWindow) : Vcl::Forms::TFrame(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Badge */
}	/* namespace Classe */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE_BADGE)
using namespace Classe::Badge;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE)
using namespace Classe;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Classe_BadgeHPP
