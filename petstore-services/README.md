# Implementation Notes

* For tags and categories, made FK reference tables

* For data model, used a model with FKs, with the following mappings

    * Pet --> Category - 1:1, with Categories as a static list
    * Pet --> Tag - Many: Many, with Tags as a static list
    * Pet --> PhotoURLs - 1:Many
    * Pet --> Status - Enum

* For create interface, did validation
     * If invalid, return a 'bad request (HTTP 400)' rather than the specified 405
