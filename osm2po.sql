-- Table: at_2po_4pgr

-- DROP TABLE at_2po_4pgr;

CREATE TABLE at_2po_4pgr
(
  id integer NOT NULL,
  osm_id bigint,
  osm_name character varying,
  osm_meta character varying,
  osm_source_id bigint,
  osm_target_id bigint,
  clazz integer,
  flags integer,
  source integer,
  target integer,
  km double precision,
  kmh integer,
  cost double precision,
  reverse_cost double precision,
  x1 double precision,
  y1 double precision,
  x2 double precision,
  y2 double precision,
  geom_way geometry(LineString,4326),
  CONSTRAINT pkey_at_2po_4pgr PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE at_2po_4pgr
  OWNER TO osm;

-- Index: idx_at_2po_4pgr_source

-- DROP INDEX idx_at_2po_4pgr_source;

CREATE INDEX idx_at_2po_4pgr_source
  ON at_2po_4pgr
  USING btree
  (source);

-- Index: idx_at_2po_4pgr_target

-- DROP INDEX idx_at_2po_4pgr_target;

CREATE INDEX idx_at_2po_4pgr_target
  ON at_2po_4pgr
  USING btree
  (target);

