-- Schéma initial pour la CVthèque

CREATE TABLE consultants (
  id UUID PRIMARY KEY,
  full_name TEXT NOT NULL,
  email TEXT UNIQUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE missions (
  id UUID PRIMARY KEY,
  title TEXT NOT NULL,
  client_name TEXT,
  start_date DATE,
  end_date DATE
);

CREATE TABLE cvs (
  id UUID PRIMARY KEY,
  consultant_id UUID NOT NULL REFERENCES consultants(id),
  mission_id UUID NOT NULL REFERENCES missions(id),
  source_doc_path TEXT NOT NULL,
  pdf_path TEXT,
  original_filename TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (consultant_id, mission_id, original_filename)
);

-- Contrainte métier: un consultant peut avoir plusieurs CV, souvent un par mission.
