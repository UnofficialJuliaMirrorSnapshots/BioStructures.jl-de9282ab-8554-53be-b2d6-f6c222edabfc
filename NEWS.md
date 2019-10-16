BioStructures.jl release notes
==============================

## v0.7.0 - Oct 2019

* `MetaGraph` from MetaGraphs.jl is extended to create graphs of contacting elements in a molecular structure, giving access to all the graph analysis tools in LightGraphs.jl.
* `DataFrame` from DataFrames.jl is extended to allow creation of data frames from lists of atoms or residues.
* `pairalign` from BioAlignments.jl is extended to produce pairwise alignments from structural elements.
* `AminoAcidSequence` now takes any element type and has the `gaps` keyword argument.
* Documentation example of interoperability with NearestNeighbors.jl.
* Parametric types used more extensively internally.

## v0.6.0 - Sep 2019

* `collectatoms`, `collectresidues`, `collectchains` and `collectmodels` no longer run `sort` before returning the final list. The user can run an explicit `sort` themselves if desired. This change makes the functions faster and allows preservation of the element order.
* Speed up residue iteration.
* Documentation improvements.

## v0.5.1 - Aug 2019

* Fix `MMCIFDict` to always contain a `Dict{String, Vector{String}}` rather than a `Dict{String, Union{String, Vector{String}}}`, which includes making the `"data_"` tag a `Vector{String}`.
* More functions documented and documentation bugfixes.

## v0.5.0 - Aug 2019

* The mmCIF reader now returns `Array{String,1}` for dictionary values even when there is only a single component. This improves consistency.
* Documentation expanded with references to Bio3DView.jl and an extra example.
* Replace REQUIRE with Project.toml.
* Bugfix when reading truncated MODEL line in a PDB file.

## v0.4.0 - Sep 2018

* The `ContactMap` and `DistanceMap` types are introduced along with their supertype `SpatialMap`. `contactmap` is removed. Plot recipes are defined for visualisation of `ContactMap`s and `DistanceMap`s. `showcontactmap` provides a quick way to view a `ContactMap` in the terminal.
* Bug fix on downloading MMTF files.

## v0.3.0 - Aug 2018

* Code is now compatible with Julia v0.7 and v1.0. Support for earlier Julia versions is dropped.
* `downloadpdb` can now be given a function as the first argument, in which case the function is run with the downloaded filepath(s) as an argument and the file(s) are deleted afterwards.
* Improved function docstrings.

## v0.2.0 - Mar 2018

* A reader and writer is added for the mmCIF format, which has been the standard PDB archive format since 2014. mmCIF files can either be read into a hierarchical structure object or directly in as a dictionary. PDB and mmCIF files can be interconverted.
* `chainid` now returns a `String` instead of a `Char`. This allows multi-character chain IDs. This also changes `chainids`, `chain` and `chains`. Chains can be accessed by string (e.g. `struc["A"]`), but can still be accessed by character for single chain IDs (e.g. `struc['A']`).
* `show` now returns a single line statement for objects across the module, in line with Julia conventions.

## v0.1.0 - Aug 2017

Transfer of existing code from [Bio.jl](https://github.com/BioJulia/Bio.jl). Compatible with Julia v0.6.

Features:
* Hierarchical data structure suitable for macromolecules, particularly proteins.
* Fast reader and writer for the [Protein Data Bank](https://www.rcsb.org/pdb/home/home.do) (PDB) file format.
* Selection and iteration of structural elements.
* Calculation of spatial properties such as distances and Ramachandran angles.
* Functions to access the PDB.
