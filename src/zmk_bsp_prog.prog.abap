*&---------------------------------------------------------------------*
*& Report ZMK_BSP_PROG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_bsp_prog.
SELECTION-SCREEN BEGIN OF BLOCK eingabe WITH FRAME.
PARAMETERS pa_num TYPE i DEFAULT 45.
SELECTION-SCREEN END OF BLOCK eingabe.
DATA gv_result TYPE i.
*DATA gv_result LIKE pa_num.
CONSTANTS gc_pos TYPE i VALUE 20.
*MOVE pa_num TO gv_result.


PERFORM ausgabe USING pa_num.
PERFORM ausgabe USING 20.

"Ende Hauptprogramms
"Generische Type Numeric erlaubt I, Decfloat16, Decfloat34, int8, F, P

FORM ausgabe USING VALUE(pv_num) TYPE numeric. "Unterprogramm
  ADD 5 TO pv_num.
  DATA lv_result TYPE i.
  lv_result = pv_num + 1.
*ADD 1 TO gv_result.

  WRITE: / 'Your Input: ',
          AT gc_pos pv_num LEFT-JUSTIFIED.
*NEW-LINE.
  WRITE: / 'Result: ',
        AT gc_pos lv_result LEFT-JUSTIFIED.
ENDFORM.
