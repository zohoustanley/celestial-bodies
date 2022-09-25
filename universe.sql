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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    surface integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(10,2),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
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
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    surface integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(10,2),
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    surface integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(10,2),
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer NOT NULL,
    surface integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(10,2),
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: summary; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.summary (
    summary_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    unique_key character varying(30)
);


ALTER TABLE public.summary OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2600000, 234000000, false, 4576767.87, 'Lorem ipsum dolor');
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 3600000, 234000000, true, 4576767.87, 'Lorem ipsum dolor');
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 4600000, 234000000, false, 4576767.87, 'Lorem ipsum dolor');
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor');
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 5700000, 234000000, true, 456767.87, 'Lorem ipsum dolor');
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 6700000, 234000000, false, 456767.87, 'Lorem ipsum dolor');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'moon 1', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (4, 'moon 2', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 3);
INSERT INTO public.moon VALUES (5, 'moon 4', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (6, 'moon 3', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (7, 'moon 5', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (8, 'moon 6', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (9, 'moon 7', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (10, 'moon 8', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (11, 'moon 9', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (12, 'moon 10', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (13, 'moon 11', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (14, 'moon 12', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (15, 'moon 13', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (16, 'moon 14', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (17, 'moon 15', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (18, 'moon 16', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (19, 'moon 17', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (20, 'moon 18', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 5);
INSERT INTO public.moon VALUES (21, 'moon 19', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.moon VALUES (22, 'moon 20', 230000, 450000, false, 75755.99, 'ipsum factus brrrr', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.planet VALUES (3, 'planet 2', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.planet VALUES (4, 'planet 3', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.planet VALUES (5, 'planet 4', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.planet VALUES (6, 'planet 5', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 2);
INSERT INTO public.planet VALUES (7, 'planet 6', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 2);
INSERT INTO public.planet VALUES (8, 'planet 7', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 2);
INSERT INTO public.planet VALUES (9, 'planet 8', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 2);
INSERT INTO public.planet VALUES (10, 'planet 9', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 3);
INSERT INTO public.planet VALUES (11, 'planet 10', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 4);
INSERT INTO public.planet VALUES (12, 'planet 11', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 3);
INSERT INTO public.planet VALUES (13, 'planet 12', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 3);
INSERT INTO public.planet VALUES (14, 'planet 13', 4700000, 234000000, true, 456767.87, 'Lorem ipsum dolor', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 1700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 1);
INSERT INTO public.star VALUES (2, 'star 2', 2700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 2);
INSERT INTO public.star VALUES (3, 'star 3', 3700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 3);
INSERT INTO public.star VALUES (4, 'star 4', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 4);
INSERT INTO public.star VALUES (5, 'star 5', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 5);
INSERT INTO public.star VALUES (6, 'star 6', 4700000, 234000000, false, 456767.87, 'Lorem ipsum dolor', 6);


--
-- Data for Name: summary; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.summary VALUES (1, 'Sum 1', 'lorem has ipsum', 'sm1');
INSERT INTO public.summary VALUES (2, 'Sum 2', 'lorem has ipsum', 'sm2');
INSERT INTO public.summary VALUES (3, 'Sum 3', 'lorem has ipsum', 'sm3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: summary summary_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_pkey PRIMARY KEY (summary_id);


--
-- Name: summary summary_unique_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_unique_key_key UNIQUE (unique_key);


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

