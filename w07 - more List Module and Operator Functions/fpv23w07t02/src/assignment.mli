type ('k, 'v) map

val empty : ('k, 'v) map
val is_empty : ('k, 'v) map -> bool
val get : 'k -> ('k, 'v) map -> 'v option
val put : 'k -> 'v -> ('k, 'v) map -> ('k, 'v) map
val contains_key : 'k -> ('k, 'v) map -> bool
val remove : 'k -> ('k, 'v) map -> ('k, 'v) map
val keys : ('k, 'v) map -> 'k list
val values : ('k, 'v) map -> 'v list
