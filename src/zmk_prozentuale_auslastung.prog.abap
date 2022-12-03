*&---------------------------------------------------------------------*
*& Report ZMK_STRUKTURVERWENDUNG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_prozentuale_auslastung.

PARAMETERS: pa_max TYPE sbc400_focc-seatsmax,
            pa_occ TYPE sbc400_focc-seatsocc.

PARAMETERS pa_user TYPE string.

DATA gs_focc TYPE sbc400_focc.

DATA gv_percentage TYPE sbc400_focc-percentage.
DATA gv_length TYPE i.

gv_percentage = pa_occ / pa_max * 100.

WRITE: 'Prozentuale Auslastung'(pro), gv_percentage, '%'.

gv_length = strlen( pa_user ).
WRITE: / 'Angemeldeter Benutzer', pa_user, 'Länge des Namens', gv_length.
