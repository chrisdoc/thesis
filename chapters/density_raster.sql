-- Table: density_raster

-- DROP TABLE density_raster;

CREATE TABLE density_raster
(
  rid serial NOT NULL,
  rast raster,
  filename text,
  CONSTRAINT density_raster_pkey PRIMARY KEY (rid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE density_raster
  OWNER TO osm;

-- Index: density_raster_rast_gist

-- DROP INDEX density_raster_rast_gist;

CREATE INDEX density_raster_rast_gist
  ON density_raster
  USING gist
  (st_convexhull(rast));

