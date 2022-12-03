*&---------------------------------------------------------------------*
*& Report ZMK_SCHLEIFE_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_schleife_select.

PARAMETERS pa_cur TYPE scarr-currcode.
DATA gs_scarr TYPE scarr.

SELECT * FROM scarr
  INTO gs_scarr
  WHERE currcode = pa_cur.

  WRITE: / sy-dbcnt, gs_scarr(100).
ENDSELECT.
ULINE.
CASE sy-subrc.
  WHEN 0.
    WRITE: / 'Anzahl Datensatze', sy-dbcnt.
  WHEN 4.
    WRITE 'Die Wahrung existiert nicht'.
ENDCASE.
