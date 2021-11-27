(* ::Package:: *)

(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: ERT *)

(* :Author: *)

(* :Summary: *)

(* ------------------------------------------------------------------------ *)

BeginPackage["EPAJet`MatrixElement`ERT`"]

  (* Matrix Elements *)
  MatTwo::usage = "";
  MatThr::usage = "";
  MatFor::usage = "";

  (* Phasespace *)
  PS2::usage = "";
  PS3::usage = "";
  PS4::usage = "";

  Begin["`Private`"]

  cf = 4/3;
  ca = 3;
  tr = 1/2;
  nf = 5;

  (* ERT two-jets *)

  ERTMatTwo[] := 0

  (* ERT three-jets *)
  
  ERTTS[s12_, s13_, s23_] := s23/s13 + s13/s23 + 2 s12 (s12 + s13 + s23)/(s13 s23)

  ERTTY[y12_, y13_, y23_] := y23/y13 + y13/y23 + 2 y12/(y13 y23)

  (* ERT four-jets *)

  ERTA[s12_, s13_, s14_, s23_, s24_, s34_] :=
    Module[
      {s, s134, s234},

      s = s12 + s13 + s14 + s23 + s24 + s34;
      s134 = s13 + s14 + s34;
      s234 = s23 + s24 + s34;

      ((s12 s34^2 - s13 s24 s34 + s14 s23 s34 + 3 s12 s23 s34 + 3 s12 s14 s34
       + 4 s12^2 s34 - s13 s23 s24 + 2 s12 s23 s24 - s13 s14 s24
       - 2 s12 s13 s24 + 2 s12^2 s24 + s14 s23^2 + 2 s12 s23^2 + s14^2 s23
       + 4 s12 s14 s23 + 4 s12^2 s23 + 2 s12 s14^2 + 2 s12 s13 s14
       + 4 s12^2 s14 + 2 s12^2 s13 + 2 s12^3)/(2 s13 s134 s234 s24)
       + (s24 s34 + s12 s34 + s13 s24 - s14 s23 + s12 s13)/(s13 s134^2)
       + 2 s23 (s - s13)/(s13 s134 s24) + s34/(2 s13 s24))
    ]

  ERTB[s12_, s13_, s14_, s23_, s24_, s34_] :=
    Module[
      {s, s123, s124, s134},

      s = s12 + s13 + s14 + s23 + s24 + s34;
      s123 = s12 + s13 + s23;
      s124 = s12 + s14 + s24;
      s134 = s13 + s14 + s34;

      ((s12 s24 s34 + s12 s14 s34 - s13 s24^2 + s13 s14 s24
       + 2 s12 s14 s24)/(s13 s134 s23 s14)
       + s12 (s + s34) s124/(s134 s234 s14 s24)
       - (2 s13 s24 + s14^2 + s13 s23 + 2 s12 s13)/(s13 s134 s14)
       + s12 s123 s124/(2 s13 s14 s23 s24))

    ]

  ERTC[] := 0
  ERTD[] := 0
  ERTE[] := 0

  End[]
EndPackage[]