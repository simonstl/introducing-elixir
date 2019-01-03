```code
x= "Quote - \" in a string. \n Backslash, too: \\ . \n"
IO.puts(x)
 
"el" <> "ixir"
a="el"
a <> "ixir"

a = "this"
b = "The value of a is #{a}."
a = "that"
b

x = 7 * 5
"x is now #{x}"
y = {4, 5, 6}
"y is now #{y}"
"y is now #{inspect y}"

"el" == "el"
"el" == "ixir"

multi = """
This is a multiline
string, also called a heredoc.
"""
IO.puts(multi)

x = 'ixir'
'el' ++ 'ixir'
List.to_string('elixir')
String.to_char_list("elixir") #depricated
String.to_charlist("elixir") #use

~s (bynary string двоичная строка), 
~c (list of symbols список символов), 
~r (regular expression регулярное выражение)
~w (list of words список слов).

pass_through = ~S"This is a {#msg}, she said.\n This is only a {#msg}."
IO.puts(pass_through)

~w/Elixir is great!/
~c/2 + 7 = #{2 + 7}/
~C/2 + 7 = #{2 + 7}/
re = ~r/elixir/
"Elixir" =~ re

re = ~r/elixir/i
"Elixir" =~ re

string = "100_000_000"
Regex.split(~r/_/, string)

~s/the cat in the hat on the mat/

~s/welcome to elixir #{String.downcase "SCHOOL"}/
~S/welcome to elixir #{String.downcase "school"}/

~w/i love elixir school/
~w/i love #{'e'}lixir school/
~W/i love #{'e'}lixir school/

NaiveDateTime.from_iso8601("2015-01-23 23:50:07") == {:ok, ~N[2015-01-23 23:50:07]}

mix new ex1-ask --app ask && cd ex1-ask && iex -S mix
mix new ex2-ask --app ask && cd ex2-ask && iex -S mix
Ask.chars
Ask.line

mix new ex3-ask --app ask && cd ex2-ask && iex -S mix

```
