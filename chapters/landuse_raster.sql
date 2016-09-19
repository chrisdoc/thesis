-- Table: landuse_raster

-- DROP TABLE landuse_raster;

CREATE TABLE landuse_raster
(
  rid serial NOT NULL,
  rast raster,
  filename text,
  CONSTRAINT landuse_raster_pkey PRIMARY KEY (rid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE landuse_raster
  OWNER TO osm;

-- Index: landuse_raster_rast_gist

-- DROP INDEX landuse_raster_rast_gist;

CREATE INDEX landuse_raster_rast_gist
  ON landuse_raster
  USING gist
  (st_convexhull(rast));

