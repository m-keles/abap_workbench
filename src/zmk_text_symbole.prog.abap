*&---------------------------------------------------------------------*
*& Report ZMK_TEXT_SYMBOLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_text_symbole.

WRITE:  sy-cprog,
        /15 TEXT-001,
        35 sy-datum,
        sy-uname,
        /15 'Hinweis auf Manager'(002),
        35 sy-uzeit.

DATA(gehalt) = TEXT-003 * 5.
WRITE: / 'Gehalt:', gehalt.
