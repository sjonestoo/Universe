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
    name character varying(15),
    shape character varying(10),
    observable_without_telescope boolean,
    age numeric NOT NULL,
    blue_shift_speed integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: heros; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.heros (
    name character varying(15),
    planet character varying,
    age integer,
    has_superpowers boolean NOT NULL,
    male_or_female text,
    heros_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.heros OWNER TO freecodecamp;

--
-- Name: heros_heros_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.heros_heros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.heros_heros_id_seq OWNER TO freecodecamp;

--
-- Name: heros_heros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.heros_heros_id_seq OWNED BY public.heros.heros_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(25),
    size integer NOT NULL,
    planet_of_orbit text,
    color text,
    orbital_time numeric NOT NULL,
    moon_id integer NOT NULL
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
    name character varying,
    color text,
    has_rings boolean NOT NULL,
    galaxy character varying(15),
    habitable boolean NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moon_id_seq OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moon_id_seq OWNED BY public.planet.moon_id;


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
    name character varying(30),
    color character varying,
    size integer NOT NULL,
    galaxy text,
    age numeric NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: heros heros_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.heros ALTER COLUMN heros_id SET DEFAULT nextval('public.heros_heros_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN moon_id SET DEFAULT nextval('public.planet_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('GX1', 'disc', false, 20.3, 6, 1);
INSERT INTO public.galaxy VALUES ('GX2', 'spiral', true, 5.7, 1, 2);
INSERT INTO public.galaxy VALUES ('GX3', 'spiral', false, 34.9, 20, 3);
INSERT INTO public.galaxy VALUES ('GX4', 'disc', true, 15.1, 8, 4);
INSERT INTO public.galaxy VALUES ('GX5', 'disc', false, 23.8, 14, 5);
INSERT INTO public.galaxy VALUES ('GX6', 'spiral', false, 12.4, 2, 6);


--
-- Data for Name: heros; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.heros VALUES ('SuperMark', 'PlanetF', 35, true, 'male', 1, NULL);
INSERT INTO public.heros VALUES ('SuperSusan', 'PlanetF', 70, true, 'female', 2, NULL);
INSERT INTO public.heros VALUES ('Anrox', 'PlanetL', 259, false, 'female', 3, NULL);
INSERT INTO public.heros VALUES ('Rewhon', 'PlanetA', 3, true, 'male', 4, NULL);
INSERT INTO public.heros VALUES ('Delthro', 'PlanetI', 153, false, 'N/A', 5, NULL);
INSERT INTO public.heros VALUES ('Alvizador', 'PlanetC', 46, false, 'male', 6, NULL);
INSERT INTO public.heros VALUES ('Phez', 'PlanetG', 1920, true, 'female', 7, NULL);
INSERT INTO public.heros VALUES ('Krez', 'PlanetG', 1920, true, 'male', 8, NULL);
INSERT INTO public.heros VALUES ('M3QR9', 'PlanetB', 87, false, 'Unknown', 9, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('M1', 1, 'PlanetA', 'Grey', 1.3, 1);
INSERT INTO public.moon VALUES ('M2', 3, 'PlanetA', 'Blue', 1, 2);
INSERT INTO public.moon VALUES ('M4', 5, 'PlanetB', 'Red', 4.3, 3);
INSERT INTO public.moon VALUES ('M3', 2, 'PlanetB', 'Green', 9, 4);
INSERT INTO public.moon VALUES ('M5', 5, 'PlanetC', 'Yellow', 10, 5);
INSERT INTO public.moon VALUES ('M6', 2, 'PlanetC', 'Yellow', 10, 6);
INSERT INTO public.moon VALUES ('M7', 2, 'PlanetD', 'Orange', 3.89, 7);
INSERT INTO public.moon VALUES ('M8', 4, 'PlanetD', 'Purple', 3.4, 8);
INSERT INTO public.moon VALUES ('M9', 5, 'PlanetE', 'Brown', 10, 9);
INSERT INTO public.moon VALUES ('M10', 1, 'PlanetF', 'Green', 2.2, 10);
INSERT INTO public.moon VALUES ('M11', 4, 'PlanetF', 'Red', 3, 11);
INSERT INTO public.moon VALUES ('M12', 2, 'PlanetG', 'Grey', 7.6, 12);
INSERT INTO public.moon VALUES ('M13', 6, 'PlanetH', 'Blue', 5.2, 13);
INSERT INTO public.moon VALUES ('M14', 6, 'PlanetG', 'Yellow', 8.2, 14);
INSERT INTO public.moon VALUES ('M15', 1, 'PlanetI', 'Orange', 1.3, 15);
INSERT INTO public.moon VALUES ('M16', 3, 'PlanetJ', 'Brown', 2.56, 16);
INSERT INTO public.moon VALUES ('M17', 2, 'PlanetK', 'Purple', 10.2, 17);
INSERT INTO public.moon VALUES ('M18', 3, 'PlanetK', 'Pink', 12.5, 18);
INSERT INTO public.moon VALUES ('M19', 5, 'PlanetL', 'Grey', 6, 19);
INSERT INTO public.moon VALUES ('M20', 2, 'PlanetL', 'Black', 4, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('PlanetA', 'Green', false, 'GX1', true, 1, 1);
INSERT INTO public.planet VALUES ('PlanetB', 'Blue', false, 'GX1', false, 2, 2);
INSERT INTO public.planet VALUES ('PlanetC', 'Purple', true, 'GX2', false, 3, 3);
INSERT INTO public.planet VALUES ('PlanetD', 'Orange', true, 'GX2', true, 4, 4);
INSERT INTO public.planet VALUES ('PlanetE', 'Yellow', false, 'GX3', false, 5, 5);
INSERT INTO public.planet VALUES ('PlanetF', 'Brown', true, 'GX3', true, 6, 6);
INSERT INTO public.planet VALUES ('PlanetG', 'Green', true, 'GX4', false, 7, 7);
INSERT INTO public.planet VALUES ('PlanetH', 'Red', false, 'GX4', false, 8, 8);
INSERT INTO public.planet VALUES ('PlanetI', 'Orange', true, 'GX5', false, 9, 9);
INSERT INTO public.planet VALUES ('PlanetJ', 'Mauve', false, 'GX5', true, 10, 10);
INSERT INTO public.planet VALUES ('PlanetK', 'Pink', true, 'GX6', true, 11, 11);
INSERT INTO public.planet VALUES ('PlanetL', 'Purple', false, 'GX6', true, 12, 12);
INSERT INTO public.planet VALUES ('PlanetM', 'Grey', true, 'GX1', true, 13, 13);
INSERT INTO public.planet VALUES ('PlanetN', 'Blue', false, 'GX3', true, 14, 14);
INSERT INTO public.planet VALUES ('PlanetO', 'Yellow', false, 'GX3', false, 15, 15);
INSERT INTO public.planet VALUES ('PlanetP', 'Brown', false, 'GX2', false, 16, 16);
INSERT INTO public.planet VALUES ('PlanetQ', 'Green', true, 'GX5', false, 17, 17);
INSERT INTO public.planet VALUES ('PlanetR', 'Red', false, 'GX1', true, 18, 18);
INSERT INTO public.planet VALUES ('PlanetS', 'White', false, 'GX4', true, 19, 19);
INSERT INTO public.planet VALUES ('PlanetU', 'Red', true, 'GX2', true, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpha', 'Blue', 1, 'GX1', 12.8, 1, 1);
INSERT INTO public.star VALUES ('Beta', 'White', 5, 'GX2', 0.34, 2, 2);
INSERT INTO public.star VALUES ('Gamma', 'Red', 10, 'GX3', 14.7, 3, 3);
INSERT INTO public.star VALUES ('Delta', 'White', 3, 'GX4', 6.4, 4, 4);
INSERT INTO public.star VALUES ('Epsilon', 'Blue', 2, 'GX5', 11.2, 5, 5);
INSERT INTO public.star VALUES ('Zeta', 'Red', 4, 'GX6', 3.7, 6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: heros_heros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.heros_heros_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_blue_shift_speed_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_blue_shift_speed_key UNIQUE (blue_shift_speed);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: heros heros_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.heros
    ADD CONSTRAINT heros_name_key UNIQUE (name);


--
-- Name: heros heros_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.heros
    ADD CONSTRAINT heros_pkey PRIMARY KEY (heros_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_key UNIQUE (galaxy);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: heros heros_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.heros
    ADD CONSTRAINT heros_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.planet(moon_id);


--
-- Name: planet planet_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_fkey FOREIGN KEY (galaxy) REFERENCES public.star(galaxy);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

