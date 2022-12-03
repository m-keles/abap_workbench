*&---------------------------------------------------------------------*
*& Report ZMK_SCHLEIFE_WHILE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_schleife_while.

DATA gv_times TYPE i VALUE 3.

WHILE gv_times > 0 AND sy-uname = 'SEPTRAIN-07'.
  WRITE: / 'Schleife Nr. ', sy-index.
  SUBTRACT 1 FROM gv_times.
ENDWHILE.
ULINE.
WRITE 'Programende'.
