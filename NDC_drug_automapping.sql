--table with drugs to be mapped
DROP TABLE IF EXISTS NDC_drugs_to_map
;
CREATE TABLE IF NOT EXISTS NDC_drugs_to_map AS
    (SELECT *
    FROM ndc_drugs
    UNION ALL
    SELECT *
    FROM ndc_remains
    )
;


--table with completed mapping
DROP TABLE IF EXISTS NDC_drugs_mapped
;
CREATE TABLE IF NOT EXISTS NDC_drugs_mapped AS
    (SELECT concept_id,
            concept_id as target_concept_id
     FROM devv5.concept
    WHERE FALSE
    )
;
SELECT * FROM NDC_drugs_mapped;








