let hd l = match l with x :: _ -> x | [] -> failwith "invalid"
let tl l = match l with _ :: xs -> xs | [] -> failwith "invalid"
let rec length l = match l with [] -> 0 | _ :: xs -> 1 + length xs

let rec rev_append l1 l2 =
  match l1 with [] -> l2 | x :: xs -> rev_append xs (x :: l2)

let rev l = rev_append l []
let append l1 l2 = rev (rev_append l2 (rev l1))
let rec append2 l1 l2 = match l1 with [] -> l2 | x :: xs -> x :: append xs l2

let rec nth l n =
  match l with
  | [] -> failwith "invalid"
  | x :: xs -> if n = 0 then x else nth xs (n - 1)
