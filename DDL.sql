-- Table: public.admission

-- DROP TABLE public.admission;

CREATE TABLE public.admission
(
    admins_id integer NOT NULL,
    initial_admission text COLLATE pg_catalog."default",
    CONSTRAINT admission_pkey PRIMARY KEY (admins_id)
)

TABLESPACE pg_default;

ALTER TABLE public.admission
    OWNER to postgres;

-- Table: public.complication

-- DROP TABLE public.complication;

CREATE TABLE public.complication
(
    complication_id integer NOT NULL,
    complication_risk text COLLATE pg_catalog."default",
    CONSTRAINT complication_pkey PRIMARY KEY (complication_id)
)

TABLESPACE pg_default;

ALTER TABLE public.complication
    OWNER to postgres;

-- Table: public.job

-- DROP TABLE public.job;

CREATE TABLE public.job
(
    job_id integer NOT NULL,
    job_title text COLLATE pg_catalog."default",
    CONSTRAINT job_pkey PRIMARY KEY (job_id)
)

TABLESPACE pg_default;

ALTER TABLE public.job
    OWNER to postgres;

-- Table: public.location

-- DROP TABLE public.location;

CREATE TABLE public.location
(
    location_id integer NOT NULL,
    zip integer,
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    county text COLLATE pg_catalog."default",
    CONSTRAINT location_pkey PRIMARY KEY (location_id)
)

TABLESPACE pg_default;

ALTER TABLE public.location
    OWNER to postgres;

-- Table: public.patient

-- DROP TABLE public.patient;

CREATE TABLE public.patient
(
    patient_id text COLLATE pg_catalog."default" NOT NULL,
    lat numeric,
    lng numeric,
    population integer,
    children integer,
    age integer,
    income numeric,
    marital text COLLATE pg_catalog."default",
    readmis text COLLATE pg_catalog."default",
    gender text COLLATE pg_catalog."default",
    initial_days numeric,
    totalcharge numeric,
    additional_charges numeric,
    vitd_levels numeric,
    doc_visits integer,
    full_meals integer,
    vitd_supp integer,
    soft_drink text COLLATE pg_catalog."default",
    hignblood text COLLATE pg_catalog."default",
    stroke text COLLATE pg_catalog."default",
    job_id integer,
    compl_id integer,
    admis_id integer,
    location_id integer,
    CONSTRAINT patient_pkey PRIMARY KEY (patient_id),
    CONSTRAINT patient_admis_id_fkey FOREIGN KEY (admis_id)
        REFERENCES public.admission (admins_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT patient_compl_id_fkey FOREIGN KEY (compl_id)
        REFERENCES public.complication (complication_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT patient_job_id_fkey FOREIGN KEY (job_id)
        REFERENCES public.job (job_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT patient_location_id_fkey FOREIGN KEY (location_id)
        REFERENCES public.location (location_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.patient
    OWNER to postgres;


-- Table: public.servicesaddon

-- DROP TABLE public.servicesaddon;

CREATE TABLE public.servicesaddon
(
    patient_id text COLLATE pg_catalog."default" NOT NULL,
    services text COLLATE pg_catalog."default",
    overweight text COLLATE pg_catalog."default",
    arthritis text COLLATE pg_catalog."default",
    diabetes text COLLATE pg_catalog."default",
    hyperlipidemia text COLLATE pg_catalog."default",
    backpain text COLLATE pg_catalog."default",
    anxiety text COLLATE pg_catalog."default",
    allergic_rhinitis text COLLATE pg_catalog."default",
    reflux_esophagitis text COLLATE pg_catalog."default",
    asthma text COLLATE pg_catalog."default",
    CONSTRAINT servicesaddon_pkey PRIMARY KEY (patient_id)
)

TABLESPACE pg_default;

ALTER TABLE public.servicesaddon
    OWNER to postgres;