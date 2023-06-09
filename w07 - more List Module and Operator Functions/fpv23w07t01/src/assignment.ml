let float_list xs = List.map float_of_int xs

let rec float_two xs =
  match xs with [] -> [] | y :: ys -> float_of_int y :: float_two ys

let to_string xs =
  (* List.fold_left (fun acc i -> acc ^ string_of_int i ^ ";") "[" xs
     ^ "]" *)
  "["
  ^ (List.map string_of_int xs |> List.map (( ^ ) ";") |> String.concat "")
  ^ "]"

let part_even xs =
  (* List.filter (fun x -> x mod 2 = 0) xs 
  @ List.filter (fun x -> x mod 2 = 1) xs *)
  let (a, b) = List.partition (fun x -> x mod 2 = 0) xs in
  a @ b

let squaresum xs = List.fold_left (fun acc x -> acc + x*x) 0 xs
(* 
   































*)

(* let squaresum xs = List.map (fun i -> i * i) xs |> List.fold_left ( + ) 0
   let float_list xs = List.map float_of_int xs

   let to_string xs =
     (List.map (fun s -> string_of_int s ^ ";") xs
     |> List.fold_left (fun s acc -> s ^ acc) "[")
     ^ "]"

   let part_even xs =
     let l1, l2 = List.partition (fun i -> i mod 2 = 0) xs in
     l1 @ l2 *)
