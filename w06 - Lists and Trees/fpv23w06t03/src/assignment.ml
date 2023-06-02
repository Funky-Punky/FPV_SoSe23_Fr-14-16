type tree = Leaf | Node of tree * int * tree

let leaf () = Leaf
let node x l r = Node (l, x, r)
let inode v = node v (leaf ()) (leaf ())
let inspect t = match t with Node (v, l, r) -> Some (l, v, r) | Leaf -> None

let t1 =
  Node
    ( Node (Leaf, 1, Node (Leaf, 6, Leaf)),
      8,
      Node (Node (Leaf, 9, Leaf), 12, Node (Leaf, 42, Leaf)) )

let rec to_list t =
  match t with Leaf -> [] | Node (l, x, r) -> to_list l @ [ x ] @ to_list r

let rec insert x t =
  match t with
  | Leaf -> Node (Leaf, x, Leaf)
  | Node (l, a, r) ->
      if x < a then Node (insert x l, a, r)
      else if x > a then Node (l, a, insert x r)
      else Node (l, a, r)

let rec remove_max t =
  match t with
  | Leaf -> failwith "not gonna happen"
  | Node (l, a, Leaf) -> (l, a)
  | Node (l, a, r) ->
      let r_new, r_max = remove_max r in
      (Node (l, a, r_new), r_max)

let rec remove x t =
  match t with
  | Leaf -> Leaf
  | Node (l, a, r) -> (
      if x < a then Node (remove x l, a, r)
      else if x > a then Node (l, a, remove x r)
      else
        match (l, r) with
        | Leaf, Leaf -> Leaf
        | Leaf, r -> r
        | l, Leaf -> l
        | l, r ->
            let new_l, l_max = remove_max l in
            Node (new_l, l_max, r))
