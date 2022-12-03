*&---------------------------------------------------------------------*
*& Report ZMK_IF_AUSDRUCK_COND
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_if_ausdruck_cond.

PARAMETERS pa_car TYPE scarr-carrid.

DATA gv_fluggesellschaft TYPE string.

DATA gt_spfli TYPE TABLE OF spfli.
DATA gs_spfli TYPE spfli.
READ TABLE gt_spfli INTO gs_spfli INDEX 2.
gs_spfli = gt_spfli[ 2 ].

gv_fluggesellschaft = COND #(
    WHEN pa_car = 'AA' THEN 'American Airlines'
    WHEN pa_car = 'LH' THEN 'Lufthansa'
    WHEN sy-uname = 'SEPTRAIN-07' THEN 'Keles'
    ELSE 'nicht definiert'
    ).

WRITE gv_fluggesellschaft.
