-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.ArrayList;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Rectangle;
with MSSyst.Guid;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with generate_interface;
with interpreter;
with parse_tree;
limited with raptor.CommentBox;
limited with raptor.Component.FootPrint;
with raptor.Mode;
limited with raptor.Visual_Flow_Form;
package raptor.Component is
   type Typ is abstract new MSSyst.Object.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      is_child : Standard.Boolean;
      pragma Import(MSIL,is_child,"is_child");
      is_beforeChild : Standard.Boolean;
      pragma Import(MSIL,is_beforeChild,"is_beforeChild");
      is_afterChild : Standard.Boolean;
      pragma Import(MSIL,is_afterChild,"is_afterChild");
      my_selected : Standard.Boolean;
      pragma Import(MSIL,my_selected,"my_selected");
      height_of_text : Integer;
      pragma Import(MSIL,height_of_text,"height_of_text");
      width_of_text : Integer;
      pragma Import(MSIL,width_of_text,"width_of_text");
      char_length : Integer;
      pragma Import(MSIL,char_length,"char_length");
      method_expressions : access MSSyst.Collections.ArrayList.Typ'Class;
      pragma Import(MSIL,method_expressions,"method_expressions");
      values : access MSSyst.Collections.ArrayList.Typ'Class;
      pragma Import(MSIL,values,"values");
      number_method_expressions_run : Integer;
      pragma Import(MSIL,number_method_expressions_run,"number_method_expressions_run");
      running : Standard.Boolean;
      pragma Import(MSIL,running,"running");
      scale : Float;
      pragma Import(MSIL,scale,"scale");
      head_height : Integer;
      pragma Import(MSIL,head_height,"head_height");
      head_width : Integer;
      pragma Import(MSIL,head_width,"head_width");
      head_heightOrig : Integer;
      pragma Import(MSIL,head_heightOrig,"head_heightOrig");
      head_widthOrig : Integer;
      pragma Import(MSIL,head_widthOrig,"head_widthOrig");
      connector_length : Integer;
      pragma Import(MSIL,connector_length,"connector_length");
      x_location : Integer;
      pragma Import(MSIL,x_location,"x_location");
      y_location : Integer;
      pragma Import(MSIL,y_location,"y_location");
      Successor : access raptor.Component.Typ'Class;
      pragma Import(MSIL,Successor,"Successor");
      parent : access raptor.Component.Typ'Class;
      pragma Import(MSIL,parent,"parent");
      FP : access raptor.Component.FootPrint.Typ'Class;
      pragma Import(MSIL,FP,"FP");
      text_str : access MSSyst.String.Typ'Class;
      pragma Import(MSIL,text_str,"text_str");
      name : access MSSyst.String.Typ'Class;
      pragma Import(MSIL,name,"name");
      proximity : Integer;
      pragma Import(MSIL,proximity,"proximity");
      parse_tree : access parse_tree.parseable'Class;
      pragma Import(MSIL,parse_tree,"parse_tree");
      result : access interpreter.syntax_result'Class;
      pragma Import(MSIL,result,"result");
      created_guid : MSSyst.Guid.Valuetype;
      pragma Import(MSIL,created_guid,"created_guid");
      changed_guid : MSSyst.Guid.Valuetype;
      pragma Import(MSIL,changed_guid,"changed_guid");
   end record;
   Current_Mode : raptor.Mode.Valuetype;
   pragma Import(MSIL,Current_Mode,"Current_Mode");
   USMA_mode : Standard.Boolean;
   pragma Import(MSIL,USMA_mode,"USMA_mode");
   ureverse_loop_logic : Standard.Boolean;
   pragma Import(MSIL,ureverse_loop_logic,"_reverse_loop_logic");
   BARTPE : Standard.Boolean;
   pragma Import(MSIL,BARTPE,"BARTPE");
   BARTPE_ramdrive_path : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,BARTPE_ramdrive_path,"BARTPE_ramdrive_path");
   BARTPE_partition_path : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,BARTPE_partition_path,"BARTPE_partition_path");
   VM : Standard.Boolean;
   pragma Import(MSIL,VM,"VM");
   negate_loops : Standard.Boolean;
   pragma Import(MSIL,negate_loops,"negate_loops");
   compiled_flowchart : Standard.Boolean;
   pragma Import(MSIL,compiled_flowchart,"compiled_flowchart");
   run_compiled_flowchart : Standard.Boolean;
   pragma Import(MSIL,run_compiled_flowchart,"run_compiled_flowchart");
   warned_about_newer_version : Standard.Boolean;
   pragma Import(MSIL,warned_about_newer_version,"warned_about_newer_version");
   warned_about_error : Standard.Boolean;
   pragma Import(MSIL,warned_about_error,"warned_about_error");
   text_visible : Standard.Boolean;
   pragma Import(MSIL,text_visible,"text_visible");
   full_text : Standard.Boolean;
   pragma Import(MSIL,full_text,"full_text");
   view_comments : Standard.Boolean;
   pragma Import(MSIL,view_comments,"view_comments");
   Inside_Print : Standard.Boolean;
   pragma Import(MSIL,Inside_Print,"Inside_Print");
   Just_After_Print : Standard.Boolean;
   pragma Import(MSIL,Just_After_Print,"Just_After_Print");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_Component(
      This : Ref := null;
      h : Integer;
      w : Integer;
      str_name : access MSSyst.String.Typ'Class) return Ref;
   function new_Component(
      This : Ref := null;
      S : access raptor.Component.Typ'Class;
      h : Integer;
      w : Integer;
      str_name : access MSSyst.String.Typ'Class) return Ref;
   function new_Component(
      This : Ref := null;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      ctxt : MSSyst.Runtime.Serialization.StreamingContext.Valuetype) return Ref;
   procedure addComment(
      This : access Typ;
      form : access raptor.Visual_Flow_Form.Typ'Class);
   function addExpression(
      This : access Typ;
      e : access MSSyst.Object.Typ'Class) return Integer;
   function break_now(
      This : access Typ) return Standard.Boolean;
   function Called_Tab(
      This : access Typ;
      s : access MSSyst.String.Typ'Class) return Standard.Boolean;
   procedure change_compressed(
      This : access Typ;
      compressed : Standard.Boolean);
   procedure changed(
      This : access Typ);
   function check_expansion_click(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   function child_running(
      This : access Typ) return Standard.Boolean;
   procedure Clear_Breakpoints(
      This : access Typ);
   function Clone(
      This : access Typ) return access raptor.Component.Typ'Class;
   function comment_footprint(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   procedure compile_pass1(
      This : access Typ;
      gen : access generate_interface.Typ'Class);
   function contains(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   function contains(
      This : access Typ;
      rec : MSSyst.Drawing.Rectangle.Valuetype) return Standard.Boolean;
   function copy(
      This : access Typ;
      VF : access raptor.Visual_Flow_Form.Typ'Class) return Standard.Boolean;
   function Count_Symbols(
      This : access Typ) return Integer;
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
   function editable_selected(
      This : access Typ) return Standard.Boolean;
   procedure Emit_Code(
      This : access Typ;
      gen : access generate_interface.Typ'Class);
   function Find_Component(
      This : access Typ;
      x : Integer;
      y : Integer) return access raptor.Component.Typ'Class;
   function find_end(
      This : access Typ) return access raptor.Component.Typ'Class;
   function Find_Predecessor(
      This : access Typ;
      c : access raptor.Component.Typ'Class) return access raptor.Component.Typ'Class;
   function find_selection_end(
      This : access Typ) return access raptor.Component.Typ'Class;
   function First_Of(
      This : access Typ) return access raptor.Component.Typ'Class;
   procedure footprint(
      This : access Typ;
      gr : access MSSyst.Drawing.Graphics.Typ'Class);
   function get_assignmentSymbol return Wide_Character;
   function get_CL(
      This : access Typ) return Integer;
   function get_current_serialization_version return Integer;
   function get_H(
      This : access Typ) return Integer;
   function get_MONO return Standard.Boolean;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_reverse_loop_logic return Standard.Boolean;
   function get_selected(
      This : access Typ) return Standard.Boolean;
   function get_Text(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_W(
      This : access Typ) return Integer;
   function get_X(
      This : access Typ) return Integer;
   function get_Y(
      This : access Typ) return Integer;
   function getDrawText(
      This : access Typ) return access MSSyst.String.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      ctxt : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function getText(
      This : access Typ;
      x : Integer;
      y : Integer) return access MSSyst.String.Typ'Class;
   function has_code(
      This : access Typ) return Standard.Boolean;
   function In_Footprint(
      This : access Typ;
      x : Integer;
      y : Integer) return Standard.Boolean;
   procedure init(
      This : access Typ);
   function insert(
      This : access Typ;
      newObj : access raptor.Component.Typ'Class;
      x : Integer;
      y : Integer;
      connector_y : Integer) return Standard.Boolean;
   procedure mark_error(
      This : access Typ);
   function overline(
      This : access Typ;
      x : Integer;
      y : Integer;
      connector_y : Integer) return Standard.Boolean;
   procedure Rename_Tab(
      This : access Typ;
      from : access MSSyst.String.Typ'Class;
      to : access MSSyst.String.Typ'Class);
   procedure reset(
      This : access Typ);
   procedure reset_number_method_expressions_run(
      This : access Typ);
   procedure reset_this_method_expressions_run(
      This : access Typ);
   procedure Scale(
      This : access Typ;
      new_scale : Float);
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
   procedure set_H(
      This : access Typ;
      value : Integer);
   procedure set_parent_info(
      This : access Typ;
      is_child : Standard.Boolean;
      is_before_child : Standard.Boolean;
      is_after_child : Standard.Boolean;
      parent : access raptor.Component.Typ'Class);
   procedure set_reverse_loop_logic(
      value : Standard.Boolean);
   procedure set_selected(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Text(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_W(
      This : access Typ;
      value : Integer);
   procedure set_X(
      This : access Typ;
      value : Integer);
   procedure set_Y(
      This : access Typ;
      value : Integer);
   function setText(
      This : access Typ;
      x : Integer;
      y : Integer;
      form : access raptor.Visual_Flow_Form.Typ'Class) return Standard.Boolean;
   procedure Show_Guid(
      This : access Typ);
   procedure Show_Guids(
      This : access Typ);
   procedure Toggle_Breakpoint(
      This : access Typ;
      x : Integer;
      y : Integer);
   function unbreakString(
      s : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   procedure wide_footprint(
      This : access Typ;
      gr : access MSSyst.Drawing.Graphics.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Component);
   pragma Import(MSIL,addComment,"addComment");
   pragma Import(MSIL,addExpression,"addExpression");
   pragma Import(MSIL,break_now,"break_now");
   pragma Import(MSIL,Called_Tab,"Called_Tab");
   pragma Import(MSIL,change_compressed,"change_compressed");
   pragma Import(MSIL,changed,"changed");
   pragma Import(MSIL,check_expansion_click,"check_expansion_click");
   pragma Import(MSIL,child_running,"child_running");
   pragma Import(MSIL,Clear_Breakpoints,"Clear_Breakpoints");
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,comment_footprint,"comment_footprint");
   pragma Import(MSIL,compile_pass1,"compile_pass1");
   pragma Import(MSIL,contains,"contains");
   pragma Import(MSIL,copy,"copy");
   pragma Import(MSIL,Count_Symbols,"Count_Symbols");
   pragma Import(MSIL,cut,"cut");
   pragma Import(MSIL,delete,"delete");
   pragma Import(MSIL,draw,"draw");
   pragma Import(MSIL,editable_selected,"editable_selected");
   pragma Import(MSIL,Emit_Code,"Emit_Code");
   pragma Import(MSIL,Find_Component,"Find_Component");
   pragma Import(MSIL,find_end,"find_end");
   pragma Import(MSIL,Find_Predecessor,"Find_Predecessor");
   pragma Import(MSIL,find_selection_end,"find_selection_end");
   pragma Import(MSIL,First_Of,"First_Of");
   pragma Import(MSIL,footprint,"footprint");
   pragma Import(MSIL,get_assignmentSymbol,"get_assignmentSymbol");
   pragma Import(MSIL,get_CL,"get_CL");
   pragma Import(MSIL,get_current_serialization_version,"get_current_serialization_version");
   pragma Import(MSIL,get_H,"get_H");
   pragma Import(MSIL,get_MONO,"get_MONO");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_reverse_loop_logic,"get_reverse_loop_logic");
   pragma Import(MSIL,get_selected,"get_selected");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,get_W,"get_W");
   pragma Import(MSIL,get_X,"get_X");
   pragma Import(MSIL,get_Y,"get_Y");
   pragma Import(MSIL,getDrawText,"getDrawText");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,getText,"getText");
   pragma Import(MSIL,has_code,"has_code");
   pragma Import(MSIL,In_Footprint,"In_Footprint");
   pragma Import(MSIL,init,"init");
   pragma Import(MSIL,insert,"insert");
   pragma Import(MSIL,mark_error,"mark_error");
   pragma Import(MSIL,overline,"overline");
   pragma Import(MSIL,Rename_Tab,"Rename_Tab");
   pragma Import(MSIL,reset,"reset");
   pragma Import(MSIL,reset_number_method_expressions_run,"reset_number_method_expressions_run");
   pragma Import(MSIL,reset_this_method_expressions_run,"reset_this_method_expressions_run");
   pragma Import(MSIL,Scale,"Scale");
   pragma Import(MSIL,select_k,"select");
   pragma Import(MSIL,selectAll,"selectAll");
   pragma Import(MSIL,selectComment,"selectComment");
   pragma Import(MSIL,SelectRegion,"SelectRegion");
   pragma Import(MSIL,set_H,"set_H");
   pragma Import(MSIL,set_parent_info,"set_parent_info");
   pragma Import(MSIL,set_reverse_loop_logic,"set_reverse_loop_logic");
   pragma Import(MSIL,set_selected,"set_selected");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,set_W,"set_W");
   pragma Import(MSIL,set_X,"set_X");
   pragma Import(MSIL,set_Y,"set_Y");
   pragma Import(MSIL,setText,"setText");
   pragma Import(MSIL,Show_Guid,"Show_Guid");
   pragma Import(MSIL,Show_Guids,"Show_Guids");
   pragma Import(MSIL,Toggle_Breakpoint,"Toggle_Breakpoint");
   pragma Import(MSIL,unbreakString,"unbreakString");
   pragma Import(MSIL,wide_footprint,"wide_footprint");
end raptor.Component;
pragma Import(MSIL,raptor.Component,
   ".ver 4:0:5:2",
   "[raptor]raptor.Component");
