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
limited with raptor.CommentBox;
with raptor.Component;
limited with raptor.Visual_Flow_Form;
package raptor.BinaryComponent is
   type Typ is abstract new raptor.Component.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_BinaryComponent(
      This : Ref := null;
      h : Integer;
      w : Integer;
      str_name : access MSSyst.String.Typ'Class) return Ref;
   function new_BinaryComponent(
      This : Ref := null;
      S : access raptor.Component.Typ'Class;
      h : Integer;
      w : Integer;
      str_name : access MSSyst.String.Typ'Class) return Ref;
   function new_BinaryComponent(
      This : Ref := null;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      ctxt : MSSyst.Runtime.Serialization.StreamingContext.Valuetype) return Ref;
   function Called_Tab(
      This : access Typ;
      s : access MSSyst.String.Typ'Class) return Standard.Boolean;
   procedure change_compressed(
      This : access Typ;
      compressed : Standard.Boolean);
   function check_expansion_click(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   function child_running(
      This : access Typ) return Standard.Boolean;
   procedure compile_pass1(
      This : access Typ;
      gen : access generate_interface.typ.Typ'Class);
   function Count_Symbols(
      This : access Typ) return Integer;
   function Find_Component(
      This : access Typ;
      x : Integer;
      y : Integer) return access raptor.Component.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      ctxt : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function has_code(
      This : access Typ) return Standard.Boolean;
   function have_child_running(
      This : access Typ) return Standard.Boolean;
   procedure mark_error(
      This : access Typ);
   function overplus(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   procedure Rename_Tab(
      This : access Typ;
      from : access MSSyst.String.Typ'Class;
      to : access MSSyst.String.Typ'Class);
   procedure reset_number_method_expressions_run(
      This : access Typ);
   function select_k(
      This : access Typ;
      x : Integer;
      y : Integer) return access raptor.Component.Typ'Class;
   procedure selectAll(
      This : access Typ);
   function selectComment(
      This : access Typ;
      x : Integer;
      y : Integer) return access raptor.CommentBox.Typ'Class;
   function SelectRegion(
      This : access Typ;
      rec : MSSyst.Drawing.Rectangle.Valuetype) return Standard.Boolean;
   procedure Show_Guids(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_BinaryComponent);
   pragma Import(MSIL,Called_Tab,"Called_Tab");
   pragma Import(MSIL,change_compressed,"change_compressed");
   pragma Import(MSIL,check_expansion_click,"check_expansion_click");
   pragma Import(MSIL,child_running,"child_running");
   pragma Import(MSIL,compile_pass1,"compile_pass1");
   pragma Import(MSIL,Count_Symbols,"Count_Symbols");
   pragma Import(MSIL,Find_Component,"Find_Component");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,has_code,"has_code");
   pragma Import(MSIL,have_child_running,"have_child_running");
   pragma Import(MSIL,mark_error,"mark_error");
   pragma Import(MSIL,overplus,"overplus");
   pragma Import(MSIL,Rename_Tab,"Rename_Tab");
   pragma Import(MSIL,reset_number_method_expressions_run,"reset_number_method_expressions_run");
   pragma Import(MSIL,select_k,"select");
   pragma Import(MSIL,selectAll,"selectAll");
   pragma Import(MSIL,selectComment,"selectComment");
   pragma Import(MSIL,SelectRegion,"SelectRegion");
   pragma Import(MSIL,Show_Guids,"Show_Guids");
end raptor.BinaryComponent;
pragma Import(MSIL,raptor.BinaryComponent,
   ".ver 4:0:5:2",
   "[raptor]raptor.BinaryComponent");
