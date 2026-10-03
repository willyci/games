# Kindle Games

Classic board, puzzle and card games made for e-ink e-readers such as Kindle, Kobo and Tolino.
Every game is a single self-contained HTML file with no dependencies, so it works in the basic web browser built into an e-reader.

**Play:** https://willyci.github.io/games/ (requires GitHub Pages to be enabled for this repo)

## Games

### Strategy
| Game | Modes |
|---|---|
| Chess | vs computer (4 levels) or two players |
| Checkers | vs computer (3 levels) or two players |
| Reversi | vs computer (3 levels, play either colour) or two players |
| Backgammon | vs computer or two players, full rules (bar, bearing off) |
| Chinese Chess (Xiangqi) | vs computer (3 levels) or two players |
| Go | 9×9 or 13×13, vs computer or two players, area scoring |
| Connect Four | vs computer (3 levels) or two players |
| Five in a Row (Gomoku) | 11×11 to 15×15, vs computer or two players |
| Chinese Checkers | vs computer or two players |
| Corners | race your pieces into the opposite corner, vs computer or two players |
| Dots & Boxes | 3×3 to 6×6, vs computer or two players |
| Tic-Tac-Toe | vs computer (Hard is unbeatable) or two players |

### Puzzles
| Game | Notes |
|---|---|
| Sudoku | a new puzzle every game with a single solution, 3 levels, notes, hints |
| Minesweeper | 3 sizes, Dig/Flag buttons (no long-press needed) |
| 2048 | arrow buttons, swipe or keyboard |
| Lost PIN | guess the hidden 3–5 digit PIN from right-place / wrong-place clues |
| Lights Out | 4×4 to 7×7 |
| Peg Solitaire | English, European and Triangle boards |
| Tower of Hanoi | 3–8 discs, with a step-by-step solver |

### Cards & Words
| Game | Notes |
|---|---|
| Blackjack | hit, stand, double, split; chips are saved |
| Hangman | 350 words in 8 categories, or two players |

## Designed for e-ink

- High contrast black and white, with no colour needed
- No animations, so the screen doesn't flicker or leave ghost images
- Large tap targets, with buttons instead of drag, swipe or long-press
- Plain ES5 JavaScript and table layouts, so older Kindle browsers can run it
- Settings and some games in progress are saved on the device in `localStorage`

## Running locally

Open `index.html` in a browser, or serve the folder:

```bash
python -m http.server 8000
```

Then visit http://localhost:8000.

## Adding a game

1. Add a new `.html` file to this folder. Copying an existing game such as `light_out.html` gives you the shared style and the back button.
2. Update the game list in `index.html`:

   ```bash
   powershell -ExecutionPolicy Bypass -File update_index.ps1
   ```

3. Optional: give the game a name, an icon and a section by adding it to `META` and `SECTIONS` in `index.html`. Otherwise it appears under "More" with a letter icon.

## More games for e-readers

- [ReKindle](https://rekindle.ink/)
- [PaperGames](https://yourchaoschris.github.io/PaperGames/index.html)
- [Chess for Kindle](https://artemartemenko.github.io/chess-for-kindle/)
- [KindlePlay](https://kindleplay.com/)
- [CYOA Holmes](https://willyci.github.io/CYOA_Holmes/)

## License

[MIT](LICENSE)
