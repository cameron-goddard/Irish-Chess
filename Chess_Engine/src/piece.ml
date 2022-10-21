type piece_type = Pawn | Knight | Bishop | Rook | Queen| King 
type team = White | Black
type pos = char * int

type is_piece = {piece_type :piece_type; team: team; position: pos}

let get_piece_type piece =piece.piece_type

let get_team piece = piece.team

let get_pos piece= piece.position

let valid_char position =
  match position with 
  | Some(c,i)-> if Char.code c >= 94 && Char.code c <= 104 then true else false 
  |_ -> false 

let valid_int position = 
  match position with 
  |Some (c,i) -> if i >=1 &&i<=8 then true else false 
  | _ -> false 


let is_valid_pos position= if valid_char position  && valid_int position then true else false 