--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    description text,
    age_million_years numeric(8,2),
    has_life boolean,
    number_of_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id OWNER TO freecodecamp;

--
-- Name: moon_moon_id; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id OWNER TO freecodecamp;

--
-- Name: planet_planet_id; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id OWNER TO freecodecamp;

--
-- Name: star_star_id; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'one', 'number one');
INSERT INTO public.fifth_table VALUES (2, 'two', 'number two');
INSERT INTO public.fifth_table VALUES (3, 'three', 'number three');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 23455, 'This is a beautiful galaxy', 23.00, true, 8888);
INSERT INTO public.galaxy VALUES (2, 'Via lactea', 255, 'This galaxy is unknown for everyone', 234.00, false, 666);
INSERT INTO public.galaxy VALUES (3, 'chocolate way', 344, ' lot of chocolate there', 9384.00, true, 4332);
INSERT INTO public.galaxy VALUES (4, 'Vanilla way', 1223, 'no description available for this', 457.00, true, 4123);
INSERT INTO public.galaxy VALUES (5, 'kolob way', 777, 'Where i will live', 12222.00, true, 100);
INSERT INTO public.galaxy VALUES (6, 'Mazatlan way', 3444, 'Hot as hell', 3.00, true, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon12', 'moon and moon  desc', true, 1);
INSERT INTO public.moon VALUES (2, 'moon11', 'more hot', true, 2);
INSERT INTO public.moon VALUES (3, 'moon10', 'Its not super hot', false, 3);
INSERT INTO public.moon VALUES (4, 'moon9', 'insert description', true, 4);
INSERT INTO public.moon VALUES (5, 'moon6', 'this sun is not invented yet', false, 5);
INSERT INTO public.moon VALUES (6, 'moon7', 'not created yet', true, 6);
INSERT INTO public.moon VALUES (7, 'moon8', 'moon and moon  desc', true, 1);
INSERT INTO public.moon VALUES (8, 'moon5', 'more hot', true, 2);
INSERT INTO public.moon VALUES (9, 'moon4', 'Its not super hot', false, 3);
INSERT INTO public.moon VALUES (10, 'moon3', 'insert description', true, 4);
INSERT INTO public.moon VALUES (11, 'moon2', 'this sun is not invented yet', false, 5);
INSERT INTO public.moon VALUES (12, 'moon1', 'not created yet', true, 6);
INSERT INTO public.moon VALUES (13, 'moon18', 'moon and moon  desc', true, 11);
INSERT INTO public.moon VALUES (14, 'moon17', 'more hot', true, 12);
INSERT INTO public.moon VALUES (15, 'moon16', 'Its not super hot', false, 9);
INSERT INTO public.moon VALUES (16, 'moon15', 'insert description', true, 8);
INSERT INTO public.moon VALUES (17, 'moon14', 'this sun is not invented yet', false, 10);
INSERT INTO public.moon VALUES (18, 'moon13', 'not created yet', true, 6);
INSERT INTO public.moon VALUES (19, 'moon20', 'this sun is not invented yet', false, 5);
INSERT INTO public.moon VALUES (20, 'moon19', 'not created yet', true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet', 'planet 1 desc', true, 1);
INSERT INTO public.planet VALUES (2, 'earth', 'more hot', true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 'Its not super hot', false, 3);
INSERT INTO public.planet VALUES (4, 'planet 4', 'insert description', true, 4);
INSERT INTO public.planet VALUES (5, 'planet 5', 'this sun is not invented yet', false, 5);
INSERT INTO public.planet VALUES (6, 'planet 6', 'not created yet', true, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 'planet 1 desc', true, 1);
INSERT INTO public.planet VALUES (8, 'earth8', 'more hot', true, 2);
INSERT INTO public.planet VALUES (9, 'planet 9', 'Its not super hot', false, 3);
INSERT INTO public.planet VALUES (10, 'planet10', 'insert description', true, 4);
INSERT INTO public.planet VALUES (11, 'planet 11', 'this sun is not invented yet', false, 5);
INSERT INTO public.planet VALUES (12, 'planet 12', 'not created yet', true, 6);
INSERT INTO public.planet VALUES (13, 'moon12', 'moon and moon  desc', true, 1);
INSERT INTO public.planet VALUES (14, 'moon11', 'more hot', true, 2);
INSERT INTO public.planet VALUES (15, 'moon10', 'Its not super hot', false, 3);
INSERT INTO public.planet VALUES (16, 'moon9', 'insert description', true, 4);
INSERT INTO public.planet VALUES (17, 'moon6', 'this sun is not invented yet', false, 5);
INSERT INTO public.planet VALUES (18, 'moon7', 'not created yet', true, 6);
INSERT INTO public.planet VALUES (19, 'moon8', 'moon and moon  desc', true, 1);
INSERT INTO public.planet VALUES (20, 'moon5', 'more hot', true, 2);
INSERT INTO public.planet VALUES (21, 'moon4', 'Its not super hot', false, 3);
INSERT INTO public.planet VALUES (22, 'moon3', 'insert description', true, 4);
INSERT INTO public.planet VALUES (23, 'moon2', 'this sun is not invented yet', false, 5);
INSERT INTO public.planet VALUES (24, 'moon1', 'not created yet', true, 6);
INSERT INTO public.planet VALUES (25, 'moon18', 'moon and moon  desc', true, 1);
INSERT INTO public.planet VALUES (26, 'moon17', 'more hot', true, 2);
INSERT INTO public.planet VALUES (27, 'moon16', 'Its not super hot', false, 3);
INSERT INTO public.planet VALUES (28, 'moon15', 'insert description', true, 4);
INSERT INTO public.planet VALUES (29, 'moon14', 'this sun is not invented yet', false, 5);
INSERT INTO public.planet VALUES (30, 'moon13', 'not created yet', true, 6);
INSERT INTO public.planet VALUES (31, 'moon20', 'this sun is not invented yet', false, 5);
INSERT INTO public.planet VALUES (32, 'moon19', 'not created yet', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'really hot', false, 1);
INSERT INTO public.star VALUES (2, 'sunsun', 'more hot', false, 2);
INSERT INTO public.star VALUES (3, 'sunsunsun', 'Its not super hot', false, 3);
INSERT INTO public.star VALUES (4, 'asun131', 'insert description', true, 4);
INSERT INTO public.star VALUES (5, 'bsun239', 'this sun is not invented yet', false, 5);
INSERT INTO public.star VALUES (6, 'Csun', 'not created yet', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id', 20, true);


--
-- Name: planet_planet_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id', 32, true);


--
-- Name: star_star_id; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id', 6, true);


--
-- Name: fifth_table fifth_table_fifth_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_fifth_table_id_key UNIQUE (fifth_table_id);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

