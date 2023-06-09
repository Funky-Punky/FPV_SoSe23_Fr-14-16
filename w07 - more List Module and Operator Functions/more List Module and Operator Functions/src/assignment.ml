let l = [ 1; 3; 2; 4 ]

(* List.map *)
let two_times_l = List.map (fun x -> 2 * x) l

(* List.filter *)
let bigger_than_two = List.filter (fun x -> x > 2) l

(* List.fold_left/right *)

let sum = List.fold_left (fun acc x -> acc * x) 1 l
let str_left = List.fold_left (fun acc i -> acc ^ string_of_int i) "" l
let str_right = List.fold_right (fun i acc -> acc ^ string_of_int i) l ""
let my_rev list = List.fold_left (fun acc x -> x :: acc) [] list

(* Operator Functions *)
(* a+b  =  (+) a b *)
let sum_cooler = List.fold_left ( + ) 0 l
let ( => ) a b = if a then b else true
