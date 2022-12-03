*&---------------------------------------------------------------------*
*& Report ZMK_PROG_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMK_PROG_DEMO.

DATA gv_text_hallo TYPE string VALUE 'Hallo'.
WRITE gv_text_hallo.
gv_text_hallo = 'Hallo2'.
WRITE / gv_text_hallo.

DATA gv_datum TYPE d VALUE '20220903'.
WRITE: 'Monat ist', gv_datum+4(2).
