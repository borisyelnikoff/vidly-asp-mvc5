toc.dat                                                                                             0000600 0004000 0002000 00000003725 13711547023 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       +                    x           vidly    12.3    12.3     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         +           1262    16698    vidly    DATABASE     ?   CREATE DATABASE vidly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE vidly;
                Bartlomiej.Zawada    false         ?            1259    16727    AspNetRoles    TABLE     |   CREATE TABLE public."AspNetRoles" (
    "Id" character varying(128) NOT NULL,
    "Name" character varying(256) NOT NULL
);
 !   DROP TABLE public."AspNetRoles";
       public         heap    Bartlomiej.Zawada    false         %          0    16727    AspNetRoles 
   TABLE DATA           5   COPY public."AspNetRoles" ("Id", "Name") FROM stdin;
    public          Bartlomiej.Zawada    false    207       2853.dat ?
           2606    16734 !   AspNetRoles PK_public.AspNetRoles 
   CONSTRAINT     e   ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_public.AspNetRoles" PRIMARY KEY ("Id");
 O   ALTER TABLE ONLY public."AspNetRoles" DROP CONSTRAINT "PK_public.AspNetRoles";
       public            Bartlomiej.Zawada    false    207         ?
           1259    16735    AspNetRoles_RoleNameIndex    INDEX     ^   CREATE UNIQUE INDEX "AspNetRoles_RoleNameIndex" ON public."AspNetRoles" USING btree ("Name");
 /   DROP INDEX public."AspNetRoles_RoleNameIndex";
       public            Bartlomiej.Zawada    false    207                                                   2853.dat                                                                                            0000600 0004000 0002000 00000000072 13711547023 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        f3d4ed54-3267-460a-be61-b931b6a3908d	CanManageMovies
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                      restore.sql                                                                                         0000600 0004000 0002000 00000004343 13711547023 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

DROP DATABASE vidly;
--
-- Name: vidly; Type: DATABASE; Schema: -; Owner: Bartlomiej.Zawada
--

CREATE DATABASE vidly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';


ALTER DATABASE vidly OWNER TO "Bartlomiej.Zawada";

\connect vidly

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
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE TABLE public."AspNetRoles" (
    "Id" character varying(128) NOT NULL,
    "Name" character varying(256) NOT NULL
);


ALTER TABLE public."AspNetRoles" OWNER TO "Bartlomiej.Zawada";

--
-- Data for Name: AspNetRoles; Type: TABLE DATA; Schema: public; Owner: Bartlomiej.Zawada
--

COPY public."AspNetRoles" ("Id", "Name") FROM stdin;
\.
COPY public."AspNetRoles" ("Id", "Name") FROM '$$PATH$$/2853.dat';

--
-- Name: AspNetRoles PK_public.AspNetRoles; Type: CONSTRAINT; Schema: public; Owner: Bartlomiej.Zawada
--

ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_public.AspNetRoles" PRIMARY KEY ("Id");


--
-- Name: AspNetRoles_RoleNameIndex; Type: INDEX; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE UNIQUE INDEX "AspNetRoles_RoleNameIndex" ON public."AspNetRoles" USING btree ("Name");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             