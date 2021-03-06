toc.dat                                                                                             0000600 0004000 0002000 00000005006 13711547124 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       0                    x           vidly    12.3    12.3     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         +           1262    16698    vidly    DATABASE     ?   CREATE DATABASE vidly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE vidly;
                Bartlomiej.Zawada    false         ?            1259    16743    AspNetUsers    TABLE     ?  CREATE TABLE public."AspNetUsers" (
    "Id" character varying(128) NOT NULL,
    "Email" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEndDateUtc" timestamp without time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "UserName" character varying(256) NOT NULL
);
 !   DROP TABLE public."AspNetUsers";
       public         heap    Bartlomiej.Zawada    false         %          0    16743    AspNetUsers 
   TABLE DATA           ?   COPY public."AspNetUsers" ("Id", "Email", "EmailConfirmed", "PasswordHash", "SecurityStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEndDateUtc", "LockoutEnabled", "AccessFailedCount", "UserName") FROM stdin;
    public          Bartlomiej.Zawada    false    209       2853.dat ?
           2606    16750 !   AspNetUsers PK_public.AspNetUsers 
   CONSTRAINT     e   ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_public.AspNetUsers" PRIMARY KEY ("Id");
 O   ALTER TABLE ONLY public."AspNetUsers" DROP CONSTRAINT "PK_public.AspNetUsers";
       public            Bartlomiej.Zawada    false    209         ?
           1259    16751    AspNetUsers_UserNameIndex    INDEX     b   CREATE UNIQUE INDEX "AspNetUsers_UserNameIndex" ON public."AspNetUsers" USING btree ("UserName");
 /   DROP INDEX public."AspNetUsers_UserNameIndex";
       public            Bartlomiej.Zawada    false    209                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2853.dat                                                                                            0000600 0004000 0002000 00000000603 13711547124 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        18e32c3b-e6c1-4c4e-a1a5-0c803f6b4238	guest@vidly.com	f	AJkYoh7fFkM9lVtoJdBnS7vOhtESqc21TtC2JHaE8g5r32TBwDFeC6/IOPgSGh2FJQ==	b63c0b1a-497b-45ca-b51a-a1052e32482b	\N	f	f	\N	t	0	guest@vidly.com
0f2fe272-9ff3-4cf3-8fd5-bb5257e7fffa	admin@vidly.com	f	AINkU1Vb4veHPQX2VCx2dYQ8N44OgDS59kjdjiKSHNH+vyx90Qi20VP7uqPy2HWksA==	aaec5730-808f-4905-af2a-ef2c521eb079	\N	f	f	\N	t	0	admin@vidly.com
\.


                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000005713 13711547124 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE TABLE public."AspNetUsers" (
    "Id" character varying(128) NOT NULL,
    "Email" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEndDateUtc" timestamp without time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "UserName" character varying(256) NOT NULL
);


ALTER TABLE public."AspNetUsers" OWNER TO "Bartlomiej.Zawada";

--
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: Bartlomiej.Zawada
--

COPY public."AspNetUsers" ("Id", "Email", "EmailConfirmed", "PasswordHash", "SecurityStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEndDateUtc", "LockoutEnabled", "AccessFailedCount", "UserName") FROM stdin;
\.
COPY public."AspNetUsers" ("Id", "Email", "EmailConfirmed", "PasswordHash", "SecurityStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEndDateUtc", "LockoutEnabled", "AccessFailedCount", "UserName") FROM '$$PATH$$/2853.dat';

--
-- Name: AspNetUsers PK_public.AspNetUsers; Type: CONSTRAINT; Schema: public; Owner: Bartlomiej.Zawada
--

ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_public.AspNetUsers" PRIMARY KEY ("Id");


--
-- Name: AspNetUsers_UserNameIndex; Type: INDEX; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE UNIQUE INDEX "AspNetUsers_UserNameIndex" ON public."AspNetUsers" USING btree ("UserName");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     