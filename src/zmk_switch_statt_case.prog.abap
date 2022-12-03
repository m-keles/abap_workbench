*&---------------------------------------------------------------------*
*& Report ZMK_SWITCH_STATT_CASE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_switch_statt_case.

PARAMETERS pa_car TYPE scarr-carrid.

DATA gv_fg TYPE c LENGTH 30.

WRITE SWITCH #( pa_car
  WHEN 'AA' THEN 'American Airlines'
  WHEN 'LH' THEN 'Lufthansa'
  ELSE 'nicht definiert'
).

DATA basis TYPE i VALUE 2.
DATA erg TYPE decfloat34.
erg = ipow( base = basis exp = 3 ).
erg = 2 ** 3.
