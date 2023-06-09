type 'a llist =
  | Cons of 'a * (unit -> 'a llist)

let rec lnat n =
  Cons (n, fun () -> lnat (n + 1))

let rec fib_help n1 n2 =
  Cons (n1, fun () -> fib_help n2 (n1 + n2))

let lfib = fib_help 0 1

let rec ltake n (Cons (a, f)) =
  if n <= 0 then []
  else a :: ltake (n - 1) (f ())

let rec lfilter p (Cons (a, f)) =
  if p a then
    Cons (a, fun () -> lfilter p (f ()))
  else lfilter p (f ())

(* 
  































*)

(* type 'a llist =
     | Cons of 'a * (unit -> 'a llist)

   let rec lnat n =
     Cons (n, fun () -> lnat (n + 1))

   let rec lfib_init a b =
     Cons (a, fun () -> lfib_init b (a + b))

   let lfib () = lfib_init 0 1

   let rec ltake n (Cons (a, f)) =
     if n <= 0 then []
     else a :: ltake (n - 1) (f ())

   let rec lfilter p (Cons (a, f)) =
     if p a then
       Cons (a, fun () -> lfilter p (f ()))
     else lfilter p (f ()) *)
