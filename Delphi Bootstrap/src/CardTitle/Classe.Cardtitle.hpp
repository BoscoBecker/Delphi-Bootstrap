// CodeGear C++Builder
// Copyright (c) 1995, 2017 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Classe.Cardtitle.pas' rev: 33.00 (Windows)

#ifndef Classe_CardtitleHPP
#define Classe_CardtitleHPP

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
#include <Vcl.StdCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Classe
{
namespace Cardtitle
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTCardTitle;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTCardTitle : public Vcl::Forms::TFrame
{
	typedef Vcl::Forms::TFrame inherited;
	
__published:
	Vcl::Extctrls::TPanel* shape;
	Vcl::Extctrls::TImage* Image;
	Vcl::Extctrls::TPanel* shapeInterno;
	Vcl::Extctrls::TPanel* button;
	Vcl::Stdctrls::TLabel* captionCard;
	Vcl::Stdctrls::TLabel* msgCard;
	Vcl::Dialogs::TOpenDialog* OpenDialog1;
	
private:
	Vcl::Graphics::TPicture* FCardPicture;
	void __fastcall SetCardPicture(Vcl::Graphics::TPicture* const Value);
	
public:
	__fastcall virtual TTCardTitle(System::Classes::TComponent* AOwner);
	void __fastcall MakeRounded(Vcl::Controls::TWinControl* Control);
	
__published:
	__property Vcl::Graphics::TPicture* CardPicture = {read=FCardPicture, write=SetCardPicture};
public:
	/* TScrollingWinControl.Destroy */ inline __fastcall virtual ~TTCardTitle() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TTCardTitle(HWND ParentWindow) : Vcl::Forms::TFrame(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Cardtitle */
}	/* namespace Classe */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE_CARDTITLE)
using namespace Classe::Cardtitle;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_CLASSE)
using namespace Classe;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Classe_CardtitleHPP
