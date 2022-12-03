*&---------------------------------------------------------------------*
*& Report ZMK_HELLO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_hello.
*PARAMETERS pa_name TYPE string LOWER CASE VISIBLE LENGTH 15.
PARAMETERS pa_name(20) TYPE c LOWER CASE VISIBLE LENGTH 15.
PARAMETERS pa_pnr TYPE n LENGTH 5 DEFAULT 44.
PARAMETERS pa_p TYPE p LENGTH 16 DECIMALS 14 DEFAULT 123.
WRITE 'Hello World'.
NEW-LINE.
WRITE: 'Hello', pa_name.
