*&---------------------------------------------------------------------*
*& Report ZMK_DEMO_UPROG_ANZEIGE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_demo_uprog_anzeige.

DATA gs_scarr TYPE scarr.
SELECT * FROM scarr INTO gs_scarr.
  PERFORM ausgabe USING gs_scarr.
ENDSELECT.



FORM ausgabe USING VALUE(ps_scarr) TYPE scarr.
  WRITE: / ps_scarr-carrid,
           ps_scarr-carrname,
           ps_scarr-url(30).
ENDFORM.

FORM rechnen USING VALUE(pv_zahl) TYPE i.


ENDFORM.
