open Board

type display_colors = Graphics.color * Graphics.color
(** The type representing the colors of each side as displayed in a GUI. *)

type t
(** The abstract type of values representing games. *)

type color
(** The type representing the two opponents in a game of chess. *)

val get_board : t -> Board.t
(** [get_board t] returns the board field from the game instance [t]. *)

val from_json : Yojson.Basic.t -> t
(** [from_json g] is the game that [g] represents. Requires: [g] is a valid JSON
    game representation. *)

val main : unit -> unit
(** [main] is the entry point to the game, and is responsible for setting up the
    view and starting the game loop. *)
