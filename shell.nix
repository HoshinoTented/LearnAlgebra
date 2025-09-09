let
  # nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/50ab793786d9de88ee30ec4e4c24fb4236fc2674";
  pkgs = import <nixpkgs> {};
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    (texlive.combine {
      inherit (texlive)
        scheme-medium
        cleveref
        subfiles
        xecjk
        ;
    })
  ];
}
