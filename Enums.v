(*
In case of some Inductives, we can list all of
members of such Type.
*)
Inductive rgb : Type :=
  | red
  | green
  | blue.
  
(* There is only three members of rgb: *)
Check red.
Check green.
Check blue.
  
Inductive color : Type :=
  | black
  | white
  | primary (p : rgb).
  
(* And only five for color: *)
Check black.
Check white.
Check primary red.
Check primary green.
Check primary blue.

(* It is important to see [primary red] as
member of color Type, not just constructor primary applied to
rgb member.
These Inductive definitions are just schemes to
define members of certain Type. *)