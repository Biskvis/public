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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (120, 2018, 'Final', 729, 731, 4, 2);
INSERT INTO public.games VALUES (121, 2018, 'Third Place', 730, 732, 2, 0);
INSERT INTO public.games VALUES (122, 2018, 'Semi-Final', 731, 732, 2, 1);
INSERT INTO public.games VALUES (123, 2018, 'Semi-Final', 729, 730, 1, 0);
INSERT INTO public.games VALUES (124, 2018, 'Quarter-Final', 731, 735, 3, 2);
INSERT INTO public.games VALUES (125, 2018, 'Quarter-Final', 732, 733, 2, 0);
INSERT INTO public.games VALUES (126, 2018, 'Quarter-Final', 730, 734, 2, 1);
INSERT INTO public.games VALUES (127, 2018, 'Quarter-Final', 729, 736, 2, 0);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 732, 740, 2, 1);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 733, 742, 1, 0);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 730, 743, 3, 2);
INSERT INTO public.games VALUES (131, 2018, 'Eighth-Final', 734, 744, 2, 0);
INSERT INTO public.games VALUES (132, 2018, 'Eighth-Final', 731, 745, 2, 1);
INSERT INTO public.games VALUES (133, 2018, 'Eighth-Final', 735, 746, 2, 1);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 736, 747, 2, 1);
INSERT INTO public.games VALUES (135, 2018, 'Eighth-Final', 729, 739, 4, 3);
INSERT INTO public.games VALUES (136, 2014, 'Final', 737, 739, 1, 0);
INSERT INTO public.games VALUES (137, 2014, 'Third Place', 738, 734, 3, 0);
INSERT INTO public.games VALUES (138, 2014, 'Semi-Final', 739, 738, 1, 0);
INSERT INTO public.games VALUES (139, 2014, 'Semi-Final', 737, 734, 7, 1);
INSERT INTO public.games VALUES (140, 2014, 'Quarter-Final', 738, 741, 1, 0);
INSERT INTO public.games VALUES (141, 2014, 'Quarter-Final', 739, 730, 1, 0);
INSERT INTO public.games VALUES (142, 2014, 'Quarter-Final', 734, 740, 2, 1);
INSERT INTO public.games VALUES (143, 2014, 'Quarter-Final', 737, 729, 1, 0);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 734, 748, 2, 1);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 740, 736, 2, 0);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 729, 749, 2, 0);
INSERT INTO public.games VALUES (147, 2014, 'Eighth-Final', 737, 750, 2, 1);
INSERT INTO public.games VALUES (148, 2014, 'Eighth-Final', 738, 744, 2, 1);
INSERT INTO public.games VALUES (149, 2014, 'Eighth-Final', 741, 751, 2, 1);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 739, 742, 1, 0);
INSERT INTO public.games VALUES (151, 2014, 'Eighth-Final', 730, 752, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (729, 'France');
INSERT INTO public.teams VALUES (730, 'Belgium');
INSERT INTO public.teams VALUES (731, 'Croatia');
INSERT INTO public.teams VALUES (732, 'England');
INSERT INTO public.teams VALUES (733, 'Sweden');
INSERT INTO public.teams VALUES (734, 'Brazil');
INSERT INTO public.teams VALUES (735, 'Russia');
INSERT INTO public.teams VALUES (736, 'Uruguay');
INSERT INTO public.teams VALUES (737, 'Germany');
INSERT INTO public.teams VALUES (738, 'Netherlands');
INSERT INTO public.teams VALUES (739, 'Argentina');
INSERT INTO public.teams VALUES (740, 'Colombia');
INSERT INTO public.teams VALUES (741, 'Costa Rica');
INSERT INTO public.teams VALUES (742, 'Switzerland');
INSERT INTO public.teams VALUES (743, 'Japan');
INSERT INTO public.teams VALUES (744, 'Mexico');
INSERT INTO public.teams VALUES (745, 'Denmark');
INSERT INTO public.teams VALUES (746, 'Spain');
INSERT INTO public.teams VALUES (747, 'Portugal');
INSERT INTO public.teams VALUES (748, 'Chile');
INSERT INTO public.teams VALUES (749, 'Nigeria');
INSERT INTO public.teams VALUES (750, 'Algeria');
INSERT INTO public.teams VALUES (751, 'Greece');
INSERT INTO public.teams VALUES (752, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 151, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 752, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

