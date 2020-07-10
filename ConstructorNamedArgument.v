(* Why arguments of constructor are named? *)
Inductive nat : Type :=
  | O
  | S (n : nat). (* Where name 'n' is used? 
  Why it cannot be just S nat?*)