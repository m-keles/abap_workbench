*&---------------------------------------------------------------------*
*& Report ZMK_PLZ_ERFASSEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_plz_erfassen.

PARAMETERS pa_plz TYPE zmk_plz.
PARAMETERS pa_plz2 TYPE zmk_plz2 VALUE CHECK.
WRITE: pa_plz, pa_plz2.

DATA gv_string TYPE string VALUE 'Mehmet'.
gv_string = `Keles   `.
WRITE: gv_string, strlen( gv_string ).

DATA pv_packed TYPE p DECIMALS 2 VALUE '123.45'.
CONSTANTS gc_pi TYPE p LENGTH 3 VALUE '3.14'.
