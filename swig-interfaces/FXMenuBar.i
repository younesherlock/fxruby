/***********************************************************************
 * FXRuby -- the Ruby language bindings for the FOX GUI toolkit.
 * Copyright (c) 2001 by J. Lyle Johnson. All Rights Reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * For further information please contact the author by e-mail
 * at "lyle@lylejohnson.name".
 ***********************************************************************/

/// Menu bar
class FXMenuBar : public FXToolBar {
protected:
  FXMenuBar(){}
public:
  long onFocusLeft(FXObject*,FXSelector,void* PTR_EVENT);
  long onFocusRight(FXObject*,FXSelector,void* PTR_EVENT);
  long onEnter(FXObject*,FXSelector,void* PTR_EVENT);
  long onLeave(FXObject*,FXSelector,void* PTR_EVENT);
  long onMotion(FXObject*,FXSelector,void* PTR_EVENT);
  long onButtonPress(FXObject*,FXSelector,void* PTR_IGNORE);
  long onButtonRelease(FXObject*,FXSelector,void* PTR_EVENT);
  long onCmdUnpost(FXObject*,FXSelector,void* PTR_IGNORE);
public:

  %extend {
    /**
    * Construct a floatable menubar
    * Normally, the menubar is docked under window p.
    * When floated, the menubar can be docked under window q, which is
    * typically an FXToolBarShell window.
    */
    FXMenuBar(FXComposite* p,FXComposite* q,FXuint opts=LAYOUT_TOP|LAYOUT_LEFT|LAYOUT_FILL_X,FXint x=0,FXint y=0,FXint w=0,FXint h=0,FXint pl=3,FXint pr=3,FXint pt=2,FXint pb=2,FXint hs=DEFAULT_SPACING,FXint vs=DEFAULT_SPACING){
      return new FXRbMenuBar(p,q,opts,x,y,w,h,pl,pr,pt,pb,hs,vs);
      }

    /**
    * Construct a non-floatable menubar.
    * The menubar can not be undocked.
    */
    FXMenuBar(FXComposite* p,FXuint opts,FXint x=0,FXint y=0,FXint w=0,FXint h=0,FXint pl=3,FXint pr=3,FXint pt=2,FXint pb=2,FXint hs=DEFAULT_SPACING,FXint vs=DEFAULT_SPACING){
      return new FXRbMenuBar(p,opts,x,y,w,h,pl,pr,pt,pb,hs,vs);
      }
    }

  // Destructor
  virtual ~FXMenuBar();
  };


DECLARE_FXOBJECT_VIRTUALS(FXMenuBar)
DECLARE_FXID_VIRTUALS(FXMenuBar)
DECLARE_FXDRAWABLE_VIRTUALS(FXMenuBar)
DECLARE_FXWINDOW_VIRTUALS(FXMenuBar)
DECLARE_FXDOCKBAR_VIRTUALS(FXMenuBar)
