*&---------------------------------------------------------------------*
*& Report ZMK_SCHLEIFE_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_table_select.

PARAMETERS pa_cur TYPE scarr-currcode.
DATA gs_scarr TYPE scarr.
DATA gt_scarr TYPE TABLE OF scarr.

SELECT * FROM scarr
  INTO TABLE gt_scarr
  WHERE currcode = pa_cur.

ULINE.
CASE sy-subrc.
  WHEN 0.
    WRITE: / 'Anzahl Datensatze', sy-dbcnt.
  WHEN 4.
    WRITE 'Die Wahrung existiert nicht'.
ENDCASE.

*IF lines( gt_scarr ) > 0.
IF gt_scarr IS NOT INITIAL.
  SORT gt_scarr BY url DESCENDING.
  LOOP AT gt_scarr INTO gs_scarr FROM 2 TO 5.
    WRITE: / sy-tabix,
             gs_scarr-carrid,
             gs_scarr-carrname,
             gs_scarr-currcode,
             gs_scarr-url(30).
  ENDLOOP.
ENDIF.
