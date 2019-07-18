(* ::Package:: *)

(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: PS3 *)

(* :Author: *)

(* :Summary: *)

(* ------------------------------------------------------------------------ *)

BeginPackage["EPAJet`PhaseSpace`PS3`"]

  PS3::usage = "PS3[y13, y23]"

  Begin["`Private`"]

  PS3[y13_, y23_] := PS3Y[y12, y13, y23]

  PS3Y[y13_, y23_] := 1

  End[]
EndPackage[]