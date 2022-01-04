// CodeGear C++Builder
// Copyright (c) 1995, 2017 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Classe.badge.positioned.pas' rev: 33.00 (Windows)

#ifndef Classe_Badge_PositionedHPP
#define Classe_Badge_PositionedHPP

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
namespace Badge
{
namespace Positioned
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TBadgePositioneted;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TBadgePositioneted : public Vcl::Forms::TFrame
{
	typedef Vcl::Forms::TFrame inherited;
	
__published:
	Vcl::Extctrls::TPanel* inbox;
	Vcl::Extctrls::TPanel* notifications;
	
private:
	virtual void __fastcall CreateParams(Vcl::Controls::TCreateParams &Params);
	virtual void __fastcall PaintWindow(HDC DC);
	
public:
	__fastcall virtual TBadgePositioneted(System::Classes::TComponent* AOwner);
public:
	/* TScrollingWinControl.Destroy */ inline __fastcall virtual ~TBadgePositioneted() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TBadgePositioneted(HWND ParentWindow) : Vcl::Forms::TFrame(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Positioned */
}	/* namespace Badge */
}	/* namespace Classe */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE_BADGE_POSITIONED)
using namespace Classe::Badge::Positioned;
#endif
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
#endif	// Classe_Badge_PositionedHPP
