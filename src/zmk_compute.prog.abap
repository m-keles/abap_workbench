*&---------------------------------------------------------------------*
*& Report ZMK_COMPUTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_compute.

PARAMETERS: pa_int1 TYPE i,
            pa_op   TYPE c LENGTH 1,
            pa_int2 TYPE i.

DATA gv_result TYPE p LENGTH 16 DECIMALS 2.
AT SELECTION-SCREEN.
  IF pa_op = '/' AND pa_int2 = 0.
    MESSAGE e001(zmk_msg).
  ENDIF.

  IF pa_int1 > 100.
    MESSAGE 'Die Zahl sollte kleiner 101 sein' TYPE 'W'.
  ENDIF.

START-OF-SELECTION.
CASE pa_op.
  WHEN '+'.
    gv_result = pa_int1 + pa_int2.
  WHEN '-'.
    gv_result = pa_int1 - pa_int2.
  WHEN '/'.
      gv_result = pa_int1 / pa_int2.
  WHEN '*'.
    gv_result = pa_int1 * pa_int2.
  WHEN OTHERS.
*    MESSAGE 'Falscher Operator'(fop) TYPE 'I'.
    MESSAGE i002(zmk_msg) WITH pa_op sy-uname.
    RETURN. "Zuruck zur Anfang
ENDCASE.

WRITE: 'Ergebnis der Operation'(erg), gv_result.
