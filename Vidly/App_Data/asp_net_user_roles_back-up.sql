toc.dat                                                                                             0000600 0004000 0002000 00000006532 13711547062 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           x           vidly    12.3    12.3     +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         .           1262    16698    vidly    DATABASE     ?   CREATE DATABASE vidly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE vidly;
                Bartlomiej.Zawada    false         ?            1259    16736    AspNetUserRoles    TABLE     ?   CREATE TABLE public."AspNetUserRoles" (
    "UserId" character varying(128) NOT NULL,
    "RoleId" character varying(128) NOT NULL
);
 %   DROP TABLE public."AspNetUserRoles";
       public         heap    Bartlomiej.Zawada    false         (          0    16736    AspNetUserRoles 
   TABLE DATA           ?   COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
    public          Bartlomiej.Zawada    false    208       2856.dat ?
           2606    16740 )   AspNetUserRoles PK_public.AspNetUserRoles 
   CONSTRAINT     {   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_public.AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");
 W   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "PK_public.AspNetUserRoles";
       public            Bartlomiej.Zawada    false    208    208         ?
           1259    16742    AspNetUserRoles_IX_RoleId    INDEX     ]   CREATE INDEX "AspNetUserRoles_IX_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");
 /   DROP INDEX public."AspNetUserRoles_IX_RoleId";
       public            Bartlomiej.Zawada    false    208         ?
           1259    16741    AspNetUserRoles_IX_UserId    INDEX     ]   CREATE INDEX "AspNetUserRoles_IX_UserId" ON public."AspNetUserRoles" USING btree ("UserId");
 /   DROP INDEX public."AspNetUserRoles_IX_UserId";
       public            Bartlomiej.Zawada    false    208         ?
           2606    16775 C   AspNetUserRoles FK_public.AspNetUserRoles_public.AspNetRoles_RoleId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_public.AspNetUserRoles_public.AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;
 q   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_public.AspNetUserRoles_public.AspNetRoles_RoleId";
       public          Bartlomiej.Zawada    false    208         ?
           2606    16780 C   AspNetUserRoles FK_public.AspNetUserRoles_public.AspNetUsers_UserId    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_public.AspNetUserRoles_public.AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 q   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_public.AspNetUserRoles_public.AspNetUsers_UserId";
       public          Bartlomiej.Zawada    false    208                                                                                                                                                                              2856.dat                                                                                            0000600 0004000 0002000 00000000117 13711547062 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0f2fe272-9ff3-4cf3-8fd5-bb5257e7fffa	f3d4ed54-3267-460a-be61-b931b6a3908d
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000006232 13711547062 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE TABLE public."AspNetUserRoles" (
    "UserId" character varying(128) NOT NULL,
    "RoleId" character varying(128) NOT NULL
);


ALTER TABLE public."AspNetUserRoles" OWNER TO "Bartlomiej.Zawada";

--
-- Data for Name: AspNetUserRoles; Type: TABLE DATA; Schema: public; Owner: Bartlomiej.Zawada
--

COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
\.
COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM '$$PATH$$/2856.dat';

--
-- Name: AspNetUserRoles PK_public.AspNetUserRoles; Type: CONSTRAINT; Schema: public; Owner: Bartlomiej.Zawada
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_public.AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- Name: AspNetUserRoles_IX_RoleId; Type: INDEX; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE INDEX "AspNetUserRoles_IX_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");


--
-- Name: AspNetUserRoles_IX_UserId; Type: INDEX; Schema: public; Owner: Bartlomiej.Zawada
--

CREATE INDEX "AspNetUserRoles_IX_UserId" ON public."AspNetUserRoles" USING btree ("UserId");


--
-- Name: AspNetUserRoles FK_public.AspNetUserRoles_public.AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: Bartlomiej.Zawada
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_public.AspNetUserRoles_public.AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_public.AspNetUserRoles_public.AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: Bartlomiej.Zawada
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_public.AspNetUserRoles_public.AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      