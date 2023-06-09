(* 1: List Module *)

(* type ('k, 'v) map = ('k * 'v) list

   let empty = []
   let is_empty m = m = []
   let get k m = List.find_opt (fun (key, _) -> key = k) m |> Option.map snd
   let remove k m = List.filter (fun (key, _) -> k <> key) m
   let put k v m = (k, v) :: remove k m
   let contains_key k m = get k m <> None
   let keys m = List.map fst m
   let values m = List.map snd m *)

(* 
   















*)
(* 2: Association Lists *)
(* type ('k, 'v) map = ('k * 'v) list

   let is_empty _ = failwith "TODO"
   let get k m = List.assoc_opt k m
   let put _ _ _ = failwith "TODO"
   let contains_key k m = List.mem_assoc k m
   let remove k m = List.remove_assoc k m
   let keys m = fst (List.split m)
   let values m = snd (List.split m) *)

(* 3: Functional map *)

(* Our Solution from the Tutorial *)

(* type ('k, 'v) map = 'k -> 'v option


      let empty = (fun _ -> None)
      let is_empty = failwith ""


      let get k (m : (('k, 'v) map)) = m k

      let put k v (m : ('k, 'v) map) = (fun key -> if key = k then Some v else m key)

      let contains_key  k m = m k <> None
      let remove k m = ((fun key -> if key = k then None else m key))
      let keys _ = failwith "not possible"

      let values _ = failwith "TODO" *)

(* my Sample Solution *)

type ('k, 'v) map = 'k -> 'v option

let empty _ = None
let is_empty m = failwith "TODO"
let get k m = m k
let put k v m key = if key = k then Some v else m key
let contains_key k m = m k <> None
let remove k m key = if k = key then None else m key
let keys m = failwith "TODO"
let values m = failwith "TODO"

(* type ('k, 'v) map = ('k * 'v) list

   let empty = []
   let is_empty m = m = []
   let get k m = Option.map snd (List.find_opt (fun (a, _) -> a = k) m)
   let remove k m = List.filter (fun (a, _) -> a <> k) m
   let put k v m = (k, v) :: remove k m
   let contains_key k m = get k m <> None
   let keys m = List.map fst m
   let values m = List.map snd m *)
