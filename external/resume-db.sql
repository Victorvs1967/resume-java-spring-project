PGDMP     8                    x           resume    12.3    12.2 5    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33462    resume    DATABASE     x   CREATE DATABASE resume WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE resume;
                victors    false            �            1259    33831    certificate    TABLE     �   CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(255) NOT NULL,
    large_url character varying(255) NOT NULL,
    small_url character varying(255) NOT NULL
);
    DROP TABLE public.certificate;
       public         heap    victors    false            �            1259    33714    certificate_seq    SEQUENCE     x   CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.certificate_seq;
       public          victors    false            �            1259    33469    course    TABLE     �   CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(255) NOT NULL,
    school character varying(255) NOT NULL,
    finish_date date
);
    DROP TABLE public.course;
       public         heap    victors    false            �            1259    33721 
   course_seq    SEQUENCE     s   CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.course_seq;
       public          victors    false            �            1259    33472 	   education    TABLE       CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary character varying(255) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty character varying(255) NOT NULL
);
    DROP TABLE public.education;
       public         heap    victors    false            �            1259    33716    education_seq    SEQUENCE     v   CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.education_seq;
       public          victors    false            �            1259    33475    hobby    TABLE     �   CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.hobby;
       public         heap    victors    false            �            1259    33718 	   hobby_seq    SEQUENCE     r   CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.hobby_seq;
       public          victors    false            �            1259    33478    language    TABLE     �   CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(60) NOT NULL,
    level character varying(20) NOT NULL,
    type character varying(10) DEFAULT 0 NOT NULL
);
    DROP TABLE public.language;
       public         heap    victors    false            �            1259    33723    language_seq    SEQUENCE     u   CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.language_seq;
       public          victors    false            �            1259    33484    practic    TABLE     N  CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" character varying(255) NOT NULL,
    company character varying(255) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo character varying(255),
    src character varying(255)
);
    DROP TABLE public.practic;
       public         heap    victors    false            �            1259    33725    practic_seq    SEQUENCE     t   CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.practic_seq;
       public          victors    false            �            1259    33463    profile    TABLE     e  CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    birthday timestamp(0) with time zone,
    phone character varying(255),
    email character varying(255),
    country character varying(255),
    city character varying(255),
    objective text,
    summary text,
    large_photo character varying(255),
    small_photo character varying(255),
    info text,
    password character varying(255) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) with time zone DEFAULT now() NOT NULL,
    skype character varying(255),
    vkontakte character varying(255),
    facebook character varying(255),
    linkedin character varying(255),
    github character varying(255),
    stackoverflow character varying(255)
);
    DROP TABLE public.profile;
       public         heap    victors    false            �            1259    33487    profile_restore    TABLE     k   CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token character varying(255) NOT NULL
);
 #   DROP TABLE public.profile_restore;
       public         heap    victors    false            �            1259    33712    profile_seq    SEQUENCE     t   CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.profile_seq;
       public          victors    false            �            1259    33490    skill    TABLE     �   CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category character varying(255) NOT NULL,
    value text NOT NULL
);
    DROP TABLE public.skill;
       public         heap    victors    false            �            1259    33493    skill_category    TABLE     m   CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category character varying(255) NOT NULL
);
 "   DROP TABLE public.skill_category;
       public         heap    victors    false            �            1259    33727 	   skill_seq    SEQUENCE     r   CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.skill_seq;
       public          victors    false            �          0    33831    certificate 
   TABLE DATA           Q   COPY public.certificate (id, id_profile, name, large_url, small_url) FROM stdin;
    public          victors    false    219   �;       �          0    33469    course 
   TABLE DATA           K   COPY public.course (id, id_profile, name, school, finish_date) FROM stdin;
    public          victors    false    203   ?       �          0    33472 	   education 
   TABLE DATA           j   COPY public.education (id, id_profile, summary, begin_year, finish_year, university, faculty) FROM stdin;
    public          victors    false    204   �?       �          0    33475    hobby 
   TABLE DATA           5   COPY public.hobby (id, id_profile, name) FROM stdin;
    public          victors    false    205   A       �          0    33478    language 
   TABLE DATA           E   COPY public.language (id, id_profile, name, level, type) FROM stdin;
    public          victors    false    206   0D       �          0    33484    practic 
   TABLE DATA           |   COPY public.practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src) FROM stdin;
    public          victors    false    207   �E       �          0    33463    profile 
   TABLE DATA           �   COPY public.profile (id, uid, first_name, last_name, birthday, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow) FROM stdin;
    public          victors    false    202   �H       �          0    33487    profile_restore 
   TABLE DATA           4   COPY public.profile_restore (id, token) FROM stdin;
    public          victors    false    208   U       �          0    33490    skill 
   TABLE DATA           @   COPY public.skill (id, id_profile, category, value) FROM stdin;
    public          victors    false    209   #U       �          0    33493    skill_category 
   TABLE DATA           6   COPY public.skill_category (id, category) FROM stdin;
    public          victors    false    210   �Z       �           0    0    certificate_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.certificate_seq', 26, true);
          public          victors    false    212            �           0    0 
   course_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.course_seq', 15, true);
          public          victors    false    215            �           0    0    education_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.education_seq', 24, true);
          public          victors    false    213            �           0    0 	   hobby_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.hobby_seq', 120, true);
          public          victors    false    214            �           0    0    language_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.language_seq', 57, true);
          public          victors    false    216            �           0    0    practic_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.practic_seq', 41, true);
          public          victors    false    217            �           0    0    profile_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.profile_seq', 24, true);
          public          victors    false    211            �           0    0 	   skill_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.skill_seq', 204, true);
          public          victors    false    218            F           2606    33835    certificate certificate_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.certificate DROP CONSTRAINT certificate_pkey;
       public            victors    false    219            2           2606    33681    course course_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pk;
       public            victors    false    203            4           2606    33683    education education_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.education DROP CONSTRAINT education_pk;
       public            victors    false    204            6           2606    33688    hobby hobby_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.hobby DROP CONSTRAINT hobby_pk;
       public            victors    false    205            8           2606    33691    language language_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.language DROP CONSTRAINT language_pk;
       public            victors    false    206            :           2606    33698    practic practic_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.practic DROP CONSTRAINT practic_pk;
       public            victors    false    207            .           2606    33497    profile profile_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pk;
       public            victors    false    202            <           2606    33705 "   profile_restore profile_restore_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_pk;
       public            victors    false    208            >           2606    33707 "   profile_restore profile_restore_un 
   CONSTRAINT     ^   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_un UNIQUE (token);
 L   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_un;
       public            victors    false    208            0           2606    33499    profile profile_un 
   CONSTRAINT     L   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_un UNIQUE (uid);
 <   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_un;
       public            victors    false    202            B           2606    33709     skill_category skill_category_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT skill_category_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.skill_category DROP CONSTRAINT skill_category_pk;
       public            victors    false    210            D           2606    33711     skill_category skill_category_un 
   CONSTRAINT     _   ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT skill_category_un UNIQUE (category);
 J   ALTER TABLE ONLY public.skill_category DROP CONSTRAINT skill_category_un;
       public            victors    false    210            @           2606    33703    skill skill_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_pk;
       public            victors    false    209            �   s  x���A�7E�5��h�E�W�dCQ�1�t!��Q�M���~*~~���o����~��w����_߿����n�����Ze��gΫC3��`�T0U�%�_O���Y���	�ZV��j��4m����|�XY�U8Q�a��QDn�XX�Ϲ僚�8�f�KVr��e��R�-��mʖ�;R�֨�ŹE�$�Jo��a��(9t�/���B��O���i�>���P;�T=0�b�!���ӊ[�ʦ��S���\~K��j�\��4��@��M�0����)�?���ڭ"����	�qMN��w�0��i�{����A5D��*���
�Z���J�C
4�ZX5�kG|aት_��.�q�0.��K�P	�Tsc-���[�Pg1�����ɡ�M(�yF�/�ϱv�V>���WIWZC����֒½^��е�����˾�1j�JI=V��́K�[�۷�V9P��&i[1m�J��j`�P<Z|TFη��X��Q#礈�_פ��,qr�"e-�ϱv�Vd��X�9c�P�ykN#�HjV�S��1�-�Q�?��iĺy�3�D;i���� i���y/�/,=�^���;g�����Z�5�2+{^����񵞦�^�5�ٻ;�|�"��ؠRt��\k����_`x�+3{�A�4D3ƥA˚���FtK|��	��T\9�2I�Tc豝 ����~���8;�+�?��{oaR�4bIiS�"c���%���zK|a�_�"yp�
�%�������"�����lG|��#�v�u�`��s�hla�%>Y>��;�Kzeh� ��b���S��m���:��`:n�`~z{{����`      �   �   x��һ�0���+�E��h;"&XX�DmV�x����:LY���3<.y��q��})kwz|���[}�r~C����{r�`�A�G��W0�8(�m�'L��n s��,���'pC��nL��>�����?�����X��P�o���HH�|p�}Õ      �   6  x�Ŗϊ�0���S��%�D�KO����"�AC�X�-���o0	2xP�L~�  \GR˓��'��ꇆH�|P������:����� Fc�3|�}|��:���C?�+��?�[�o��_�>��{�����k��.�SpT0v��.�^B)��n_B*��Jһ�J�L��>,��;�`L��VһيM�w�I�6G�?z��6���"���@��t�/"�_�|��_J����:P�l�P�l�o%��5m���}��L�w�"��\�N��l�������/���aG�ϰ�%�˖?�#э/���E����      �     x�e��n�8��ɧ�����A�Ţ@�.�7{��JLXKI6o�3�%�)����F�ñd�}���!vW��/c�s����؍� ޥ�	?nߥ�K�|y����>S���]���aH#�ex<�S�=��9���$Em˘�L��x�F.�����Ҁ/9���ۦ��ԥǩL���ڷ�cޟ�w.fؗ4ˠ#�g�6]$�C��á����Z���/�1����+�,�'w]{ތ�X�R
ڏc�2W�}z-�A|s��P�uQk�]��Lv�D�42�@��r�eQ>m�m,�j���9ZAY%�5x�5e���RFm�*���]h���C�|��Wˍ ���Rq� ��xڌ]�rύ��;�2j�};n��f�þ��B����r�i��!�H���sAOX�b�K� ����e�Ot���a�C�"�z�j�WF��6��!u�ޒr��}���y��xy?�ִl�x��p#�V/	i��z/KEBuW�)�'4����KxS����A�hqX�	o\���� ���!���NQ����$|��#w��{y���vsH�Y}�sĵ|�S���u�@����\�鑍[='�����⋻�)�o�[��x$�WIyG<��{����@47� �~֦�NX@�{MT3��eKT+�5��wpU|+�	�.�Mc�B������g]*!�"���Ф�,�0�~l�妥@��ڊ�+xN��#H(��/���^���A�\�.��A��j���ժ��Q��I�B]�.q���[��ʾ�	���(Ē��8�@�)      �   �  x��U�n�0<�����4EϹ�]e#�Q�Iп/���nBi���pȑ(# ���9�>�����۴����叏����O�a�v�����}��i�$�e}y���O�+�ɵ��{鞱�~}�"�-�_B���ôy1��d3����b���[p�5�/�g2#\L�]Y��CSc���2��6́M���pq頿2Fό4�$ �A����֚��D��	a���AJf�������IW��s.N�z@��;���-S,-�%F�ߴ�����"%���]d)`T8�-���wE�Xp�N_4�v�!Q*��9����ضD�wFz���j���f�Oi��ET����⠶SQi�j���,TT��+K���Z ���9��R#��Hș��#��VCsU�����]�%N���?�7M��#Mb,      �   �  x��[��0ǟ��ۼx���ی��:N��݇IL�*L�(���[p�!�Iv�341��^��S��#LɎ�K��ʒ��1��<�޺� kX�hf��V�]h�� �@�S��O�(e!�$���%<`�����`�����|ֆS{�Ԇ�	�i�����9�c���xy��`ݽ�#�K��'�w,�S�d��� ����ٖ��,�{:��'$�ߗ��t���6��>
�	�maq*���gg�K>�#�8$��y#S^� I��,���}r3ℽR��|�ˆ�ӥ<�A�s��f�O?V��j<�/V��rR\HŕM����l�[.Ƌ��ڈ*6�"2�Q�qBd6�yD������	��He�Pz% ��F���aQ���L�b���XD�8��s*��u�V@���A��?c�W�y��T}].�<�C�+g��#�+��Q��>C�Q�R 1B����dIH^�N�p�P�H��U���A��'@�	�3H�V-}?9�T_h�t������,�\�wk�7�K9	����bE�j)i��)!���F$�}U��ӗpTX 	j})��Y<ɪ��ν��$R$���;�eU�U�y�������ba��@S�Qg`�X��U���K`L������+����ojh�nh���J`��ކ=I_��V�G)�      �   A  x��[Y��6~�~�[��E�~ZIl�,;�&� %zx�<fj��AJJ��9�����(���_708P�2}ש�Iq<�p�$(��a=~>�h�9����ɽ�V�ʋ+]��O׍�+|ol۪�U_�u�U7*�'6��m��u�rwu�X��7�o�n{c�z�W���l���pU[�_���V���Қ\=�^:�<"�6���PĢ,CJ�%[��8���z�Y}�j�����ψ�G�������[z��W����o^����헛����79ɫ�����M���/�d��?�� >$B�@���=��c�ܸ�O���6��G�n��p>� ��{V��5|���b�x�اg������m���=�Y���w(�o�Oʻ������Ʊ�p�6q����4����t��4upO�qk�)�ƶ}i�}�v5��u������X��yg��(�qf<k��\ qA1"3\����e�j��Ŧ�TgC[�<��	[��mu�l�.O��/�M��m��W�2/Ƽ}�۰�aY|�֚eX�U_�waץ���*��/
U�J�lU���0�B��W,�q��c�F��v�����]gQS�������:�������a�3A%٢��Db��u���k�\�7�Fi�PB�h���4E	M4����J3�����Sڹ� "Sڦu=2��	���^0��kJ�ʋ��+����|���a(�����|�͇�����,h��t`}���q��*T@S�{)���`$�M�	J�1m�LE��,ř�Q���~X��P�����o�նRmxs�q[��(����V�ݲ\XY��8]�E�!` F<Ъ)�UES��5�_�Ơ�0A$����DPF�?	��&MD*��L#�Ђ�)�,�ؕ�������\i��gg����iH��-� "�m�H��U������m��2��O	�<?�b&�\Z+�q1�2�"F�D��)�y̹��bM|Zy��
/am����ҹ��*|� �>)Ȗ�(|�ҏ�q4��4˩��lC�F���RUU�����ڃ
q�Dx  �Lgǝ�0��}T �`*3����e=��cK���Vʌ���9n; <��;�_��m@�v!�ڏ9���wN)��e!X�uaЪ��mZ�Í���w�_��9��p�̓�Z�$C��
1!J�� ��28f�ă�9n��$g r2�gc��r���V5݂����#x1��_v�����%*�P°<���BCS��
Ե�4�ǌ0�b2�,M�1�,s�v���oT����ǖ��A�ՠ*�_z!�c�\���)�sב�G�[�.�`�\���y?ƭxȞ�/{f�y<q����?G����� J]�FB*�.��1D+Ȇ3�K}��L5��s2fb����)��om��������r�w8BDx�/R
I'���b ��e�L%1�1$1�A��$TH#=���vq�Lf�G�OXi��OHL�k�5y� �*�u��c;x�m��Ѝ/��0:���92��CLB�q��"D��|����X�eR���q�!曱���W���.T�햃����]c�L��[���-r����ʪ
�ʲ65D�U_��n/��n�Tp<�:�ϐ�G.L��¼C(\�؛���x���>}K<���	�����R�x ���1�83ru+��1(�V!'1��3�����o�·}���0�YX�`
��2TE��������}��C�jt��B[�它f]Wԛ���\�6&ހ�
��\�)���&����:ag��:o��.�/&�<@;�{,h�=v1�c7�+0��i�ܢ[�/, ޵�_���ğ�J,	#�����uc����]��S��o'h�`E8���M
Y(�����b��@q�=c�۾>�m�^w0VC}ۭ��o*�JS��v'p��%`�)���ϻ>o� ����=E������/��a|��i5ݡ�^�
�jȋ!>A+x�m�;J�}G	I��acY��	(;'�$N�R"C'�#�H}��9n�@jq8�~z�2��d"x�T}��X�u�ߎ��[�U#ADzT#�1#��?Lɘ�k*�	��,�I�A-lR�d��C�kFi��W@#AF՗� �Dζ6
V����ԍӋ�� f��
�#�p�(�

�᪂�y�����s��-�Tz׃��`9Xl�Re~=�Z���jh��1�/?��K��j5&Ҋ���Ħ�"e�M�-��h�R����� �8��a*@6%�c����ѹ:�����r�x�O���ˠQzm�\�����5�,���+\���ÈÉN�L)H����Og
I1ij��4��9n;P}�sZ��h_@�sX�@���t}�9�=�'X�p��0��{Nx����p�����e���n���C�u�����v{&�����c"}�}83~�)��[f`�t$� �)�
am�aLZ���KJ��Y}�����xj�'�<qX�(���k��r}���;����Q��CMJ�G�(M�8��a
S�ed)NQFq��%�
+�R�qɥ�H��}��(�Bp�R�>��!�mc��K�['`G9��~�;�t�V��|C��Q�s �q�*�
"�+#J;RkX����r'��U��軍jP��:߸O����/��'P<^E'g��}�����C]�J�%�����}k<]o�۴�1�q�;x�7Z`�x��T`H�x���Ks��J�,����6� �d��Y��"���fZFf̡�D��r�������ї8�}������}Ɉ��Y`�
���!x36�gcs`Y�&���E¸<��/�1~ʱ�)i3�fȪ�!-��@���<51%�s�>F�?�M��m��/ڮWM�`da������x��\ p�<p��t��H��b�(��L��-cʤ*Q���9n;h|�Bl��]�g�����b�/A��Ζ*w��p"[�?#	Nvq�u�!� i	��������+0���}�A��lAX �xS7�ި�u��C0,���;Vʀ����#W���L�i��%4v�=E5�&e����]��(L����W������      �      x������ � �      �   �  x�͙�r�8E��Wh?�)4��ү8VىSr%��-3�*����5���M)���h�p�T��6�!a\�J���l[��u2.^�T"t~z3In^��,�?9��=���a�]}��'�f���R����Er1]̟���k��/.F��K����U�Qq�y�\�7�=n�S���v�x�_כ�)�)^�ej��M>]g���?uH�]�V��lUrk�/�}����:;�L��$;���z�*���m�zMI��^��y5_�F7�ϲ�jv_L�a�-��]g��y�)F�ۓ�乘>�����Z���'�t��o^����r�,6e]�����U�m4���b1:��J�p�neH�$���ݚp��K�Z'w�Ӵ�df��))d#ʑ���!9�2I�$y��d��$�`��U�^K)p�n-%�$�R�ݚ�Z�و�R�L?��:Q�ZJ�l����i����ˇb3�pI��\֌eY��u6>?=�.�j�(��Iw���u�J�sڭ?�{.����<�wݳ���r�8��Is��p��5b������]*�H�,ġ$\�G,Ҫ�	;R��AGJ�wǾ�#�ݑR(	:R�XG&���,b�9����#ݳ��iB,ґ��knt�l��h��1ύ�0��F��#�EI(�ۭ?��h�lDh#x��sc(���D6$`r�!`���諛�1(	&v��8㐍�<S��	N�,q:d`%G��`s1@
Vqc��暀�5{� ��t����b(|B�I��t)8�p��cP8�#����X7
��&@��^�8
g8A�l=Y������t�/8z
O<b�(��ƺQ��k^�5�����ԓEPx@�9��;N4 x���4�\�w����|�O wD.ē�X)!�(4S"�7(���L�J	]�T���	��aHX��e��	��c�^����͢�G¶K}^��!P�-�M��u�0�=�S�q�"�n�`xc��}0�2���V����+.
u�Eޭ�Eg�e���U����/�#S�Յi&�Tn�xi2|Й���Hx.j��{ZH�@S���3����)�L`��6��I#|�m��d�O}&����ac	^�Cۛ7��8�/�DW�&�s��Ο��0�4���]H�p���rQ��r�����9}�)���v!�;.i���?�:��Q��V<dx�}˟d���H�pQI۽8-���|���=F$���!�7#9|(���Bg�;�ab4�L������X�ǘW�e��a��
�7�X��QL��!Cdbs�U\2�z�Ck8cbm=_���L�s�e[s��G�q�C�G�e[s�����r.
q9���Ӝ��r��/�ˁd��6�8����9|(/x��@�3��z�x�E!��uha��cL���1���eֽ�|��w�_A=���/��%T��B�ܯ��k��9�*T=ߏs���i�#��      �   \   x�3��I�K/MLO-�2�tq��2�OM�2��J,K�2��tq�2�t�2I(���sYp:�f�(W���rYr:�䗦p��qqq �      