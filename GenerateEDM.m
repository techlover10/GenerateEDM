%EDM Name Generator
%Randomly generates names that sound like EDM artist names
%Many cannot be pronounced, but some can

%%Parameter for number of names to generate
numNames = 10;

curr = fopen('test.txt', 'a');
vowels = ['a', 'e', 'i', 'o', 'u'];
trapletters = ['z', 't', 'v', 'r', 's', 'm'];
for (i = 1:1:numNames)
lim = ceil(rand*5)+3;
name = "";
  name(1) = char(floor(rand*26) + 65);
  a=2;
  while (a<lim)
    p = rand;
    if (p<0.3)
      name(a) = char(floor(rand*26) + 97);
      a=a+1;
    elseif (p < 0.6)
      name (a) = trapletters(ceil(rand*6));
      a=a+1;
      name(a) = vowels(ceil(rand*5));
      a=a+1;
    else
      name(a) = vowels(ceil(rand*5));
      a=a+1;
    end
  end
  fprintf(curr, "%s\n", name);
end
fclose(curr);