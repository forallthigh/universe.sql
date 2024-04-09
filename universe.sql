--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    galaxy_id integer NOT NULL,
    type character varying(30) NOT NULL,
    size numeric,
    age integer,
    description text,
    has_nebula boolean,
    has_black_hole boolean
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
    name character varying(30),
    planet_id integer NOT NULL,
    age integer NOT NULL,
    size numeric,
    description text,
    is_tidal_locked boolean,
    has_water_ice boolean
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    serial_id_name integer,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    size numeric,
    age integer NOT NULL,
    description text,
    has_atmosphere boolean,
    is_inhabitable boolean
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    type character varying(30) NOT NULL,
    size numeric,
    age integer,
    description text,
    is_main_sequence boolean,
    is_variable_star boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('galaxy1', 1, 'spiral', 300000, 200, 'A galaxy is a huge collection of gas, dust...', true, false);
INSERT INTO public.galaxy VALUES ('galaxy2', 2, 'spiral', 300000, 200, 'A galaxy is a huge collection of gas, dust...', true, false);
INSERT INTO public.galaxy VALUES ('galaxy3', 7, 'spiral', 300000, 200, 'A galaxy is a hge collection ofgas, dust...', true, false);
INSERT INTO public.galaxy VALUES ('galaxy4', 8, 'spiral', 300000, 200, 'A galaxy is a huge collection of gas, dust...', false, true);
INSERT INTO public.galaxy VALUES ('galaxy5', 9, 'spiral', 300000, 200, 'A galaxy is a huge collection of gas, dust...', false, true);
INSERT INTO public.galaxy VALUES ('galaxy6', 10, 'spiral', 300000, 200, 'A galaxy is a huge collection of gas, dust...', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 9, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (2, 'moon2', 9, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (3, 'moon3', 10, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (4, 'moon4', 10, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (5, 'moon5', 10, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (6, 'moon6', 11, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (7, 'moon7', 11, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (8, 'moon8', 12, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (9, 'moon9', 12, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (10, 'moon10', 13, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (11, 'moon11', 13, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (12, 'moon12', 14, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (13, 'moon13', 14, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (14, 'moon14', 15, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (15, 'moon15', 15, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (16, 'moon16', 16, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (17, 'moon17', 16, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (18, 'moon18', 17, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (19, 'moon19', 17, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (20, 'moon20', 18, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (21, 'moon21', 18, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (22, 'moon22', 19, 3, 10000, 'a moon', false, true);
INSERT INTO public.moon VALUES (23, 'moon23', 20, 3, 10000, 'a moon', false, true);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'info1', 1, 'a description');
INSERT INTO public.more_info VALUES (2, 'info2', 2, 'a description');
INSERT INTO public.more_info VALUES (3, 'info3', 3, 'a description');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'planet1', 1, 50000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (10, 'planet2', 2, 50000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (11, 'planet3', 3, 50000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (12, 'planet4', 1, 50000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (13, 'planet5', 2, 50000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (14, 'planet6', 3, 50000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (15, 'planet7', 4, 60000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (16, 'planet8', 4, 60000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (17, 'planet9', 5, 60000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (18, 'planet10', 5, 60000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (19, 'planet11', 6, 60000, 4, 'a planet', true, false);
INSERT INTO public.planet VALUES (20, 'planet12', 6, 60000, 4, 'a planet', true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 'Red Dwarf', 400000, 5, 'stellar', true, false);
INSERT INTO public.star VALUES (2, 'star2', 2, 'Red Dwarf', 400000, 5, 'stellar', true, false);
INSERT INTO public.star VALUES (3, 'star3', 7, 'Blue Supergiant Star', 400000, 5, 'stellar', true, false);
INSERT INTO public.star VALUES (4, 'star4', 8, 'Blue Supergiant Star', 400000, 5, 'stellar', true, false);
INSERT INTO public.star VALUES (5, 'star5', 9, 'Red Supergiant Star', 400000, 5, 'stellar', true, false);
INSERT INTO public.star VALUES (6, 'star6', 10, 'Red Supergiant Star', 400000, 5, 'stellar', true, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_id_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_id_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_id_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

