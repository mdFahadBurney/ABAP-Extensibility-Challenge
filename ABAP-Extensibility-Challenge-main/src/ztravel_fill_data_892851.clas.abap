CLASS ztravel_fill_data_892851 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztravel_fill_data_892851 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
     INSERT ztravel_892851 FROM ( SELECT FROM /dmo/travel FIELDS
                                 travel_id, total_price, currency_code,
                                 description,
                                 case
                                 when total_price > 4500 then 'Business'
                                 when total_price > 3000 then 'Premium Economy'
                                 else 'Economy' end as zztraveltype_zmf
      ).

  ENDMETHOD.
ENDCLASS.
