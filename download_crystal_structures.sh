#!/bin/bash
# Download PDB files into structured folders

BASE_DIR="./crystal_structures"
mkdir -p "$BASE_DIR/monomer" "$BASE_DIR/w_Antibody" "$BASE_DIR/w_Ephrin"

# Monomer structures
wget -q -P "$BASE_DIR/monomer" "https://files.rcsb.org/download/2vwd.pdb"
wget -q -P "$BASE_DIR/monomer" "https://files.rcsb.org/download/3d11.pdb"

# With Antibody structures
for pdb in 8k3c 8k0c 8k0d 8xc4 8xpy 8xps 8xq3 8ja5 7txz 7ty0 6vy5; do
    wget -q -P "$BASE_DIR/w_Antibody" "https://files.rcsb.org/download/${pdb}.pdb"
done

# With Ephrin structures
for pdb in 3d12 2vsm; do
    wget -q -P "$BASE_DIR/w_Ephrin" "https://files.rcsb.org/download/${pdb}.pdb"
done

echo "✅ All PDB files downloaded into ./crystal_structures/"