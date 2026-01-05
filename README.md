# Second-Order Constraint Geometry (Σ₂)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18149999.svg)](https://doi.org/10.5281/zenodo.18149999)

**Author:** A. R. Wells  
**Affiliation:** Dual-Frame Research Group  
**License:** CC BY 4.0  
**Contact:** No solicitation for correspondence or media contact  
**Paper email:** arwells.research@proton.me  

---

## Overview

This repository contains the LaTeX source for a foundations paper introducing  
**Second-Order Constraint Geometry (Σ₂)** — a structural framework for identifying
when **instantaneous state descriptions are insufficient** to faithfully represent
physical systems whose admissibility depends on **history, ordering, or trajectory structure**.

The central result is *diagnostic*, not dynamical:

> Some physically realizable systems admit identical reduced states at a conditioning
> boundary yet differ in which future operations or continuations remain admissible.

Such cases cannot be faithfully represented by state augmentation alone without
breaking experimentally verified symmetries.

---

## What Σ₂ Is

Second-Order Constraint Geometry formalizes constraints that act on **admissible
histories**, rather than on instantaneous states.

- First-order theories (classical mechanics, quantum mechanics, Markovian models)
  describe how states evolve.
- Σ₂ classifies when **the space of admissible continuations itself** depends on
  trajectory-level structure that cannot be factored through state alone.

Σ₂ is:

- **Structural and geometric** (in the Erlangen sense)
- **Operationally grounded** (defined relative to a fixed operational frame)
- **Falsifiable** (via explicit experimental protocols)
- **Interpretation-neutral** (does not depend on collapse, hidden variables, or ontology)

---

## What This Paper Demonstrates

The paper establishes three core results:

1. **Existence**  
   A fully worked two-qubit Hamiltonian example (Sec. 3.6, Appendix B) demonstrates
   that Σ₂ structure is physically realizable within standard unitary quantum mechanics.

2. **Impossibility of Faithful State Augmentation**  
   Any state augmentation that restores predictive completeness in these regimes
   necessarily breaks symmetry preservation relative to the operational frame
   (Definition 1).

3. **Operational Falsifiability**  
   A concrete experimental protocol (Box X) distinguishes genuine second-order
   effects from state-augmented first-order explanations via diagnostic divergence
   under verified boundary-state equality.

---

## What This Paper Does *Not* Claim

- It does **not** modify quantum mechanics
- It does **not** introduce new dynamics, forces, or collapse rules
- It does **not** claim Σ₂ is universal
- It does **not** replace non-Markovian models

Instead, it shows **why** non-Markovian and memory-based models succeed:
they act as *surrogate encodings* of trajectory-level constraints by breaking
symmetry preservation in reduced descriptions.

---

## Relation to Dual-Frame Theory (DFT)

This work is part of the broader **Dual-Frame Theory (DFT)** research program, but is
**logically independent** of any specific DFT dynamical claims.

- DFT: geometry-first account of physical structure
- Σ₂: constraint-first account of admissible histories

Σ₂ stands on its own as a foundations result and does not assume acceptance of DFT.

---

## Repository Contents

- `second-order-constraint-geometry.tex` — master LaTeX source
- `sections/` — individual paper sections
- `bib/references.bib` — bibliography
- `figures/` — figures and diagrams
- `tools/` — helper scripts (if any)

Key appendices:
- **Appendix B (`app:hamiltonian-derivation`)** — complete Hamiltonian derivation,
  density-matrix calculations, symmetry group construction, and proof of unfaithful
  state augmentation

---

## Build Instructions

**Requirements:** `latexmk` with a standard LaTeX installation.

Build the PDF:

    latexmk -pdf -interaction=nonstopmode -halt-on-error second-order-constraint-geometry.tex

Clean build artifacts:

    latexmk -C

---

## Status

- Conceptual framework finalized
- Formal definitions complete
- Concrete Hamiltonian example verified
- Falsifiability criteria specified
- Manuscript reviewed and submission-ready

**Release:** Published on Zenodo (versioned)

- **Version v1 DOI:** https://doi.org/10.5281/zenodo.18150000  
- **All versions DOI:** https://doi.org/10.5281/zenodo.18149999

---

## Citation

If you use or reference this work, please cite the Zenodo record corresponding to
the version used.

**Recommended citation (v1):**

A. R. Wells (2026). *Second-Order Constraint Geometry (Σ₂)* (v1).  
Zenodo. https://doi.org/10.5281/zenodo.18150000

For citation independent of version, use the **all-versions DOI**:
https://doi.org/10.5281/zenodo.18149999

This work is released under **Creative Commons Attribution 4.0 (CC BY 4.0)**.
