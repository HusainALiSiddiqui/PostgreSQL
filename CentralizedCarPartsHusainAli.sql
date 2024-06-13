--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2024-01-17 22:55:37

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

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16492)
-- Name: car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car (
    car_id character varying(10) NOT NULL,
    brand_name character varying(100),
    model character varying(50)
);


ALTER TABLE public.car OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16487)
-- Name: manufacturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturers (
    manufacturer_id character varying(6) NOT NULL,
    name character varying(100)
);


ALTER TABLE public.manufacturers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16521)
-- Name: part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.part (
    part_id character varying(10) NOT NULL,
    name character varying(100),
    type character varying(255)
);


ALTER TABLE public.part OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16497)
-- Name: part_compatibility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.part_compatibility (
    part_id character varying(10) NOT NULL,
    car_id character varying(10) NOT NULL,
    notes character varying(255)
);


ALTER TABLE public.part_compatibility OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16502)
-- Name: part_manufacturing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.part_manufacturing (
    part_id character varying(10) NOT NULL,
    manufacturer_id character varying(6) NOT NULL
);


ALTER TABLE public.part_manufacturing OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16546)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id character varying(6) NOT NULL,
    name character varying(100),
    role character varying(30),
    dob date
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 4813 (class 0 OID 16492)
-- Dependencies: 216
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car (car_id, brand_name, model) FROM stdin;
D1001	Focus	Ford
D1002	BMW	Skoda
D1003	Toyota	Land Cruiser
D1004	Toyota	Aqua
D1005	Toyota	Camry
D1006	Toyota	Corolla
D1007	BMW	M4
D1008	BMW	M3
D1009	BMW	i3
D2001	BMW	XM
D2002	Tesla	Cybertruck
D2003	Tesla	Model 3
D2004	Bentley	Arnage
D2005	Bentley	Azure
D2006	Bentley	Concept
D2007	Lotus	3-Eleven
D2008	Lotus	Emira
D2009	Lotus	Evija
\.


--
-- TOC entry 4812 (class 0 OID 16487)
-- Dependencies: 215
-- Data for Name: manufacturers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturers (manufacturer_id, name) FROM stdin;
A1	Toyota
B1	Ford
A2	Hondaa
A3	BMW
A4	Audi
A5	Aston martin
A6	Porschea
\.


--
-- TOC entry 4816 (class 0 OID 16521)
-- Dependencies: 219
-- Data for Name: part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.part (part_id, name, type) FROM stdin;
Z1	Air Filter	Engine
Z2	Headlight	Light
Z3	Axle Module	Axle
Z4	Front Axle Module	Axle
Z5	Rear Axle	Axle
Z6	Gps	Car Navigation System
Z7	Car radio	Entertainment
Z8	Speaker 	Entertainment
Z9	Telivision 	Entertainment
X1	Key set 	Security
X2	Keyless entry system 	Security
X3	Immobilizer 	Security
X4	Fuel Pump motor 	Motor
X5	Power steering motor 	Motor
X6	ABS Motor 	Motor
X7	Sunroof motor 	Motor
X8	Power seater Motor 	Motor
\.


--
-- TOC entry 4814 (class 0 OID 16497)
-- Dependencies: 217
-- Data for Name: part_compatibility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.part_compatibility (part_id, car_id, notes) FROM stdin;
Z1	D1001	Compatible with Ford Focus models from 2015-2020
Z2	D1001	Compatible with Ford Focus models from 2020-2023
Z3	D1002	Compatible with Skoda BMW models from 2001-2009
Z4	D1003	Compatible with Land Cruiser Toyota models from 2018-2005
Z5	D1006	Compatible with Corolla Toyota models from 2020-2023
Z1	D2003	Compatible with Model 3 Tesla models from 2014-2024
Z1	D2004	Compatible with Arnage Bentley models from 2013-2014
Z1	D2005	Compatible with Azure Bentley models from 2011-2020
X3	D1007	Compatible with M4 BMW models from 2011-2017
X4	D2006	Compatible with Concept Bentley models from 2019-2021
X1	D1004	Compatible with Aqua Toyota models from 2023-2024
\.


--
-- TOC entry 4815 (class 0 OID 16502)
-- Dependencies: 218
-- Data for Name: part_manufacturing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.part_manufacturing (part_id, manufacturer_id) FROM stdin;
Z1	A1
Z2	A1
Z1	A3
Z3	A4
Z4	A1
Z5	A5
Z6	A5
X1	A5
X2	A5
X3	A5
Z4	A5
Z9	A3
Z8	A3
X8	A3
X7	A3
\.


--
-- TOC entry 4817 (class 0 OID 16546)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, name, role, dob) FROM stdin;
B00001	Husain Ali	DBA	2005-05-01
B00002	Qousain Ali	DBA	2001-12-25
B00003	Fawwaz alkarmy	End-User	2001-05-08
B00004	Raghad Ashour	End-User	1999-04-20
B00005	Alim Ismael	End-User	2000-01-01
B00006	Ali basit	End-User	1993-11-12
B00007	Nekka Dera	End-User	2003-04-06
B00008	Abdul Ghani	End-User	2006-04-10
B00009	Jasmine Bejaoui	End-User	1995-04-25
B00011	Hassan Ali	End-User	2009-02-18
B00012	Annaa Japer	End-User	2001-08-20
B00013	Emily Burton	End-User	1989-01-15
\.


--
-- TOC entry 4656 (class 2606 OID 16496)
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);


--
-- TOC entry 4654 (class 2606 OID 16491)
-- Name: manufacturers manufacturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers
    ADD CONSTRAINT manufacturers_pkey PRIMARY KEY (manufacturer_id);


--
-- TOC entry 4658 (class 2606 OID 16501)
-- Name: part_compatibility part_compatibility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_compatibility
    ADD CONSTRAINT part_compatibility_pkey PRIMARY KEY (part_id, car_id);


--
-- TOC entry 4660 (class 2606 OID 16506)
-- Name: part_manufacturing part_manufacturing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_manufacturing
    ADD CONSTRAINT part_manufacturing_pkey PRIMARY KEY (part_id, manufacturer_id);


--
-- TOC entry 4662 (class 2606 OID 16525)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_id);


--
-- TOC entry 4664 (class 2606 OID 16550)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4665 (class 2606 OID 16531)
-- Name: part_compatibility part_compatibility_car_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_compatibility
    ADD CONSTRAINT part_compatibility_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);


--
-- TOC entry 4666 (class 2606 OID 16526)
-- Name: part_compatibility part_compatibility_part_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_compatibility
    ADD CONSTRAINT part_compatibility_part_id_fkey FOREIGN KEY (part_id) REFERENCES public.part(part_id);


--
-- TOC entry 4667 (class 2606 OID 16541)
-- Name: part_manufacturing part_manufacturing_manufacturer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_manufacturing
    ADD CONSTRAINT part_manufacturing_manufacturer_id_fkey FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturers(manufacturer_id);


--
-- TOC entry 4668 (class 2606 OID 16536)
-- Name: part_manufacturing part_manufacturing_part_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_manufacturing
    ADD CONSTRAINT part_manufacturing_part_id_fkey FOREIGN KEY (part_id) REFERENCES public.part(part_id);


-- Completed on 2024-01-17 22:55:37

--
-- PostgreSQL database dump complete
--

