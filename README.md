assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...


Entity: Person

Goal: As a human being with infirmities I want to know who my physician is.

Relationships:

    A patient can have many physicians (Cardiologist, Hepatologist, Neurologist, etc...)
    A physician can have many patients

Table:

Person >>     ID -> PK
              Name, string
              Age, int
              Occupation, string


Treatings >>  Patient_ID
              Physician_ID
