{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python311
    pkgs.python311Packages.virtualenv
  ];

  shellHook = ''
    if [ ! -d .venv ]; then
      python -m venv .venv
      .venv/bin/pip install --upgrade pip
      .venv/bin/pip install "rendercv[full]"
    fi
    source .venv/bin/activate
    echo "✅ Virtualenv activated with rendercv[full]"
  '';
}
