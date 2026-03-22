--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(30) NOT NULL,
    no_of_planets integer NOT NULL,
    no_of_star integer NOT NULL,
    living boolean,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(30) NOT NULL,
    radius numeric NOT NULL,
    scientific_name text NOT NULL,
    planet_id character varying(30),
    name character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(30) NOT NULL,
    radius numeric NOT NULL,
    scientific_name text NOT NULL,
    name character varying(30),
    living boolean NOT NULL,
    star_id character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(30) NOT NULL,
    radius numeric NOT NULL,
    scientific_name text NOT NULL,
    galaxy_id character varying(30),
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id character varying(30) NOT NULL,
    no_of_planets integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('G1', 123, 4213, true, 'Milky way');
INSERT INTO public.galaxy VALUES ('G2', 412, 1231, false, 'VOAGNFOD');
INSERT INTO public.galaxy VALUES ('G3', 423, 12321, false, 'UNKNOWN');
INSERT INTO public.galaxy VALUES ('G4', 134, 3421, false, 'VAOFDS');
INSERT INTO public.galaxy VALUES ('G5', 42, 165, false, 'GEOWF');
INSERT INTO public.galaxy VALUES ('G6', 523, 1652, false, 'gdasfd');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 1737, 'Luna', 'p1', 'Moon');
INSERT INTO public.moon VALUES ('m2', 1000, 'Phobos', 'p2', 'Phobos');
INSERT INTO public.moon VALUES ('m3', 600, 'Deimos', 'p2', 'Deimos');
INSERT INTO public.moon VALUES ('m4', 1821, 'Io', 'p3', 'Io');
INSERT INTO public.moon VALUES ('m5', 1560, 'Europa', 'p3', 'Europa');
INSERT INTO public.moon VALUES ('m6', 2634, 'Ganymede', 'p3', 'Ganymede');
INSERT INTO public.moon VALUES ('m7', 2410, 'Callisto', 'p3', 'Callisto');
INSERT INTO public.moon VALUES ('m8', 2575, 'Titan', 'p4', 'Titan');
INSERT INTO public.moon VALUES ('m9', 531, 'Enceladus', 'p4', 'Enceladus');
INSERT INTO public.moon VALUES ('m10', 764, 'Mimas', 'p4', 'Mimas');
INSERT INTO public.moon VALUES ('m11', 561, 'Ariel', 'p5', 'Ariel');
INSERT INTO public.moon VALUES ('m12', 584, 'Umbriel', 'p5', 'Umbriel');
INSERT INTO public.moon VALUES ('m13', 788, 'Titania', 'p5', 'Titania');
INSERT INTO public.moon VALUES ('m14', 761, 'Oberon', 'p5', 'Oberon');
INSERT INTO public.moon VALUES ('m15', 1353, 'Triton', 'p6', 'Triton');
INSERT INTO public.moon VALUES ('m16', 170, 'Nereid', 'p6', 'Nereid');
INSERT INTO public.moon VALUES ('m17', 500, 'ExoMoon1', 'p7', 'EM1');
INSERT INTO public.moon VALUES ('m18', 650, 'ExoMoon2', 'p8', 'EM2');
INSERT INTO public.moon VALUES ('m19', 720, 'ExoMoon3', 'p9', 'EM3');
INSERT INTO public.moon VALUES ('m20', 800, 'ExoMoon4', 'p10', 'EM4');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('p1', 6371, 'Earth', 'Earth', true, 'S1');
INSERT INTO public.planet VALUES ('p2', 3390, 'Mars', 'Mars', false, 'S1');
INSERT INTO public.planet VALUES ('p3', 69911, 'Jupiter', 'Jupiter', false, 'S1');
INSERT INTO public.planet VALUES ('p4', 58232, 'Saturn', 'Saturn', false, 'S1');
INSERT INTO public.planet VALUES ('p5', 25362, 'Uranus', 'Uranus', false, 'S1');
INSERT INTO public.planet VALUES ('p6', 24622, 'Neptune', 'Neptune', false, 'S1');
INSERT INTO public.planet VALUES ('p7', 1737, 'MoonLike1', 'ML1', false, 'S1');
INSERT INTO public.planet VALUES ('p8', 3000, 'Exo1', 'Exo1', false, 'S1');
INSERT INTO public.planet VALUES ('p9', 4500, 'Exo2', 'Exo2', false, 'S1');
INSERT INTO public.planet VALUES ('p10', 5200, 'Exo3', 'Exo3', false, 'S1');
INSERT INTO public.planet VALUES ('p11', 6100, 'Exo4', 'Exo4', true, 'S1');
INSERT INTO public.planet VALUES ('p12', 7200, 'Exo5', 'Exo5', false, 'S1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('S1', 234.234, 'FWFVS', 'G4', 'GEMINI');
INSERT INTO public.star VALUES ('S2', 342.23, 'SVIEN', 'G1', 'VOAGFEWFOD');
INSERT INTO public.star VALUES ('S3', 423.21, 'FEWF', 'G3', 'UNWN');
INSERT INTO public.star VALUES ('S4', 342, 'FAOS', 'G5', 'RWQEF');
INSERT INTO public.star VALUES ('S5', 42.5, 'DSIANF', 'G2', 'GAIDN');
INSERT INTO public.star VALUES ('S6', 542.4, 'FAO', 'G2', 'REOGN');


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('sun1', 8, 'Sun');
INSERT INTO public.sun VALUES ('sun2', 5, 'AlphaCentauriA');
INSERT INTO public.sun VALUES ('sun3', 7, 'Kepler-452');


--
-- Name: galaxy galaxy_no_of_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_no_of_planets_key UNIQUE (no_of_planets);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_scientific_name_key UNIQUE (scientific_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_scientific_name_key UNIQUE (scientific_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_scientific_name_key UNIQUE (scientific_name);


--
-- Name: sun sun_no_of_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_no_of_planets_key UNIQUE (no_of_planets);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

