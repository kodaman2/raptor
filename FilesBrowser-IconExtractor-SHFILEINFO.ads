-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with FilesBrowser.IconExtractor;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
package FilesBrowser.IconExtractor.SHFILEINFO is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
private
end FilesBrowser.IconExtractor.SHFILEINFO;
pragma Import(MSIL,FilesBrowser.IconExtractor.SHFILEINFO,
   ".ver 4:0:5:2",
   "[raptor]FilesBrowser.IconExtractor/SHFILEINFO");
