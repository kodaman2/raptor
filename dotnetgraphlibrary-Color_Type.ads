-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IFormatProvider;
limited with MSSyst.String;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
package dotnetgraphlibrary.Color_Type is
   type ValueType is (
      Black,
      Blue,
      Green,
      Cyan,
      Red,
      Magenta,
      Brown,
      Light_Gray,
      Dark_Gray,
      Light_Blue,
      Light_Green,
      Light_Cyan,
      Light_Red,
      Light_Magenta,
      Yellow,
      White,
      RGB_00_00_33,
      RGB_00_00_66,
      RGB_00_00_CC,
      RGB_00_33_00,
      RGB_00_33_33,
      RGB_00_33_66,
      RGB_00_33_99,
      RGB_00_33_CC,
      RGB_00_33_FF,
      RGB_00_66_00,
      RGB_00_66_33,
      RGB_00_66_66,
      RGB_00_66_99,
      RGB_00_66_CC,
      RGB_00_66_FF,
      RGB_00_99_00,
      RGB_00_99_33,
      RGB_00_99_66,
      RGB_00_99_CC,
      RGB_00_99_FF,
      RGB_00_CC_00,
      RGB_00_CC_33,
      RGB_00_CC_66,
      RGB_00_CC_99,
      RGB_00_CC_CC,
      RGB_00_CC_FF,
      RGB_00_FF_33,
      RGB_00_FF_66,
      RGB_00_FF_99,
      RGB_00_FF_CC,
      RGB_33_00_00,
      RGB_33_00_33,
      RGB_33_00_66,
      RGB_33_00_99,
      RGB_33_00_CC,
      RGB_33_00_FF,
      RGB_33_33_00,
      RGB_33_33_33,
      RGB_33_33_66,
      RGB_33_33_99,
      RGB_33_33_CC,
      RGB_33_33_FF,
      RGB_33_66_00,
      RGB_33_66_33,
      RGB_33_66_66,
      RGB_33_66_99,
      RGB_33_66_CC,
      RGB_33_66_FF,
      RGB_33_99_00,
      RGB_33_99_33,
      RGB_33_99_66,
      RGB_33_99_99,
      RGB_33_99_CC,
      RGB_33_99_FF,
      RGB_33_CC_00,
      RGB_33_CC_33,
      RGB_33_CC_66,
      RGB_33_CC_99,
      RGB_33_CC_CC,
      RGB_33_CC_FF,
      RGB_33_FF_00,
      RGB_33_FF_33,
      RGB_33_FF_66,
      RGB_33_FF_99,
      RGB_33_FF_CC,
      RGB_33_FF_FF,
      RGB_66_00_00,
      RGB_66_00_33,
      RGB_66_00_66,
      RGB_66_00_99,
      RGB_66_00_CC,
      RGB_66_00_FF,
      RGB_66_33_00,
      RGB_66_33_33,
      RGB_66_33_66,
      RGB_66_33_99,
      RGB_66_33_CC,
      RGB_66_33_FF,
      RGB_66_66_00,
      RGB_66_66_33,
      RGB_66_66_66,
      RGB_66_66_99,
      RGB_66_66_CC,
      RGB_66_66_FF,
      RGB_66_99_00,
      RGB_66_99_33,
      RGB_66_99_66,
      RGB_66_99_99,
      RGB_66_99_CC,
      RGB_66_99_FF,
      RGB_66_CC_00,
      RGB_66_CC_33,
      RGB_66_CC_66,
      RGB_66_CC_99,
      RGB_66_CC_CC,
      RGB_66_CC_FF,
      RGB_66_FF_00,
      RGB_66_FF_33,
      RGB_66_FF_66,
      RGB_66_FF_99,
      RGB_66_FF_CC,
      RGB_66_FF_FF,
      RGB_99_00_00,
      RGB_99_00_33,
      RGB_99_00_66,
      RGB_99_00_99,
      RGB_99_00_CC,
      RGB_99_00_FF,
      RGB_99_33_00,
      RGB_99_33_33,
      RGB_99_33_66,
      RGB_99_33_99,
      RGB_99_33_CC,
      RGB_99_33_FF,
      RGB_99_66_00,
      RGB_99_66_33,
      RGB_99_66_66,
      RGB_99_66_99,
      RGB_99_66_CC,
      RGB_99_66_FF,
      RGB_99_99_33,
      RGB_99_99_66,
      RGB_99_99_99,
      RGB_99_99_CC,
      RGB_99_99_FF,
      RGB_99_CC_00,
      RGB_99_CC_33,
      RGB_99_CC_66,
      RGB_99_CC_99,
      RGB_99_CC_CC,
      RGB_99_CC_FF,
      RGB_99_FF_00,
      RGB_99_FF_33,
      RGB_99_FF_66,
      RGB_99_FF_99,
      RGB_99_FF_CC,
      RGB_99_FF_FF,
      RGB_CC_00_00,
      RGB_CC_00_33,
      RGB_CC_00_66,
      RGB_CC_00_99,
      RGB_CC_00_CC,
      RGB_CC_00_FF,
      RGB_CC_33_00,
      RGB_CC_33_33,
      RGB_CC_33_66,
      RGB_CC_33_99,
      RGB_CC_33_CC,
      RGB_CC_33_FF,
      RGB_CC_66_00,
      RGB_CC_66_33,
      RGB_CC_66_66,
      RGB_CC_66_99,
      RGB_CC_66_CC,
      RGB_CC_66_FF,
      RGB_CC_99_00,
      RGB_CC_99_33,
      RGB_CC_99_66,
      RGB_CC_99_99,
      RGB_CC_99_CC,
      RGB_CC_99_FF,
      RGB_CC_CC_00,
      RGB_CC_CC_33,
      RGB_CC_CC_66,
      RGB_CC_CC_99,
      RGB_CC_CC_CC,
      RGB_CC_CC_FF,
      RGB_CC_FF_00,
      RGB_CC_FF_33,
      RGB_CC_FF_66,
      RGB_CC_FF_99,
      RGB_CC_FF_CC,
      RGB_CC_FF_FF,
      RGB_FF_00_33,
      RGB_FF_00_66,
      RGB_FF_00_CC,
      RGB_FF_33_00,
      RGB_FF_33_33,
      RGB_FF_33_66,
      RGB_FF_33_99,
      RGB_FF_33_CC,
      RGB_FF_33_FF,
      RGB_FF_66_00,
      RGB_FF_66_33,
      RGB_FF_66_66,
      RGB_FF_66_99,
      RGB_FF_66_CC,
      RGB_FF_66_FF,
      RGB_FF_99_33,
      RGB_FF_99_66,
      RGB_FF_99_99,
      RGB_FF_99_CC,
      RGB_FF_99_FF,
      RGB_FF_CC_00,
      RGB_FF_CC_33,
      RGB_FF_CC_66,
      RGB_FF_CC_99,
      RGB_FF_CC_CC,
      RGB_FF_CC_FF,
      RGB_FF_FF_33,
      RGB_FF_FF_66,
      RGB_FF_FF_99,
      RGB_FF_FF_CC,
      RGB_0D_0D_0D,
      RGB_14_14_14,
      RGB_1A_1A_1A,
      RGB_27_27_27,
      RGB_3B_3B_3B,
      RGB_42_42_42,
      RGB_55_55_55,
      RGB_5C_5C_5C,
      RGB_69_69_69,
      RGB_76_76_76,
      RGB_7C_7C_7C,
      RGB_83_83_83,
      RGB_8A_8A_8A,
      RGB_A4_A4_A4,
      RGB_B1_B1_B1,
      RGB_B7_B7_B7,
      RGB_BE_BE_BE,
      RGB_C5_C5_C5,
      RGB_D2_D2_D2,
      RGB_DA_DA_DA,
      RGB_E5_E5_E5,
      RGB_EC_EC_EC,
      RGB_F5_F5_F5);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Black =>  0,
      Blue =>  1,
      Green =>  2,
      Cyan =>  3,
      Red =>  4,
      Magenta =>  5,
      Brown =>  6,
      Light_Gray =>  7,
      Dark_Gray =>  8,
      Light_Blue =>  9,
      Light_Green =>  10,
      Light_Cyan =>  11,
      Light_Red =>  12,
      Light_Magenta =>  13,
      Yellow =>  14,
      White =>  15,
      RGB_00_00_33 =>  16,
      RGB_00_00_66 =>  17,
      RGB_00_00_CC =>  18,
      RGB_00_33_00 =>  19,
      RGB_00_33_33 =>  20,
      RGB_00_33_66 =>  21,
      RGB_00_33_99 =>  22,
      RGB_00_33_CC =>  23,
      RGB_00_33_FF =>  24,
      RGB_00_66_00 =>  25,
      RGB_00_66_33 =>  26,
      RGB_00_66_66 =>  27,
      RGB_00_66_99 =>  28,
      RGB_00_66_CC =>  29,
      RGB_00_66_FF =>  30,
      RGB_00_99_00 =>  31,
      RGB_00_99_33 =>  32,
      RGB_00_99_66 =>  33,
      RGB_00_99_CC =>  34,
      RGB_00_99_FF =>  35,
      RGB_00_CC_00 =>  36,
      RGB_00_CC_33 =>  37,
      RGB_00_CC_66 =>  38,
      RGB_00_CC_99 =>  39,
      RGB_00_CC_CC =>  40,
      RGB_00_CC_FF =>  41,
      RGB_00_FF_33 =>  42,
      RGB_00_FF_66 =>  43,
      RGB_00_FF_99 =>  44,
      RGB_00_FF_CC =>  45,
      RGB_33_00_00 =>  46,
      RGB_33_00_33 =>  47,
      RGB_33_00_66 =>  48,
      RGB_33_00_99 =>  49,
      RGB_33_00_CC =>  50,
      RGB_33_00_FF =>  51,
      RGB_33_33_00 =>  52,
      RGB_33_33_33 =>  53,
      RGB_33_33_66 =>  54,
      RGB_33_33_99 =>  55,
      RGB_33_33_CC =>  56,
      RGB_33_33_FF =>  57,
      RGB_33_66_00 =>  58,
      RGB_33_66_33 =>  59,
      RGB_33_66_66 =>  60,
      RGB_33_66_99 =>  61,
      RGB_33_66_CC =>  62,
      RGB_33_66_FF =>  63,
      RGB_33_99_00 =>  64,
      RGB_33_99_33 =>  65,
      RGB_33_99_66 =>  66,
      RGB_33_99_99 =>  67,
      RGB_33_99_CC =>  68,
      RGB_33_99_FF =>  69,
      RGB_33_CC_00 =>  70,
      RGB_33_CC_33 =>  71,
      RGB_33_CC_66 =>  72,
      RGB_33_CC_99 =>  73,
      RGB_33_CC_CC =>  74,
      RGB_33_CC_FF =>  75,
      RGB_33_FF_00 =>  76,
      RGB_33_FF_33 =>  77,
      RGB_33_FF_66 =>  78,
      RGB_33_FF_99 =>  79,
      RGB_33_FF_CC =>  80,
      RGB_33_FF_FF =>  81,
      RGB_66_00_00 =>  82,
      RGB_66_00_33 =>  83,
      RGB_66_00_66 =>  84,
      RGB_66_00_99 =>  85,
      RGB_66_00_CC =>  86,
      RGB_66_00_FF =>  87,
      RGB_66_33_00 =>  88,
      RGB_66_33_33 =>  89,
      RGB_66_33_66 =>  90,
      RGB_66_33_99 =>  91,
      RGB_66_33_CC =>  92,
      RGB_66_33_FF =>  93,
      RGB_66_66_00 =>  94,
      RGB_66_66_33 =>  95,
      RGB_66_66_66 =>  96,
      RGB_66_66_99 =>  97,
      RGB_66_66_CC =>  98,
      RGB_66_66_FF =>  99,
      RGB_66_99_00 =>  100,
      RGB_66_99_33 =>  101,
      RGB_66_99_66 =>  102,
      RGB_66_99_99 =>  103,
      RGB_66_99_CC =>  104,
      RGB_66_99_FF =>  105,
      RGB_66_CC_00 =>  106,
      RGB_66_CC_33 =>  107,
      RGB_66_CC_66 =>  108,
      RGB_66_CC_99 =>  109,
      RGB_66_CC_CC =>  110,
      RGB_66_CC_FF =>  111,
      RGB_66_FF_00 =>  112,
      RGB_66_FF_33 =>  113,
      RGB_66_FF_66 =>  114,
      RGB_66_FF_99 =>  115,
      RGB_66_FF_CC =>  116,
      RGB_66_FF_FF =>  117,
      RGB_99_00_00 =>  118,
      RGB_99_00_33 =>  119,
      RGB_99_00_66 =>  120,
      RGB_99_00_99 =>  121,
      RGB_99_00_CC =>  122,
      RGB_99_00_FF =>  123,
      RGB_99_33_00 =>  124,
      RGB_99_33_33 =>  125,
      RGB_99_33_66 =>  126,
      RGB_99_33_99 =>  127,
      RGB_99_33_CC =>  128,
      RGB_99_33_FF =>  129,
      RGB_99_66_00 =>  130,
      RGB_99_66_33 =>  131,
      RGB_99_66_66 =>  132,
      RGB_99_66_99 =>  133,
      RGB_99_66_CC =>  134,
      RGB_99_66_FF =>  135,
      RGB_99_99_33 =>  136,
      RGB_99_99_66 =>  137,
      RGB_99_99_99 =>  138,
      RGB_99_99_CC =>  139,
      RGB_99_99_FF =>  140,
      RGB_99_CC_00 =>  141,
      RGB_99_CC_33 =>  142,
      RGB_99_CC_66 =>  143,
      RGB_99_CC_99 =>  144,
      RGB_99_CC_CC =>  145,
      RGB_99_CC_FF =>  146,
      RGB_99_FF_00 =>  147,
      RGB_99_FF_33 =>  148,
      RGB_99_FF_66 =>  149,
      RGB_99_FF_99 =>  150,
      RGB_99_FF_CC =>  151,
      RGB_99_FF_FF =>  152,
      RGB_CC_00_00 =>  153,
      RGB_CC_00_33 =>  154,
      RGB_CC_00_66 =>  155,
      RGB_CC_00_99 =>  156,
      RGB_CC_00_CC =>  157,
      RGB_CC_00_FF =>  158,
      RGB_CC_33_00 =>  159,
      RGB_CC_33_33 =>  160,
      RGB_CC_33_66 =>  161,
      RGB_CC_33_99 =>  162,
      RGB_CC_33_CC =>  163,
      RGB_CC_33_FF =>  164,
      RGB_CC_66_00 =>  165,
      RGB_CC_66_33 =>  166,
      RGB_CC_66_66 =>  167,
      RGB_CC_66_99 =>  168,
      RGB_CC_66_CC =>  169,
      RGB_CC_66_FF =>  170,
      RGB_CC_99_00 =>  171,
      RGB_CC_99_33 =>  172,
      RGB_CC_99_66 =>  173,
      RGB_CC_99_99 =>  174,
      RGB_CC_99_CC =>  175,
      RGB_CC_99_FF =>  176,
      RGB_CC_CC_00 =>  177,
      RGB_CC_CC_33 =>  178,
      RGB_CC_CC_66 =>  179,
      RGB_CC_CC_99 =>  180,
      RGB_CC_CC_CC =>  181,
      RGB_CC_CC_FF =>  182,
      RGB_CC_FF_00 =>  183,
      RGB_CC_FF_33 =>  184,
      RGB_CC_FF_66 =>  185,
      RGB_CC_FF_99 =>  186,
      RGB_CC_FF_CC =>  187,
      RGB_CC_FF_FF =>  188,
      RGB_FF_00_33 =>  189,
      RGB_FF_00_66 =>  190,
      RGB_FF_00_CC =>  191,
      RGB_FF_33_00 =>  192,
      RGB_FF_33_33 =>  193,
      RGB_FF_33_66 =>  194,
      RGB_FF_33_99 =>  195,
      RGB_FF_33_CC =>  196,
      RGB_FF_33_FF =>  197,
      RGB_FF_66_00 =>  198,
      RGB_FF_66_33 =>  199,
      RGB_FF_66_66 =>  200,
      RGB_FF_66_99 =>  201,
      RGB_FF_66_CC =>  202,
      RGB_FF_66_FF =>  203,
      RGB_FF_99_33 =>  204,
      RGB_FF_99_66 =>  205,
      RGB_FF_99_99 =>  206,
      RGB_FF_99_CC =>  207,
      RGB_FF_99_FF =>  208,
      RGB_FF_CC_00 =>  209,
      RGB_FF_CC_33 =>  210,
      RGB_FF_CC_66 =>  211,
      RGB_FF_CC_99 =>  212,
      RGB_FF_CC_CC =>  213,
      RGB_FF_CC_FF =>  214,
      RGB_FF_FF_33 =>  215,
      RGB_FF_FF_66 =>  216,
      RGB_FF_FF_99 =>  217,
      RGB_FF_FF_CC =>  218,
      RGB_0D_0D_0D =>  219,
      RGB_14_14_14 =>  220,
      RGB_1A_1A_1A =>  221,
      RGB_27_27_27 =>  222,
      RGB_3B_3B_3B =>  223,
      RGB_42_42_42 =>  224,
      RGB_55_55_55 =>  225,
      RGB_5C_5C_5C =>  226,
      RGB_69_69_69 =>  227,
      RGB_76_76_76 =>  228,
      RGB_7C_7C_7C =>  229,
      RGB_83_83_83 =>  230,
      RGB_8A_8A_8A =>  231,
      RGB_A4_A4_A4 =>  232,
      RGB_B1_B1_B1 =>  233,
      RGB_B7_B7_B7 =>  234,
      RGB_BE_BE_BE =>  235,
      RGB_C5_C5_C5 =>  236,
      RGB_D2_D2_D2 =>  237,
      RGB_DA_DA_DA =>  238,
      RGB_E5_E5_E5 =>  239,
      RGB_EC_EC_EC =>  240,
      RGB_F5_F5_F5 =>  241);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function CompareTo(
      This : Valuetype;
      target : access MSSyst.Object.Typ'Class) return Integer;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return access MSSyst.Type_k.Typ'Class;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end dotnetgraphlibrary.Color_Type;
pragma Import(MSIL,dotnetgraphlibrary.Color_Type,
   ".ver 2:0:0:0",
   "[dotnetgraph]dotnetgraphlibrary.Color_Type");