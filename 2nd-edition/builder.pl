use File::Find;

find(\&wanted, '.');

sub wanted
{
   if ($_ eq 'mix.exs')
   {
        print($File::Find::dir, "\n");
        system('mix compile');
   }
}

