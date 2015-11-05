% Plays

place_xpiece(Game, Coords, New_game):-
        game_board(Game, Board),
        num_jokers_to_place(Board, 0), !,
        game_player(Game, Player),
        board_xy(Board, Coords, Cell),
        cell_xpiece(Cell, -1),
        cell_spieces(Cell, Spieces),
        cell_spieces(New_cell, Spieces),
        cell_xpiece(New_cell, Player),
        board_set_cell(Board, Coords, New_cell, New_board),
        game_set_board(Game, New_board, New_game).