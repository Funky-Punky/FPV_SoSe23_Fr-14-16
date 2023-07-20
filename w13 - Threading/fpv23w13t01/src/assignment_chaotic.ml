open Thread
open Event

let rec count n =
  if n <= 0 then ()
  else (
    print_endline
      ("Number: " ^ string_of_int n ^ ", Thread: "
      ^ string_of_int (Thread.id (Thread.self ())));
    count (n - 1))

let spawn_counter n = failwith "Todo"

let run_counters m n = failwith ""
