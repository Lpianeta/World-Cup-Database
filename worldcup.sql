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
    round character varying(30) NOT NULL,
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

INSERT INTO public.games VALUES (65, 2018, 'Final', 407, 406, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 409, 408, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 406, 408, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 407, 409, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 406, 414, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 408, 416, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 409, 418, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 407, 420, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 408, 422, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 416, 424, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 409, 426, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 418, 428, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 406, 430, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 414, 432, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 420, 434, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 407, 436, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 439, 436, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 441, 418, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 436, 441, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 439, 418, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 441, 446, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 436, 409, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 418, 422, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 439, 407, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 418, 454, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 422, 420, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 407, 458, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 439, 460, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 441, 428, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 446, 464, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 436, 424, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 409, 468, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (406, 'Croatia');
INSERT INTO public.teams VALUES (407, 'France');
INSERT INTO public.teams VALUES (408, 'England');
INSERT INTO public.teams VALUES (409, 'Belgium');
INSERT INTO public.teams VALUES (414, 'Russia');
INSERT INTO public.teams VALUES (416, 'Sweden');
INSERT INTO public.teams VALUES (418, 'Brazil');
INSERT INTO public.teams VALUES (420, 'Uruguay');
INSERT INTO public.teams VALUES (422, 'Colombia');
INSERT INTO public.teams VALUES (424, 'Switzerland');
INSERT INTO public.teams VALUES (426, 'Japan');
INSERT INTO public.teams VALUES (428, 'Mexico');
INSERT INTO public.teams VALUES (430, 'Denmark');
INSERT INTO public.teams VALUES (432, 'Spain');
INSERT INTO public.teams VALUES (434, 'Portugal');
INSERT INTO public.teams VALUES (436, 'Argentina');
INSERT INTO public.teams VALUES (439, 'Germany');
INSERT INTO public.teams VALUES (441, 'Netherlands');
INSERT INTO public.teams VALUES (446, 'Costa Rica');
INSERT INTO public.teams VALUES (454, 'Chile');
INSERT INTO public.teams VALUES (458, 'Nigeria');
INSERT INTO public.teams VALUES (460, 'Algeria');
INSERT INTO public.teams VALUES (464, 'Greece');
INSERT INTO public.teams VALUES (468, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 469, true);


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

