*&---------------------------------------------------------------------*
*& Report ZMK_MOVE_EXACT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_move_exact.

DATA gv_connid TYPE s_conn_id.
DATA gv_carrid TYPE s_carr_id.
DATA gv_carr TYPE spfli-carrid.

TYPES tv_vorname TYPE c LENGTH 20.
DATA gv_vorname TYPE tv_vorname.
CONSTANTS gc_pi TYPE p DECIMALS 2 VALUE '3.14'.


DATA feld TYPE s_conn_id.

PARAMETERS pa_zahl TYPE p LENGTH 16 DECIMALS 14.

DATA gv_text TYPE c LENGTH 200000 VALUE 'A'.
DATA gv_nc TYPE n LENGTH 20 VALUE '1'.
DATA gv_source TYPE c LENGTH 20 VALUE 'Mehmet Keles'.
DATA gv_target TYPE c LENGTH 5.

MOVE gv_source TO gv_target.
WRITE: / 'Problem aber ok', gv_target.


TRY.
    DATA(gv_result) = 45 / 0.
    MOVE EXACT gv_source TO gv_target.
    WRITE: / 'No Problem', gv_target.
  CATCH cx_root INTO DATA(go_exc).
    MESSAGE go_exc->get_text( ) TYPE 'I'.
ENDTRY.
