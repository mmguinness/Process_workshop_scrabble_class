## Requirements

**Given a word, compute the scrabble score for that word.**

Letter Values<br>
You'll need these:<br>
<br>
Letter	Value<br>
A, E, I, O, U, L, N, R, S, T	1<br>
D, G	2<br>
B, C, M, P	3<br>
F, H, V, W, Y	4<br>
K	5<br>
J, X	8<br>
Q, Z	10<br>
Examples "cabbage" should be scored as worth 14 points:<br>
<br>
3 points for C<br>
1 point for A, twice<br>
3 points for B, twice<br>
2 points for G<br>
1 point for E<br>
And to total:<br>
<br>
3 + 2×1 + 2×3 + 2 + 1<br>
<br>
= 3 + 2 + 6 + 3<br>
<br>
= 14<br>

Acceptance Criteria<br>
scrabble = Scrabble.new('')<br>
scrabble.score # => 0<br>
<br>
scrabble = Scrabble.new(" \t\n")<br>
scrabble.score # => 0<br>
<br>
scrabble = Scrabble.new(nil)<br>
scrabble.score # => 0<br>
<br>
scrabble = Scrabble.new('a')<br>
scrabble.score # => 1<br>
<br>
scrabble = Scrabble.new('f')<br>
scrabble.score # => 4<br>
<br>
scrabble = Scrabble.new('street')<br>
scrabble.score # => 6<br>
<br>
scrabble = Scrabble.new('quirky')<br>
scrabble.score # => 22<br>
<br>
scrabble = Scrabble.new('OXYPHENBUTAZONE')<br>
scrabble.score # => 41<br>
<br>
