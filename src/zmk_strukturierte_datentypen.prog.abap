*&---------------------------------------------------------------------*
*& Report ZMK_STRUKTURIERTE_DATENTYPEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_strukturierte_datentypen.

TYPES ty_name type c LENGTH 15.

TYPES: BEGIN OF ty_person,
         vorname  TYPE ty_name,
         nachname TYPE ty_name,
         plz      TYPE n LENGTH 5,
       END OF ty_person.

DATA gs_person TYPE ty_person.
DATA gv_name TYPE ty_name.

gs_person-vorname = 'Mehmet'.
gs_person-nachname = 'Keles'.
gs_person-plz = '81671'.

WRITE: gs_person-plz, gs_person-nachname.
