*&---------------------------------------------------------------------*
*& Report ZMK_CASE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_case.

PARAMETERS pa_car TYPE scarr-carrid.

CASE pa_car.
  WHEN 'LH' OR 'AA'.
    WRITE 'AA oder LH'.
    IF pa_car = 'AA'.
      WRITE 'American Airlines'.
    ELSE.
      WRITE 'Lufthansa'.
    ENDIF.
    IF sy-uname = 'SEPTRAIN-07'.
      pa_car = 'SQ'.
    ENDIF.
*    WRITE 'Lufthansa'.
  WHEN 'SQ'.
    WRITE 'Singapore Airlines'.
  WHEN OTHERS.
    WRITE 'Weder LH noch SQ'.
ENDCASE.
