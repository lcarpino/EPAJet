 (* ::Package:: *)

(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: SubtractionThreeJet *)

(* :Author: *)

(* :Summary: *)

(* ------------------------------------------------------------------------ *)

BeginPackage["EPAJet`DipoleSubtraction`SubtractionThreeJet`"]

  SubThr::usage = "SubThr[y13, y23]"
  Dip132::usage = ""
  Dip231::usage = ""

  Begin["`Private`"]

  Dip132[y13_, y23_] := (2/(y13 + y23) - (2-y23))/y13 + y23/(1-y13)
  Dip231[y13_, y23_] := (2/(y13 + y23) - (2-y13))/y23 + y13/(1-y23)

  SubThr[y13_, y23_] :=
   Module[
     {y12 = 1 - y13 - y23},
     TY[y12, y13, y23]
   ]

  TS[s12_, s13_, s23_] := s23/s13 + s13/s23 + 2 s12 (s12 + s13 + s23)/(s13 s23)
  TY[y12_, y13_, y23_] := y23/y13 + y13/y23 + 2 y12/(y13 y23)

  End[]
EndPackage[]
