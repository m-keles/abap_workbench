*&---------------------------------------------------------------------*
*& Report ZMK_IF_VERZWEIGUNG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_if_verzweigung.

PARAMETERS pa_car TYPE s_carr_id.

IF pa_car IS NOT INITIAL.
  IF pa_car = 'LH'.
    WRITE 'Lufthansa'.
  ELSEIF pa_car = 'AA'.
    WRITE 'American Airlines'.
  ELSE.
    WRITE 'Weder AA noch LH'.
  ENDIF.
  ULINE.
  WRITE 'Programmende'.
ELSE.
  WRITE 'Parameter leer'.
ENDIF.
