(* ::Package:: *)

(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: PS2 *)

(* :Author: *)

(* :Summary: *)

(* ------------------------------------------------------------------------ *)

BeginPackage["EPAJet`PhaseSpace`PS2`"]

  PS2Y::usage = "PS2Y[y12]"

  Begin["`Private`"]

  PS2Y[y12_] := DiracDelta[1-y12]

  End[]
EndPackage[]