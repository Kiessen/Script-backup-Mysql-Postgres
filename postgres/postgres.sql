--
-- PostgreSQL database dump
--

-- Dumped from database version 11.20
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: tbl_language; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.tbl_language (
    id integer NOT NULL,
    lname character(50),
    lcode character(50)
);


ALTER TABLE public.tbl_language OWNER TO root;

--
-- Data for Name: tbl_language; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.tbl_language (id, lname, lcode) FROM stdin;
1	jawa                                              	j                                                 
2	sunda                                             	s                                                 
3	ngapak                                            	n                                                 
\.


--
-- Name: tbl_language tbl_language_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tbl_language
    ADD CONSTRAINT tbl_language_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

