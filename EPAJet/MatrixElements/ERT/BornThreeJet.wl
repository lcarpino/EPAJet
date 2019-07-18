 (* ::Package:: *)

(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: BornThreeJet *)

(* :Author: *)

(* :Summary: *)

(* ------------------------------------------------------------------------ *)

BeginPackage["EPAJet`MatrixElements`ERT`BornThreeJet`"]

  MatThr::usage = "MatThr[y13, y23]";

  Begin["`Private`"]

  MatThr[y13_, y23_] :=
   Module[
     {y12 = 1 - y13 - y23},
     TY[y12, y13, y23]
   ]

  TS[s12_, s13_, s23_] := s23/s13 + s13/s23 + 2 s12 (s12 + s13 + s23)/(s13 s23)
  TY[y12_, y13_, y23_] := y23/y13 + y13/y23 + 2 y12/(y13 y23)

  End[]
EndPackage[]
