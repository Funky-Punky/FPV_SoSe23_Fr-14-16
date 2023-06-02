(* abstract type: define as you wish *)
type tree = Leaf | Node of tree * int * tree

val node : int -> tree -> tree -> tree
val inode : int -> tree
val leaf : unit -> tree
val inspect : tree -> (int * tree * tree) option

val t1 : tree
val to_list : tree -> int list
val insert : int -> tree -> tree
val remove : int -> tree -> tree
