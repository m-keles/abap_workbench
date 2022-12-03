*&---------------------------------------------------------------------*
*& Report ZMK_OPEN_SQL_NEUE_SYNTAX
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMK_OPEN_SQL_NEUE_SYNTAX.

PARAMETERS pa_car TYPE scarr-carrid.
DATA go_alv TYPE REF TO cl_salv_table.

SELECT carrid, connid, cityfrom, cityto, fltype
  FROM spfli
  INTO TABLE @data(gt_spfli)
  WHERE carrid = @pa_car.


CALL METHOD cl_salv_table=>factory
  IMPORTING
    r_salv_table   = go_alv
  CHANGING
    t_table        = gt_spfli
    .

*go_alv->display( ).
CALL METHOD go_alv->display.
