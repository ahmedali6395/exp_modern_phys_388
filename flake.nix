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
          texlive.combined.scheme-full  ## consider switching to medium...? this shit is 2-4gb lol
          tex-fmt
        ];
      };
    in
      {
        devShells.${system}.default = devShell;
      };
}
