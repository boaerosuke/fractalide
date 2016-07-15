{ stdenv, buildFractalideComponent, filterContracts, genName, upkeepers, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  filteredContracts = filterContracts ["js_create"];
  depsSha256 = "1wd0gqd7sbjpgyxcgpdwkl0w8p634lb66lqxzn9pxczrq752ff3x";

  meta = with stdenv.lib; {
    description = "Component: manage the inside of a js block";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/maths/boolean/print;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}