*&---------------------------------------------------------------------*
*& Report ZMK_SCHLEIFE_DO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_schleife_do.
PARAMETERS pa_times TYPE i DEFAULT 4.

DO.
  IF sy-index > 3.
    EXIT.
  ENDIF.
  WRITE: / 'Schleife Nr.', sy-index.
  DO pa_times TIMES.
    IF sy-index GT 10. EXIT. ENDIF.
    WRITE: /15 'innere Schleife', sy-index.
  ENDDO.

ENDDO.
ULINE.
WRITE 'Programmende'.
