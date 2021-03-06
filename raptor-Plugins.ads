-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.ArrayList;
limited with MSSyst.Reflection.Assembly;
limited with MSSyst.Reflection.MethodInfo;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with numbers;
with parse_tree;
limited with raptor.Bold_Results;
limited with raptor.Prefix_Results;
package raptor.Plugins is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_Plugins(
      This : Ref := null) return Ref;
   function Get_Assembly_Names return access MSSyst.String.Ref_arr;
   function Get_Bold_Locations(
      name : access MSSyst.String.Typ'Class;
      comma_count : Integer) return access raptor.Bold_Results.Typ'Class;
   function Get_Plugin_List return access MSSyst.String.Ref_arr;
   procedure Invoke(
      name : access MSSyst.String.Typ'Class;
      parameters : access parse_tree.parameter_list'Class);
   function Invoke_Function(
      name : access MSSyst.String.Typ'Class;
      parameters : access parse_tree.parameter_list'Class) return numbers.value;
   function Is_Boolean_Function(
      name : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Is_Function(
      name : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Is_Pluginable_Method(
      m : access MSSyst.Reflection.MethodInfo.Typ'Class) return Standard.Boolean;
   function Is_Procedure(
      name : access MSSyst.String.Typ'Class) return Standard.Boolean;
   procedure Load_Plugins(
      filename : access MSSyst.String.Typ'Class);
   function Parameter_Count(
      name : access MSSyst.String.Typ'Class) return Integer;
   function Prefix_Suggestions(
      name : access MSSyst.String.Typ'Class;
      kind : Integer;
      check_all : Standard.Boolean) return access raptor.Prefix_Results.Typ'Class;
   procedure Process_Assembly(
      assembly : access MSSyst.Reflection.Assembly.Typ'Class;
      method_list : access MSSyst.Collections.ArrayList.Typ'Class);
   procedure Set_Is_Used(
      name : access MSSyst.String.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Plugins);
   pragma Import(MSIL,Get_Assembly_Names,"Get_Assembly_Names");
   pragma Import(MSIL,Get_Bold_Locations,"Get_Bold_Locations");
   pragma Import(MSIL,Get_Plugin_List,"Get_Plugin_List");
   pragma Import(MSIL,Invoke,"Invoke");
   pragma Import(MSIL,Invoke_Function,"Invoke_Function");
   pragma Import(MSIL,Is_Boolean_Function,"Is_Boolean_Function");
   pragma Import(MSIL,Is_Function,"Is_Function");
   pragma Import(MSIL,Is_Pluginable_Method,"Is_Pluginable_Method");
   pragma Import(MSIL,Is_Procedure,"Is_Procedure");
   pragma Import(MSIL,Load_Plugins,"Load_Plugins");
   pragma Import(MSIL,Parameter_Count,"Parameter_Count");
   pragma Import(MSIL,Prefix_Suggestions,"Prefix_Suggestions");
   pragma Import(MSIL,Process_Assembly,"Process_Assembly");
   pragma Import(MSIL,Set_Is_Used,"Set_Is_Used");
end raptor.Plugins;
pragma Import(MSIL,raptor.Plugins,
   ".ver 4:0:5:2",
   "[raptor]raptor.Plugins");
