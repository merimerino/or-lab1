PGDMP         *            	    z           Licensed-horses-CRO    15.0    15.0     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24600    Licensed-horses-CRO    DATABASE     ?   CREATE DATABASE "Licensed-horses-CRO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Croatian_Croatia.1250';
 %   DROP DATABASE "Licensed-horses-CRO";
                postgres    false            ?            1259    32768    Horse    TABLE     Q  CREATE TABLE public."Horse" (
    id_horse integer NOT NULL,
    horse_name character varying,
    father character varying,
    mothers_father character varying,
    year_of_birth integer,
    country_of_birth character varying,
    gender character varying,
    breed character varying,
    tournament boolean,
    id_owner integer
);
    DROP TABLE public."Horse";
       public         heap    postgres    false            ?            1259    32775    Owner    TABLE     ?   CREATE TABLE public."Owner" (
    id_owner integer NOT NULL,
    owner_name character varying,
    owner_surname character varying
);
    DROP TABLE public."Owner";
       public         heap    postgres    false            ?          0    32768    Horse 
   TABLE DATA           ?   COPY public."Horse" (id_horse, horse_name, father, mothers_father, year_of_birth, country_of_birth, gender, breed, tournament, id_owner) FROM stdin;
    public          postgres    false    214   B       ?          0    32775    Owner 
   TABLE DATA           F   COPY public."Owner" (id_owner, owner_name, owner_surname) FROM stdin;
    public          postgres    false    215   _       i           2606    32774    Horse id_horse 
   CONSTRAINT     T   ALTER TABLE ONLY public."Horse"
    ADD CONSTRAINT id_horse PRIMARY KEY (id_horse);
 :   ALTER TABLE ONLY public."Horse" DROP CONSTRAINT id_horse;
       public            postgres    false    214            k           2606    32781    Owner id_owner 
   CONSTRAINT     T   ALTER TABLE ONLY public."Owner"
    ADD CONSTRAINT id_owner PRIMARY KEY (id_owner);
 :   ALTER TABLE ONLY public."Owner" DROP CONSTRAINT id_owner;
       public            postgres    false    215            l           2606    32782    Horse Horse_id_owner_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Horse"
    ADD CONSTRAINT "Horse_id_owner_fkey" FOREIGN KEY (id_owner) REFERENCES public."Owner"(id_owner) NOT VALID;
 G   ALTER TABLE ONLY public."Horse" DROP CONSTRAINT "Horse_id_owner_fkey";
       public          postgres    false    215    3179    214            ?      x?????? ? ?      ?      x?????? ? ?     