*&---------------------------------------------------------------------*
*& Report ZMK_OSTERSONNTAG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_ostersonntag.
PARAMETERS pa_jahr TYPE n LENGTH 4.
*DATA gv_ostersonntag TYPE d.
DATA: gv_ostersonntag TYPE sy-datum,
      gv_karfreitag   TYPE sy-datum,
      gv_ostermontag  TYPE sy-datum.

CALL FUNCTION 'EASTER_GET_DATE'
  EXPORTING
    year       = pa_jahr
  IMPORTING
    easterdate = gv_ostersonntag.
gv_karfreitag = gv_ostersonntag - 2.
gv_ostermontag = gv_ostersonntag + 1.
WRITE: 'Hinweis auf Ostersonntag'(ost), gv_ostersonntag,
       / 'Karfreitag ist der', gv_karfreitag,
       / 'Ostermontag ist der', gv_ostermontag.
*WRITE gv_ostersonntag DD/MM/YYYY.
ULINE.
WRITE TEXT-ab1.
