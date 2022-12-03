*&---------------------------------------------------------------------*
*& Report ZMK_ANZEIGE_FLUGGESELLSCHAFT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_anzeige_fluggesellschaft.

PARAMETERS pa_car TYPE scarr-carrid.
DATA gs_scarr TYPE scarr.

CALL METHOD cl_net310_flightmodel=>read_carrier
  EXPORTING
    "Formalparameter        "Aktualparameter
    "<<<<<<<
    iv_carrid         =     pa_car
  IMPORTING
    "Formalparameter        "Aktualparameter
    ">>>>>>>
    es_carrier        =     gs_scarr.

WRITE: gs_scarr-carrid,
       gs_scarr-carrname,
       gs_scarr-currcode,
       gs_scarr-url.
