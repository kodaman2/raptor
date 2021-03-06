-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with raptor.Visual_Flow_Form;
package raptor.MRU is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_MRU(
      This : Ref := null) return Ref;
   procedure Add_To_MRU_Registry(
      name : access MSSyst.String.Typ'Class);
   function Get_MRU_Registry(
      i : Integer) return access MSSyst.String.Typ'Class;
   procedure Update_MRU_Menus(
      form : access raptor.Visual_Flow_Form.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_MRU);
   pragma Import(MSIL,Add_To_MRU_Registry,"Add_To_MRU_Registry");
   pragma Import(MSIL,Get_MRU_Registry,"Get_MRU_Registry");
   pragma Import(MSIL,Update_MRU_Menus,"Update_MRU_Menus");
end raptor.MRU;
pragma Import(MSIL,raptor.MRU,
   ".ver 4:0:5:2",
   "[raptor]raptor.MRU");
