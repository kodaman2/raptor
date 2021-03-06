-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Rectangle;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with generate_interface.typ;
with raptor.BinaryComponent;
limited with raptor.CommentBox;
with raptor.Component;
limited with raptor.Visual_Flow_Form;
package raptor.Loop_k is
   type Typ is new raptor.BinaryComponent.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      bottom : Integer;
      pragma Import(MSIL,bottom,"bottom");
      end_first_connector : Integer;
      pragma Import(MSIL,end_first_connector,"end_first_connector");
      diamond_top : Integer;
      pragma Import(MSIL,diamond_top,"diamond_top");
      after_bottom : Integer;
      pragma Import(MSIL,after_bottom,"after_bottom");
      x_left : Integer;
      pragma Import(MSIL,x_left,"x_left");
      y_left : Integer;
      pragma Import(MSIL,y_left,"y_left");
      x_right : Integer;
      pragma Import(MSIL,x_right,"x_right");
      y_right : Integer;
      pragma Import(MSIL,y_right,"y_right");
      left_connector_y : Integer;
      pragma Import(MSIL,left_connector_y,"left_connector_y");
      right_connector_y : Integer;
      pragma Import(MSIL,right_connector_y,"right_connector_y");
      line_height : Integer;
      pragma Import(MSIL,line_height,"line_height");
      light_head : Standard.Boolean;
      pragma Import(MSIL,light_head,"light_head");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_Loop(
      This : Ref := null;
      height : Integer;
      width : Integer;
      str_name : access MSSyst.String.Typ'Class) return Ref;
   function new_Loop(
      This : Ref := null;
      Successor : access raptor.Component.Typ'Class;
      height : Integer;
      width : Integer;
      str_name : access MSSyst.String.Typ'Class) return Ref;
   function new_Loop(
      This : Ref := null;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      ctxt : MSSyst.Runtime.Serialization.StreamingContext.Valuetype) return Ref;
   function break_now(
      This : access Typ) return Standard.Boolean;
   procedure Clear_Breakpoints(
      This : access Typ);
   function Clone(
      This : access Typ) return access raptor.Component.Typ'Class;
   function contains(
      This : access Typ;
      rec : MSSyst.Drawing.Rectangle.Valuetype) return Standard.Boolean;
   function contains(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   function copy(
      This : access Typ;
      VF : access raptor.Visual_Flow_Form.Typ'Class) return Standard.Boolean;
   function cut(
      This : access Typ;
      VF : access raptor.Visual_Flow_Form.Typ'Class) return Standard.Boolean;
   function delete(
      This : access Typ) return Standard.Boolean;
   procedure draw(
      This : access Typ;
      gr : access MSSyst.Drawing.Graphics.Typ'Class;
      x : Integer;
      y : Integer);
   procedure Emit_Code(
      This : access Typ;
      gen : access generate_interface.typ.Typ'Class);
   function Find_Predecessor(
      This : access Typ;
      c : access raptor.Component.Typ'Class) return access raptor.Component.Typ'Class;
   function First_Of(
      This : access Typ) return access raptor.Component.Typ'Class;
   procedure footprint(
      This : access Typ;
      gr : access MSSyst.Drawing.Graphics.Typ'Class);
   function get_after_Child(
      This : access Typ) return access raptor.Component.Typ'Class;
   function get_before_Child(
      This : access Typ) return access raptor.Component.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      ctxt : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function getText(
      This : access Typ;
      x : Integer;
      y : Integer) return access MSSyst.String.Typ'Class;
   procedure init(
      This : access Typ);
   function insert(
      This : access Typ;
      newObj : access raptor.Component.Typ'Class;
      x : Integer;
      y : Integer;
      connector_y : Integer) return Standard.Boolean;
   function over_Diamond(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   function overafter(
      This : access Typ;
      x : Integer;
      y : Integer;
      connector_y : Integer) return Standard.Boolean;
   function overbefore(
      This : access Typ;
      x : Integer;
      y : Integer;
      connector_y : Integer) return Standard.Boolean;
   function overline(
      This : access Typ;
      x : Integer;
      y : Integer;
      connector_y : Integer) return Standard.Boolean;
   function overplus(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   procedure Scale(
      This : access Typ;
      new_scale : Float);
   procedure set_after_Child(
      This : access Typ;
      value : access raptor.Component.Typ'Class);
   procedure set_before_Child(
      This : access Typ;
      value : access raptor.Component.Typ'Class);
   function setText(
      This : access Typ;
      x : Integer;
      y : Integer;
      form : access raptor.Visual_Flow_Form.Typ'Class) return Standard.Boolean;
   procedure Toggle_Breakpoint(
      This : access Typ;
      x : Integer;
      y : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Loop);
   pragma Import(MSIL,break_now,"break_now");
   pragma Import(MSIL,Clear_Breakpoints,"Clear_Breakpoints");
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,contains,"contains");
   pragma Import(MSIL,copy,"copy");
   pragma Import(MSIL,cut,"cut");
   pragma Import(MSIL,delete,"delete");
   pragma Import(MSIL,draw,"draw");
   pragma Import(MSIL,Emit_Code,"Emit_Code");
   pragma Import(MSIL,Find_Predecessor,"Find_Predecessor");
   pragma Import(MSIL,First_Of,"First_Of");
   pragma Import(MSIL,footprint,"footprint");
   pragma Import(MSIL,get_after_Child,"get_after_Child");
   pragma Import(MSIL,get_before_Child,"get_before_Child");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,getText,"getText");
   pragma Import(MSIL,init,"init");
   pragma Import(MSIL,insert,"insert");
   pragma Import(MSIL,over_Diamond,"over_Diamond");
   pragma Import(MSIL,overafter,"overafter");
   pragma Import(MSIL,overbefore,"overbefore");
   pragma Import(MSIL,overline,"overline");
   pragma Import(MSIL,overplus,"overplus");
   pragma Import(MSIL,Scale,"Scale");
   pragma Import(MSIL,set_after_Child,"set_after_Child");
   pragma Import(MSIL,set_before_Child,"set_before_Child");
   pragma Import(MSIL,setText,"setText");
   pragma Import(MSIL,Toggle_Breakpoint,"Toggle_Breakpoint");
end raptor.Loop_k;
pragma Import(MSIL,raptor.Loop_k,
   ".ver 4:0:5:2",
   "[raptor]raptor.Loop");
