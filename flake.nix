/* ZAIN CONFIG FILE, IGNORE THIS AWAWAWAWA */
{
  description = "okayokayokay";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          # uv
          texlive.combined.scheme-full
        ];
      };
    in
      {
        devShells.${system}.default = devShell;
      };
}
