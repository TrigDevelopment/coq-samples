Inductive bool : Type :=
  | true
  | false.
  
Definition andb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => b2
  | false => false
  end.

Definition orb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => true
  | false => b2
  end.
  
Notation "x && y" := (andb x y).
Notation "x || y" := (orb x y).

(* These two examples show that && binds tighter than ||.
As you can see, it is written nowhere in code,
from which we can deduce that precedence of && and ||
is hard-coded into Coq*)

Example test_orb_andb1: true || false && false = true.
Proof. simpl. reflexivity. Qed.

Example test_orb_andb2: false && true || true = true.
Proof. simpl. reflexivity. Qed.