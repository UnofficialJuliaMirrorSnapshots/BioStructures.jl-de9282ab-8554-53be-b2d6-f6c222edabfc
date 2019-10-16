# BioStructures.jl
# ================
#
# A Julia package to read, write and manipulate macromolecular structures.
#
# This file is a part of BioJulia.
# License is MIT: https://github.com/BioJulia/BioStructures.jl/blob/master/LICENSE.md

module BioStructures

using LinearAlgebra: dot, cross, norm

using CodecZlib
using Format
using RecipesBase
using LightGraphs
using MetaGraphs
using DataFrames
import BioCore
import BioCore.distance
import BioSymbols
import BioSequences.AminoAcidSequence
using BioAlignments

include("model.jl")
include("pdb.jl")
include("mmcif.jl")
include("spatial.jl")

end # BioStructures
