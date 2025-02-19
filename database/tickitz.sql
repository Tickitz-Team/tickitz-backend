PGDMP     $    -                y            tickitz    13.1    13.1 &    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    65864    tickitz    DATABASE     j   CREATE DATABASE tickitz WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE tickitz;
                postgres    false            �            1259    65865    cinemas    TABLE     n  CREATE TABLE public.cinemas (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    street_number integer NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone,
    logo character varying(255) NOT NULL
);
    DROP TABLE public.cinemas;
       public         heap    postgres    false            �            1259    65871    cinemas_id_seq    SEQUENCE     �   ALTER TABLE public.cinemas ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cinemas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public          postgres    false    200            �            1259    65873    movies    TABLE     �  CREATE TABLE public.movies (
    id integer NOT NULL,
    category character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    release_date date NOT NULL,
    synopsis text NOT NULL,
    actors character varying(255) NOT NULL,
    duration character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone,
    poster character varying(255) NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    65879    movies_id_seq    SEQUENCE     �   ALTER TABLE public.movies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public          postgres    false    202            �            1259    65881    orders    TABLE     8  CREATE TABLE public.orders (
    id character varying(255) NOT NULL,
    schedule_id integer NOT NULL,
    user_id integer NOT NULL,
    order_date timestamp(0) without time zone NOT NULL,
    total_payment character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    seat text[] NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    65887    schedule    TABLE     �   CREATE TABLE public.schedule (
    id integer NOT NULL,
    cinema_id integer NOT NULL,
    movie_id integer NOT NULL,
    start_date date NOT NULL,
    price character varying(255) NOT NULL,
    start_time time(0) without time zone
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            �            1259    65890    schedule_id_seq    SEQUENCE     �   ALTER TABLE public.schedule ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public          postgres    false    205            �            1259    65892    seat    TABLE     w   CREATE TABLE public.seat (
    id integer NOT NULL,
    cinema_id integer NOT NULL,
    seat_number text[] NOT NULL
);
    DROP TABLE public.seat;
       public         heap    postgres    false            �            1259    65898    seat_id_seq    SEQUENCE     �   ALTER TABLE public.seat ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.seat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public          postgres    false    207            �            1259    65900    test    TABLE     =   CREATE TABLE public.test (
    id bigint,
    seat text[]
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    65906    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    username character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    phone character varying(255),
    photo character varying(255),
    role character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    65912    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public          postgres    false    210            �          0    65865    cinemas 
   TABLE DATA           f   COPY public.cinemas (id, name, city, street, street_number, created_at, updated_at, logo) FROM stdin;
    public          postgres    false    200   �-       �          0    65873    movies 
   TABLE DATA              COPY public.movies (id, category, title, release_date, synopsis, actors, duration, created_at, updated_at, poster) FROM stdin;
    public          postgres    false    202   �.       �          0    65881    orders 
   TABLE DATA           c   COPY public.orders (id, schedule_id, user_id, order_date, total_payment, status, seat) FROM stdin;
    public          postgres    false    204   #4       �          0    65887    schedule 
   TABLE DATA           Z   COPY public.schedule (id, cinema_id, movie_id, start_date, price, start_time) FROM stdin;
    public          postgres    false    205   �4       �          0    65892    seat 
   TABLE DATA           :   COPY public.seat (id, cinema_id, seat_number) FROM stdin;
    public          postgres    false    207   �5       �          0    65900    test 
   TABLE DATA           (   COPY public.test (id, seat) FROM stdin;
    public          postgres    false    209   �5       �          0    65906    users 
   TABLE DATA           �   COPY public.users (id, email, password, username, first_name, last_name, phone, photo, role, created_at, updated_at) FROM stdin;
    public          postgres    false    210   �5       �           0    0    cinemas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cinemas_id_seq', 11, true);
          public          postgres    false    201            �           0    0    movies_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.movies_id_seq', 17, true);
          public          postgres    false    203            �           0    0    schedule_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.schedule_id_seq', 51, true);
          public          postgres    false    206            �           0    0    seat_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.seat_id_seq', 17, true);
          public          postgres    false    208            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    211            I           2606    65915    cinemas cinemas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cinemas
    ADD CONSTRAINT cinemas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cinemas DROP CONSTRAINT cinemas_pkey;
       public            postgres    false    200            K           2606    65917    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    202            M           2606    65919    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    204            O           2606    65921    schedule schedule_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public            postgres    false    205            Q           2606    65923    seat seat_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.seat DROP CONSTRAINT seat_pkey;
       public            postgres    false    207            S           2606    65925    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            T           2606    65926 !   orders orders_schedule_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_schedule_id_foreign FOREIGN KEY (schedule_id) REFERENCES public.schedule(id);
 K   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_schedule_id_foreign;
       public          postgres    false    205    204    2895            U           2606    65931    orders orders_user_id_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_foreign;
       public          postgres    false    210    204    2899            V           2606    65936 #   schedule schedule_cinema_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_cinema_id_foreign FOREIGN KEY (cinema_id) REFERENCES public.cinemas(id);
 M   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_cinema_id_foreign;
       public          postgres    false    2889    205    200            W           2606    65941 "   schedule schedule_movie_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_movie_id_foreign FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 L   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_movie_id_foreign;
       public          postgres    false    2891    202    205            �   �   x�u��r�0��u�
n IN��u�ހ�()F#a���V,�a�,ϼ��ǐ�_7�B�>�٥>�d�m��ɹ� )0/'�pf�D�7Tm��*C�cW1�aL��ŭyj댣�o�{�́Φޟ�X�P�jP*�h�rl����?���o��έ}���T=5�ԄX��D��;&��.6ئF��).�mi0]m3��s-5[������gj=.��e&���b?���%��U�c%��>�M�e?4��      �   �  x�}V�r�6>�O����������4�:u�=�%�%	��@@A)���Kg�K�O�oI�Q2Ng42-�����Gy��F�[](߰�f�,��E<K���kcTAYO�nI}�*����u�)Ԋ.v�Vʷ�VAy�*t޶T�FMh_+�ˌީv|J*]t6���,�*�9�u�R�"W��S�lp����6��<n�KK�Q��P���4��:�1T�6=y�m�T�6x�È)Ԯ����n[�v�Vx�i�)�l��qh?�l�S��]�

��JWu�|�\A#���ƔuA����%�T�|����䲶R;��P���+���-:����:���@���⠬*�ѝk�g�Z��Е�kV���C��)��[�ӥ�Nh:�F3��҄���� �J��d�^�F�^v[�x�EʿLWX��g���|7 L�<���d]X��`��vϾ8*�*@�@�vY�3PT�=�7h��n�������3����Zz��{,�p����]��"��QP�rF�S�H��V�@q��^n���ڲ��N�H�
���.E��Axe�4ٹ�9U�u�e��5��ҵ�&�>���%~NSH,��h�=���r�CJA�|���#��mu�:b�Ή�P,�i� �!��'�羅/`���V�W8��%[�Ȭ�8p���l�}��ס*oĈ9��nt1DYxB�-�F*_9k��ҫGǏ?���+��q��8r&ʋ��o�"���5Yj$�[�`r��٪$r���֘�vD[�=��U��#�9��Ĕ薥�C`�n0�.��Z�c	�Ix�N��G����,�V�U�t<�ގ^�4U�+�w���v��n5lK�pF�p�0^�p=��UWr˓Q2ތ3�V�G�l��˴�ŵ�G5��`q�IzQ� �\���R
?�y�A0���͔n!���c�����c#�Ii/}��F��ŋ�m��ަ$�3�%"\{���ɸn��Q.ƣ!S�,�L���0����@(誕��������a8b���!@� sw��0���udt�d,0��N]����81.U���y��	
�g��it�j��V�:b���G[>�4�����f��j�� 3�b��a�G��w_��W{%�OF�sa-��a�W����q��*K��>�L�i��_4�p�#�e��ZfL�K��K,6���d (=�1���2B��l0��Z.�F�}�����!��5 =�Oz���e<2�j�ӈ�����s��~���k�Y��ƨa�u���egY��F�NƜ׌c�b���w7�J�(�<�FM��&��|=K�Qs�Kӫ�t�$��y, �\<O�$Iҡ����Ug���2�W��3��UJ�Wѓs���y�^~K�C������|�Z��vC�'''�G1WB      �   �   x���1nA��{
0����g�%��
� 	D�P!�Q��..���l�ۏ�v����ъ���ARjzN=ۊK�R�d܆N����~���a(a��n�Q�%B�Kʫ��s�|6a�a���L�lI4e���(޲)��o��F��^�k�*��/�d�]�_�I�,SΥ�ϗD�b���~ʌX�      �   �   x�}�[� �q/� �k���q�I%MK�W��i#�B�*�-������s��v�m����p������0�{�p��BQ�y%H�|���A�"t남�74Q�o��
�4�+&-ŅןT���������nR      �   5   x��� !E����b��h�N���uK�SA%-�頓�L0��l3��	�      �      x�3�v4�q4�q4������ %��      �   �  x�m��r�0���S�`��]�W�\b��	&�d#|����I��6�4mȌF������9 
_+�-�Tz��"}��#د&�����q�X;x'�'!�01ʭe�����l���b�y���7voy
^����5,� @�C���Ĩ�id��}ן4�N�yMFd�J�X����v+�Y�}h��O5�x��"�{Ѷq�A�a��a �k�d
����(��x(T0<&EUo��@Prb"凘��c���u���P~d�����ɐF�
�4�U�q�O�ٶ���CQgQD�~���f}O�D��!B����U�$�|��ˀS�U�u�� PB�H�I�_XH	�A�F���u�?P�����!hjb���@�r�
׶H��u1�y����7{����ORV�1���I���{מl��;�Z�qx �I�
�r�!�O��{�90jP޶��M|Q�A٢��� Ӯ��Jh/��i д�w     