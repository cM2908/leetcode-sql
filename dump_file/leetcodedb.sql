--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-1.pgdg20.04+1)

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
-- Name: accepted_rides_1635; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accepted_rides_1635 (
    ride_id integer,
    driver_id integer,
    ride_distance integer,
    ride_duration integer
);


ALTER TABLE public.accepted_rides_1635 OWNER TO postgres;

--
-- Name: accepted_rides_1645; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accepted_rides_1645 (
    ride_id integer,
    driver_id integer,
    ride_distance integer,
    ride_duration integer
);


ALTER TABLE public.accepted_rides_1645 OWNER TO postgres;

--
-- Name: accepted_rides_1651; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accepted_rides_1651 (
    ride_id integer,
    driver_id integer,
    ride_distance integer,
    ride_duration integer
);


ALTER TABLE public.accepted_rides_1651 OWNER TO postgres;

--
-- Name: accounts_1454; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_1454 (
    id integer,
    name character varying
);


ALTER TABLE public.accounts_1454 OWNER TO postgres;

--
-- Name: actions_1113; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actions_1113 (
    user_id integer,
    post_id integer,
    action_date date,
    action character varying,
    extra character varying
);


ALTER TABLE public.actions_1113 OWNER TO postgres;

--
-- Name: actions_1132; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actions_1132 (
    user_id integer,
    post_id integer,
    action_date date,
    action character varying,
    extra character varying
);


ALTER TABLE public.actions_1132 OWNER TO postgres;

--
-- Name: activities_1355; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activities_1355 (
    id integer,
    name character varying
);


ALTER TABLE public.activities_1355 OWNER TO postgres;

--
-- Name: activity_1097; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_1097 (
    player_id integer,
    device_id integer,
    event_date date,
    games_played integer
);


ALTER TABLE public.activity_1097 OWNER TO postgres;

--
-- Name: activity_1141; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_1141 (
    user_id integer,
    session_id integer,
    activity_date date,
    activity_type character varying
);


ALTER TABLE public.activity_1141 OWNER TO postgres;

--
-- Name: activity_1142; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_1142 (
    user_id integer,
    session_id integer,
    activity_date date,
    activity_type character varying
);


ALTER TABLE public.activity_1142 OWNER TO postgres;

--
-- Name: activity_511; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_511 (
    player_id integer,
    device_id integer,
    event_date date,
    games_played integer
);


ALTER TABLE public.activity_511 OWNER TO postgres;

--
-- Name: activity_534; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_534 (
    player_id integer,
    device_id integer,
    event_date date,
    games_played integer
);


ALTER TABLE public.activity_534 OWNER TO postgres;

--
-- Name: activity_550; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_550 (
    player_id integer,
    device_id integer,
    event_date date,
    games_played integer
);


ALTER TABLE public.activity_550 OWNER TO postgres;

--
-- Name: activity_550_tc_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity_550_tc_2 (
    player_id integer,
    device_id integer,
    event_date date,
    games_played integer
);


ALTER TABLE public.activity_550_tc_2 OWNER TO postgres;

--
-- Name: actor_director_1050; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actor_director_1050 (
    actor_id integer,
    director_id integer,
    "timestamp" integer
);


ALTER TABLE public.actor_director_1050 OWNER TO postgres;

--
-- Name: amz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.amz (
    oid character varying,
    item character varying,
    qty integer
);


ALTER TABLE public.amz OWNER TO postgres;

--
-- Name: bonus_577; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bonus_577 (
    "empId" integer NOT NULL,
    bonus integer
);


ALTER TABLE public.bonus_577 OWNER TO postgres;

--
-- Name: books_1098; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_1098 (
    book_id integer,
    name character varying,
    available_from date
);


ALTER TABLE public.books_1098 OWNER TO postgres;

--
-- Name: boxes_1715; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boxes_1715 (
    box_id integer,
    chest_id integer,
    apple_count integer,
    orange_count integer
);


ALTER TABLE public.boxes_1715 OWNER TO postgres;

--
-- Name: calls_1501; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calls_1501 (
    caller_id integer,
    callee_id integer,
    duration integer
);


ALTER TABLE public.calls_1501 OWNER TO postgres;

--
-- Name: calls_1699; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calls_1699 (
    from_id integer,
    to_id integer,
    duration integer
);


ALTER TABLE public.calls_1699 OWNER TO postgres;

--
-- Name: candidate_574; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidate_574 (
    id integer,
    name character varying
);


ALTER TABLE public.candidate_574 OWNER TO postgres;

--
-- Name: championships_1783; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.championships_1783 (
    year integer,
    wimbledon integer,
    fr_open integer,
    us_open integer,
    au_open integer
);


ALTER TABLE public.championships_1783 OWNER TO postgres;

--
-- Name: chargebacks_1205; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chargebacks_1205 (
    trans_id integer,
    charge_date date
);


ALTER TABLE public.chargebacks_1205 OWNER TO postgres;

--
-- Name: chests_1715; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chests_1715 (
    chest_id integer,
    apple_count integer,
    orange_count integer
);


ALTER TABLE public.chests_1715 OWNER TO postgres;

--
-- Name: cinema_603; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cinema_603 (
    seat_id integer NOT NULL,
    free integer
);


ALTER TABLE public.cinema_603 OWNER TO postgres;

--
-- Name: cinema_620; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cinema_620 (
    id integer,
    movie character varying,
    description character varying,
    rating numeric(2,1)
);


ALTER TABLE public.cinema_620 OWNER TO postgres;

--
-- Name: company_607; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_607 (
    com_id integer,
    name character varying(20),
    city character varying(20)
);


ALTER TABLE public.company_607 OWNER TO postgres;

--
-- Name: contacts_1364; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_1364 (
    user_id integer,
    contact_name character varying,
    contact_email character varying
);


ALTER TABLE public.contacts_1364 OWNER TO postgres;

--
-- Name: contests_1811; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contests_1811 (
    contest_id integer,
    gold_medal integer,
    silver_medal integer,
    bronz_medal integer
);


ALTER TABLE public.contests_1811 OWNER TO postgres;

--
-- Name: country_1501; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_1501 (
    name character varying,
    country_code character varying
);


ALTER TABLE public.country_1501 OWNER TO postgres;

--
-- Name: courses_596; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_596 (
    student character varying(15),
    class character varying(15)
);


ALTER TABLE public.courses_596 OWNER TO postgres;

--
-- Name: customer_1045; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_1045 (
    customer_id integer,
    product_key integer
);


ALTER TABLE public.customer_1045 OWNER TO postgres;

--
-- Name: customer_1321; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_1321 (
    customer_id integer,
    name character varying,
    visited_on date,
    amount integer
);


ALTER TABLE public.customer_1321 OWNER TO postgres;

--
-- Name: customer_584; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_584 (
    id integer NOT NULL,
    name character varying,
    reference_id integer
);


ALTER TABLE public.customer_584 OWNER TO postgres;

--
-- Name: customers_1364; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_1364 (
    customer_id integer,
    customer_name character varying,
    email character varying
);


ALTER TABLE public.customers_1364 OWNER TO postgres;

--
-- Name: customers_1398; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_1398 (
    customer_id integer,
    customer_name character varying
);


ALTER TABLE public.customers_1398 OWNER TO postgres;

--
-- Name: customers_1532; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_1532 (
    customer_id integer,
    name character varying
);


ALTER TABLE public.customers_1532 OWNER TO postgres;

--
-- Name: customers_1549; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_1549 (
    customer_id integer,
    name character varying
);


ALTER TABLE public.customers_1549 OWNER TO postgres;

--
-- Name: customers_1596; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_1596 (
    customer_id integer,
    name character varying
);


ALTER TABLE public.customers_1596 OWNER TO postgres;

--
-- Name: customers_1613; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_1613 (
    customer_id integer,
    customer_name character varying
);


ALTER TABLE public.customers_1613 OWNER TO postgres;

--
-- Name: customers_183; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_183 (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.customers_183 OWNER TO postgres;

--
-- Name: delivery_1173; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery_1173 (
    delivery_id integer,
    customer_id integer,
    order_date date,
    customer_pref_delivery_date date
);


ALTER TABLE public.delivery_1173 OWNER TO postgres;

--
-- Name: delivery_1174; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery_1174 (
    delivery_id integer,
    customer_id integer,
    order_date date,
    customer_pref_delivery_date date
);


ALTER TABLE public.delivery_1174 OWNER TO postgres;

--
-- Name: department_1179; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_1179 (
    id integer,
    revenue integer,
    month character varying
);


ALTER TABLE public.department_1179 OWNER TO postgres;

--
-- Name: department_184; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_184 (
    id integer,
    name character varying
);


ALTER TABLE public.department_184 OWNER TO postgres;

--
-- Name: department_185; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_185 (
    id integer,
    name character varying
);


ALTER TABLE public.department_185 OWNER TO postgres;

--
-- Name: department_580; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_580 (
    dept_id integer,
    dept_name character varying
);


ALTER TABLE public.department_580 OWNER TO postgres;

--
-- Name: drivers_1635; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivers_1635 (
    driver_id integer,
    join_date date
);


ALTER TABLE public.drivers_1635 OWNER TO postgres;

--
-- Name: drivers_1645; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivers_1645 (
    driver_id integer,
    join_date date
);


ALTER TABLE public.drivers_1645 OWNER TO postgres;

--
-- Name: drivers_1651; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drivers_1651 (
    driver_id integer,
    join_date date
);


ALTER TABLE public.drivers_1651 OWNER TO postgres;

--
-- Name: emp_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emp_name (
    name character varying
);


ALTER TABLE public.emp_name OWNER TO postgres;

--
-- Name: employee_1075; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_1075 (
    employee_id integer,
    name character varying,
    experience_years integer
);


ALTER TABLE public.employee_1075 OWNER TO postgres;

--
-- Name: employee_1077; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_1077 (
    employee_id integer,
    name character varying,
    experience_years integer
);


ALTER TABLE public.employee_1077 OWNER TO postgres;

--
-- Name: employee_181; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_181 (
    id integer NOT NULL,
    name character varying,
    salary numeric,
    manager_id integer
);


ALTER TABLE public.employee_181 OWNER TO postgres;

--
-- Name: employee_184; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_184 (
    id integer,
    name character varying,
    salary integer,
    department_id integer
);


ALTER TABLE public.employee_184 OWNER TO postgres;

--
-- Name: employee_185; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_185 (
    id integer,
    name character varying,
    salary integer,
    department_id integer
);


ALTER TABLE public.employee_185 OWNER TO postgres;

--
-- Name: employee_569; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_569 (
    id integer,
    company character varying,
    salary integer
);


ALTER TABLE public.employee_569 OWNER TO postgres;

--
-- Name: employee_570; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_570 (
    id integer NOT NULL,
    name character varying,
    department character varying,
    manager_id integer
);


ALTER TABLE public.employee_570 OWNER TO postgres;

--
-- Name: employee_577; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_577 (
    "empId" integer NOT NULL,
    name character varying,
    supervisor integer,
    salary integer
);


ALTER TABLE public.employee_577 OWNER TO postgres;

--
-- Name: employee_579; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_579 (
    id integer,
    month integer,
    salary integer
);


ALTER TABLE public.employee_579 OWNER TO postgres;

--
-- Name: employee_615; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_615 (
    employee_id integer,
    department_id integer
);


ALTER TABLE public.employee_615 OWNER TO postgres;

--
-- Name: employees_1270; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees_1270 (
    employee_id integer,
    employee_name character varying,
    manager_id integer
);


ALTER TABLE public.employees_1270 OWNER TO postgres;

--
-- Name: enrollments_1112; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments_1112 (
    student_id integer,
    course_id integer,
    grade integer
);


ALTER TABLE public.enrollments_1112 OWNER TO postgres;

--
-- Name: events_1126; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_1126 (
    business_id integer,
    event_type character varying,
    occurences integer
);


ALTER TABLE public.events_1126 OWNER TO postgres;

--
-- Name: exams_1412; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exams_1412 (
    exam_id integer,
    student_id integer,
    score integer
);


ALTER TABLE public.exams_1412 OWNER TO postgres;

--
-- Name: executed_1767; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.executed_1767 (
    task_id integer,
    subtask_id integer
);


ALTER TABLE public.executed_1767 OWNER TO postgres;

--
-- Name: expressions_1440; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.expressions_1440 (
    left_operand character varying,
    operator character varying,
    right_operand character varying
);


ALTER TABLE public.expressions_1440 OWNER TO postgres;

--
-- Name: failed_1225; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_1225 (
    fail_date date
);


ALTER TABLE public.failed_1225 OWNER TO postgres;

--
-- Name: follow_614; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow_614 (
    followee character(1),
    follower character(1)
);


ALTER TABLE public.follow_614 OWNER TO postgres;

--
-- Name: friend_request_597; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friend_request_597 (
    sender_id integer,
    send_to_id integer,
    request_date date
);


ALTER TABLE public.friend_request_597 OWNER TO postgres;

--
-- Name: friends_1355; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friends_1355 (
    id integer,
    name character varying,
    activity character varying
);


ALTER TABLE public.friends_1355 OWNER TO postgres;

--
-- Name: friendship_1264; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friendship_1264 (
    user_id1 integer,
    user_id2 integer
);


ALTER TABLE public.friendship_1264 OWNER TO postgres;

--
-- Name: friendship_1892; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friendship_1892 (
    user1_id integer,
    user2_id integer
);


ALTER TABLE public.friendship_1892 OWNER TO postgres;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    group_id integer,
    value integer
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- Name: insurance_585; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.insurance_585 (
    pid bigint,
    tiv_2015 numeric(15,2),
    tiv_2016 numeric(15,2),
    lat numeric(5,2),
    lon numeric(5,2)
);


ALTER TABLE public.insurance_585 OWNER TO postgres;

--
-- Name: invoices_1364; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices_1364 (
    invoice_id integer,
    price integer,
    user_id integer
);


ALTER TABLE public.invoices_1364 OWNER TO postgres;

--
-- Name: items_1158; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items_1158 (
    item_id integer,
    item_brand character varying
);


ALTER TABLE public.items_1158 OWNER TO postgres;

--
-- Name: items_1159; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items_1159 (
    item_id integer,
    item_brand character varying
);


ALTER TABLE public.items_1159 OWNER TO postgres;

--
-- Name: items_1479; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items_1479 (
    item_id character varying,
    item_name character varying,
    item_category character varying
);


ALTER TABLE public.items_1479 OWNER TO postgres;

--
-- Name: likes_1264; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes_1264 (
    user_id integer,
    page_id integer
);


ALTER TABLE public.likes_1264 OWNER TO postgres;

--
-- Name: likes_1892; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes_1892 (
    user_id integer,
    page_id integer
);


ALTER TABLE public.likes_1892 OWNER TO postgres;

--
-- Name: log_info_1747; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_info_1747 (
    account_id integer,
    ip_address integer,
    login timestamp without time zone,
    logout timestamp without time zone
);


ALTER TABLE public.log_info_1747 OWNER TO postgres;

--
-- Name: logins_1454; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logins_1454 (
    id integer,
    login_date date
);


ALTER TABLE public.logins_1454 OWNER TO postgres;

--
-- Name: logs_1285; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs_1285 (
    log_id integer
);


ALTER TABLE public.logs_1285 OWNER TO postgres;

--
-- Name: matches_1194; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matches_1194 (
    match_id integer,
    first_player integer,
    second_player integer,
    first_score integer,
    second_score integer
);


ALTER TABLE public.matches_1194 OWNER TO postgres;

--
-- Name: matches_1212; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matches_1212 (
    match_id integer,
    host_team integer,
    guest_team integer,
    host_goals integer,
    guest_goals integer
);


ALTER TABLE public.matches_1212 OWNER TO postgres;

--
-- Name: movie_rating_1341; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_rating_1341 (
    movie_id integer,
    user_id integer,
    rating integer,
    created_at date
);


ALTER TABLE public.movie_rating_1341 OWNER TO postgres;

--
-- Name: movies_1341; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_1341 (
    movie_id integer,
    title character varying
);


ALTER TABLE public.movies_1341 OWNER TO postgres;

--
-- Name: npv_1421; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.npv_1421 (
    id integer,
    year integer,
    npv integer
);


ALTER TABLE public.npv_1421 OWNER TO postgres;

--
-- Name: number_619; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.number_619 (
    num integer
);


ALTER TABLE public.number_619 OWNER TO postgres;

--
-- Name: number_619_tc_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.number_619_tc_2 (
    num integer
);


ALTER TABLE public.number_619_tc_2 OWNER TO postgres;

--
-- Name: numbers_571; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.numbers_571 (
    number integer,
    frequency integer
);


ALTER TABLE public.numbers_571 OWNER TO postgres;

--
-- Name: numbers_571_tc_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.numbers_571_tc_2 (
    number integer,
    frequency integer
);


ALTER TABLE public.numbers_571_tc_2 OWNER TO postgres;

--
-- Name: orders_1098; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1098 (
    order_id integer,
    book_id integer,
    quantity integer,
    dispatch_date date
);


ALTER TABLE public.orders_1098 OWNER TO postgres;

--
-- Name: orders_1158; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1158 (
    order_id integer,
    order_date date,
    item_id integer,
    buyer_id integer,
    seller_id integer
);


ALTER TABLE public.orders_1158 OWNER TO postgres;

--
-- Name: orders_1159; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1159 (
    order_id integer,
    order_date date,
    item_id integer,
    buyer_id integer,
    seller_id integer
);


ALTER TABLE public.orders_1159 OWNER TO postgres;

--
-- Name: orders_1398; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1398 (
    order_id integer,
    customer_id integer,
    product_name character varying
);


ALTER TABLE public.orders_1398 OWNER TO postgres;

--
-- Name: orders_1479; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1479 (
    order_id integer,
    customer_id integer,
    order_date date,
    item_id integer,
    quantity integer
);


ALTER TABLE public.orders_1479 OWNER TO postgres;

--
-- Name: orders_1532; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1532 (
    order_id integer,
    order_date date,
    customer_id integer,
    cost integer
);


ALTER TABLE public.orders_1532 OWNER TO postgres;

--
-- Name: orders_1549; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1549 (
    order_id integer,
    order_date date,
    customer_id integer,
    product_id integer
);


ALTER TABLE public.orders_1549 OWNER TO postgres;

--
-- Name: orders_1596; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_1596 (
    order_id integer,
    order_date date,
    customer_id integer,
    product_id integer
);


ALTER TABLE public.orders_1596 OWNER TO postgres;

--
-- Name: orders_183; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_183 (
    id integer NOT NULL,
    customer_id integer
);


ALTER TABLE public.orders_183 OWNER TO postgres;

--
-- Name: orders_586; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_586 (
    order_number integer NOT NULL,
    customer_number integer,
    order_date date,
    required_date date,
    shipped_date date,
    status character varying(15),
    comment character varying(200)
);


ALTER TABLE public.orders_586 OWNER TO postgres;

--
-- Name: orders_607; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_607 (
    order_id integer,
    order_date date,
    com_id integer,
    sales_id integer,
    amount integer
);


ALTER TABLE public.orders_607 OWNER TO postgres;

--
-- Name: person_1501; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_1501 (
    id integer,
    name character varying,
    phone_number character varying
);


ALTER TABLE public.person_1501 OWNER TO postgres;

--
-- Name: person_182; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_182 (
    id integer NOT NULL,
    email character varying
);


ALTER TABLE public.person_182 OWNER TO postgres;

--
-- Name: person_196; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_196 (
    id integer NOT NULL,
    email character varying
);


ALTER TABLE public.person_196 OWNER TO postgres;

--
-- Name: person_196_ans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_196_ans (
    id integer,
    email character varying
);


ALTER TABLE public.person_196_ans OWNER TO postgres;

--
-- Name: pivot_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pivot_test (
    year integer,
    rain_days integer
);


ALTER TABLE public.pivot_test OWNER TO postgres;

--
-- Name: pivot_test_rainfall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pivot_test_rainfall (
    city text,
    year integer,
    month integer,
    rain_days integer
);


ALTER TABLE public.pivot_test_rainfall OWNER TO postgres;

--
-- Name: players_1194; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players_1194 (
    player_id integer,
    group_id integer
);


ALTER TABLE public.players_1194 OWNER TO postgres;

--
-- Name: players_1783; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players_1783 (
    player_id integer,
    player_name character varying
);


ALTER TABLE public.players_1783 OWNER TO postgres;

--
-- Name: point_2d_612; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.point_2d_612 (
    x integer,
    y integer
);


ALTER TABLE public.point_2d_612 OWNER TO postgres;

--
-- Name: point_613; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.point_613 (
    x integer
);


ALTER TABLE public.point_613 OWNER TO postgres;

--
-- Name: points_1459; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.points_1459 (
    id integer,
    x_value integer,
    y_value integer
);


ALTER TABLE public.points_1459 OWNER TO postgres;

--
-- Name: product_1045; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_1045 (
    product_key integer
);


ALTER TABLE public.product_1045 OWNER TO postgres;

--
-- Name: product_1068; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_1068 (
    product_id integer,
    product_name character varying
);


ALTER TABLE public.product_1068 OWNER TO postgres;

--
-- Name: product_1082; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_1082 (
    product_id integer,
    product_name character varying,
    unit_price integer
);


ALTER TABLE public.product_1082 OWNER TO postgres;

--
-- Name: product_1384; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_1384 (
    product_id integer,
    product_name character varying
);


ALTER TABLE public.product_1384 OWNER TO postgres;

--
-- Name: products_1164; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_1164 (
    product_id integer,
    new_price integer,
    change_date date
);


ALTER TABLE public.products_1164 OWNER TO postgres;

--
-- Name: products_1549; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_1549 (
    product_id integer,
    product_name character varying,
    price integer
);


ALTER TABLE public.products_1549 OWNER TO postgres;

--
-- Name: products_1596; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_1596 (
    product_id integer,
    product_name character varying,
    price integer
);


ALTER TABLE public.products_1596 OWNER TO postgres;

--
-- Name: project_1075; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_1075 (
    project_id integer,
    employee_id integer
);


ALTER TABLE public.project_1075 OWNER TO postgres;

--
-- Name: project_1077; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_1077 (
    project_id integer,
    employee_id integer
);


ALTER TABLE public.project_1077 OWNER TO postgres;

--
-- Name: queries_1211; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.queries_1211 (
    query_name character varying,
    result character varying,
    "position" integer,
    rating integer
);


ALTER TABLE public.queries_1211 OWNER TO postgres;

--
-- Name: queries_1421; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.queries_1421 (
    id integer,
    year integer
);


ALTER TABLE public.queries_1421 OWNER TO postgres;

--
-- Name: queue_1204; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.queue_1204 (
    person_id integer,
    person_name character varying,
    weight integer,
    turn integer
);


ALTER TABLE public.queue_1204 OWNER TO postgres;

--
-- Name: removals_1132; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.removals_1132 (
    post_id integer,
    remove_date date
);


ALTER TABLE public.removals_1132 OWNER TO postgres;

--
-- Name: request_accepted_597; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request_accepted_597 (
    requester_id integer,
    accepter_id integer,
    accepted_date date
);


ALTER TABLE public.request_accepted_597 OWNER TO postgres;

--
-- Name: request_accepted_602; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request_accepted_602 (
    requester_id integer,
    accepter_id integer,
    accepted_date date
);


ALTER TABLE public.request_accepted_602 OWNER TO postgres;

--
-- Name: rides_1635; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rides_1635 (
    ride_id integer,
    user_id integer,
    requested_at date
);


ALTER TABLE public.rides_1635 OWNER TO postgres;

--
-- Name: rides_1645; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rides_1645 (
    ride_id integer,
    user_id integer,
    requested_at date
);


ALTER TABLE public.rides_1645 OWNER TO postgres;

--
-- Name: rides_1651; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rides_1651 (
    ride_id integer,
    user_id integer,
    requested_at date
);


ALTER TABLE public.rides_1651 OWNER TO postgres;

--
-- Name: salaries_1468; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries_1468 (
    company_id integer,
    employee_id integer,
    employee_name character varying,
    salary integer
);


ALTER TABLE public.salaries_1468 OWNER TO postgres;

--
-- Name: salary_615; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary_615 (
    id integer,
    employee_id integer,
    amount integer,
    pay_date date
);


ALTER TABLE public.salary_615 OWNER TO postgres;

--
-- Name: salary_627; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary_627 (
    id integer,
    name character varying,
    sex character(1),
    salary integer
);


ALTER TABLE public.salary_627 OWNER TO postgres;

--
-- Name: sales_1068; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_1068 (
    sale_id integer,
    product_id integer,
    year integer,
    quantity integer,
    price integer
);


ALTER TABLE public.sales_1068 OWNER TO postgres;

--
-- Name: sales_1082; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_1082 (
    seller_id integer,
    product_id integer,
    buyer_id integer,
    sale_date date,
    quantity integer,
    price integer
);


ALTER TABLE public.sales_1082 OWNER TO postgres;

--
-- Name: sales_1384; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_1384 (
    product_id integer,
    period_start character varying,
    period_end date,
    average_daily_sales integer
);


ALTER TABLE public.sales_1384 OWNER TO postgres;

--
-- Name: sales_1445; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_1445 (
    sale_date date,
    fruit character varying,
    sold_num integer
);


ALTER TABLE public.sales_1445 OWNER TO postgres;

--
-- Name: salesperson_607; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salesperson_607 (
    sales_id integer,
    name character varying(20),
    salary integer,
    commission_rate double precision,
    hire_date date
);


ALTER TABLE public.salesperson_607 OWNER TO postgres;

--
-- Name: scores_1308; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scores_1308 (
    player_name character varying,
    gender character varying,
    day date,
    score_points integer
);


ALTER TABLE public.scores_1308 OWNER TO postgres;

--
-- Name: seat_626; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seat_626 (
    id integer,
    student character varying
);


ALTER TABLE public.seat_626 OWNER TO postgres;

--
-- Name: spending_1127; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spending_1127 (
    user_id integer,
    spend_date date,
    platform character varying,
    amount integer
);


ALTER TABLE public.spending_1127 OWNER TO postgres;

--
-- Name: stadium_601; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stadium_601 (
    id integer,
    visit_date date,
    people integer
);


ALTER TABLE public.stadium_601 OWNER TO postgres;

--
-- Name: stocks_1393; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stocks_1393 (
    stock_name character varying,
    operation character varying,
    operation_day integer,
    price integer
);


ALTER TABLE public.stocks_1393 OWNER TO postgres;

--
-- Name: student_580; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_580 (
    student_id integer,
    student_name character varying,
    gender character(1),
    dept_id integer
);


ALTER TABLE public.student_580 OWNER TO postgres;

--
-- Name: student_618; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_618 (
    name character varying,
    continent character varying
);


ALTER TABLE public.student_618 OWNER TO postgres;

--
-- Name: students_1412; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_1412 (
    student_id integer,
    student_name character varying
);


ALTER TABLE public.students_1412 OWNER TO postgres;

--
-- Name: succeeded_1225; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.succeeded_1225 (
    success_date date
);


ALTER TABLE public.succeeded_1225 OWNER TO postgres;

--
-- Name: surveylog_578; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.surveylog_578 (
    uid integer,
    action character varying,
    question_id integer,
    answer_id integer,
    q_num integer,
    "timestamp" integer
);


ALTER TABLE public.surveylog_578 OWNER TO postgres;

--
-- Name: tasks_1767; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks_1767 (
    task_id integer,
    subtasks_count integer
);


ALTER TABLE public.tasks_1767 OWNER TO postgres;

--
-- Name: teams_1212; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams_1212 (
    team_id integer,
    team_name character varying
);


ALTER TABLE public.teams_1212 OWNER TO postgres;

--
-- Name: traffic_1107; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.traffic_1107 (
    user_id integer,
    activity character varying,
    activity_date date
);


ALTER TABLE public.traffic_1107 OWNER TO postgres;

--
-- Name: transactions_1193; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions_1193 (
    id integer,
    country character varying,
    state character varying,
    amount integer,
    trans_date date
);


ALTER TABLE public.transactions_1193 OWNER TO postgres;

--
-- Name: transactions_1205; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions_1205 (
    id integer,
    country character varying,
    state character varying,
    amount integer,
    trans_date date
);


ALTER TABLE public.transactions_1205 OWNER TO postgres;

--
-- Name: transactions_1336; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions_1336 (
    user_id integer,
    transaction_date date,
    amount integer
);


ALTER TABLE public.transactions_1336 OWNER TO postgres;

--
-- Name: transactions_1555; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions_1555 (
    trans_id integer,
    paid_by integer,
    paid_to integer,
    amount integer,
    transacted_on date
);


ALTER TABLE public.transactions_1555 OWNER TO postgres;

--
-- Name: transactions_1831; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions_1831 (
    transactions_id integer,
    day timestamp without time zone,
    amount integer
);


ALTER TABLE public.transactions_1831 OWNER TO postgres;

--
-- Name: tree_608; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tree_608 (
    id integer,
    p_id integer
);


ALTER TABLE public.tree_608 OWNER TO postgres;

--
-- Name: triangle_610; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.triangle_610 (
    x integer,
    y integer,
    z integer
);


ALTER TABLE public.triangle_610 OWNER TO postgres;

--
-- Name: trips_262; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_262 (
    id integer,
    client_id integer,
    driver_id integer,
    city_id integer,
    status character varying,
    request_at date
);


ALTER TABLE public.trips_262 OWNER TO postgres;

--
-- Name: user_activity_1369; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_activity_1369 (
    username character varying,
    activity character varying,
    start_date date,
    end_date date
);


ALTER TABLE public.user_activity_1369 OWNER TO postgres;

--
-- Name: user_visits_1709; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_visits_1709 (
    user_id integer,
    visit_date date
);


ALTER TABLE public.user_visits_1709 OWNER TO postgres;

--
-- Name: users_1158; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_1158 (
    user_id integer,
    join_date date,
    favorite_brand character varying
);


ALTER TABLE public.users_1158 OWNER TO postgres;

--
-- Name: users_1159; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_1159 (
    user_id integer,
    join_date date,
    favorite_brand character varying
);


ALTER TABLE public.users_1159 OWNER TO postgres;

--
-- Name: users_1341; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_1341 (
    user_id integer,
    name character varying
);


ALTER TABLE public.users_1341 OWNER TO postgres;

--
-- Name: users_1555; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_1555 (
    user_id integer,
    user_name character varying,
    credit integer
);


ALTER TABLE public.users_1555 OWNER TO postgres;

--
-- Name: users_1811; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_1811 (
    user_id integer,
    mail character varying,
    name character varying
);


ALTER TABLE public.users_1811 OWNER TO postgres;

--
-- Name: users_262; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_262 (
    user_id integer,
    banned character varying,
    role character varying
);


ALTER TABLE public.users_262 OWNER TO postgres;

--
-- Name: variables_1440; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variables_1440 (
    name character varying,
    value integer
);


ALTER TABLE public.variables_1440 OWNER TO postgres;

--
-- Name: views_1148; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.views_1148 (
    article_id integer,
    author_id integer,
    viewer_id integer,
    view_date date
);


ALTER TABLE public.views_1148 OWNER TO postgres;

--
-- Name: views_1149; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.views_1149 (
    article_id integer,
    author_id integer,
    viewer_id integer,
    view_date date
);


ALTER TABLE public.views_1149 OWNER TO postgres;

--
-- Name: visits_1336; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visits_1336 (
    user_id integer,
    visit_date date
);


ALTER TABLE public.visits_1336 OWNER TO postgres;

--
-- Name: vote_574; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vote_574 (
    id integer,
    candidate_id integer
);


ALTER TABLE public.vote_574 OWNER TO postgres;

--
-- Name: weather_197; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weather_197 (
    id integer NOT NULL,
    record_date date,
    temperature integer
);


ALTER TABLE public.weather_197 OWNER TO postgres;

--
-- Name: world_595; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.world_595 (
    name character varying(20),
    continent character varying(20),
    area bigint,
    population bigint,
    gdp bigint
);


ALTER TABLE public.world_595 OWNER TO postgres;

--
-- Data for Name: accepted_rides_1635; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accepted_rides_1635 (ride_id, driver_id, ride_distance, ride_duration) FROM stdin;
10	10	63	38
13	10	73	96
7	8	100	28
17	7	119	68
20	1	121	92
5	7	42	101
2	4	6	38
11	8	37	43
15	8	108	82
12	8	38	34
14	1	90	74
\.


--
-- Data for Name: accepted_rides_1645; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accepted_rides_1645 (ride_id, driver_id, ride_distance, ride_duration) FROM stdin;
10	10	63	38
13	10	73	96
7	8	100	28
17	7	119	68
20	1	121	92
5	7	42	101
2	4	6	38
11	8	37	43
15	8	108	82
12	8	38	34
14	1	90	74
\.


--
-- Data for Name: accepted_rides_1651; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accepted_rides_1651 (ride_id, driver_id, ride_distance, ride_duration) FROM stdin;
10	10	63	38
13	10	73	96
7	8	100	28
17	7	119	68
20	1	121	92
5	7	42	101
2	4	6	38
11	8	37	43
15	8	108	82
12	8	38	34
14	1	90	74
\.


--
-- Data for Name: accounts_1454; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_1454 (id, name) FROM stdin;
1	Winston
7	Jonathan
\.


--
-- Data for Name: actions_1113; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actions_1113 (user_id, post_id, action_date, action, extra) FROM stdin;
1	1	2019-07-01	view	\N
1	1	2019-07-01	like	\N
1	1	2019-07-01	share	\N
2	4	2019-07-04	view	\N
2	4	2019-07-04	report	spam
3	4	2019-07-04	view	\N
3	4	2019-07-04	report	spam
4	3	2019-07-02	view	\N
4	3	2019-07-02	report	spam
5	2	2019-07-04	view	\N
5	2	2019-07-04	report	racism
5	5	2019-07-04	view	\N
5	5	2019-07-04	report	racism
\.


--
-- Data for Name: actions_1132; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actions_1132 (user_id, post_id, action_date, action, extra) FROM stdin;
1	1	2019-07-01	view	\N
1	1	2019-07-01	like	\N
1	1	2019-07-01	share	\N
2	2	2019-07-04	view	\N
2	2	2019-07-04	report	spam
3	4	2019-07-04	view	\N
3	4	2019-07-04	report	spam
4	3	2019-07-02	view	\N
4	3	2019-07-02	report	spam
5	2	2019-07-03	view	\N
5	2	2019-07-03	report	racism
5	5	2019-07-03	view	\N
5	5	2019-07-03	report	racism
\.


--
-- Data for Name: activities_1355; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activities_1355 (id, name) FROM stdin;
1	Eating
2	Singing
3	Horse Riding
\.


--
-- Data for Name: activity_1097; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_1097 (player_id, device_id, event_date, games_played) FROM stdin;
1	2	2016-03-01	5
1	2	2016-03-02	6
2	3	2017-06-25	1
3	1	2016-03-01	0
3	4	2016-07-03	5
\.


--
-- Data for Name: activity_1141; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_1141 (user_id, session_id, activity_date, activity_type) FROM stdin;
1	1	2019-07-20	open_session
1	1	2019-07-20	scroll_down
1	1	2019-07-20	end_session
2	4	2019-07-20	open_session
2	4	2019-07-21	send_message
2	4	2019-07-21	end_session
3	2	2019-07-21	open_session
3	2	2019-07-21	send_message
3	2	2019-07-21	end_session
4	3	2019-06-25	open_session
4	3	2019-06-25	end_session
\.


--
-- Data for Name: activity_1142; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_1142 (user_id, session_id, activity_date, activity_type) FROM stdin;
1	1	2019-07-20	open_session
1	1	2019-07-20	scroll_down
1	1	2019-07-20	end_session
2	4	2019-07-20	open_session
2	4	2019-07-21	send_message
2	4	2019-07-21	end_session
3	2	2019-07-21	open_session
3	2	2019-07-21	send_message
3	2	2019-07-21	end_session
3	5	2019-07-21	open_session
3	5	2019-07-21	scroll_message
3	5	2019-07-21	end_session
4	3	2019-06-25	open_session
4	3	2019-06-25	end_session
\.


--
-- Data for Name: activity_511; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_511 (player_id, device_id, event_date, games_played) FROM stdin;
1	2	2016-03-01	5
1	2	2016-05-02	6
2	3	2017-06-25	1
3	1	2016-03-02	0
3	4	2018-07-03	5
\.


--
-- Data for Name: activity_534; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_534 (player_id, device_id, event_date, games_played) FROM stdin;
1	2	2016-03-01	5
1	2	2016-05-02	6
1	3	2017-06-25	1
3	1	2016-03-02	0
3	4	2018-07-03	5
\.


--
-- Data for Name: activity_550; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_550 (player_id, device_id, event_date, games_played) FROM stdin;
1	2	2016-03-01	5
1	2	2016-03-02	6
2	3	2017-06-25	1
3	1	2016-03-02	0
3	4	2018-07-03	5
\.


--
-- Data for Name: activity_550_tc_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity_550_tc_2 (player_id, device_id, event_date, games_played) FROM stdin;
1	2	2016-03-01	5
1	2	2016-03-02	6
2	3	2017-06-25	1
3	1	2016-03-02	0
3	4	2018-07-03	5
3	5	2018-07-04	2
\.


--
-- Data for Name: actor_director_1050; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actor_director_1050 (actor_id, director_id, "timestamp") FROM stdin;
1	1	0
1	1	1
1	1	2
1	2	3
1	2	4
2	1	5
2	1	6
\.


--
-- Data for Name: amz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.amz (oid, item, qty) FROM stdin;
O2	A2	1
O3	A3	3
O1	A1	15
\.


--
-- Data for Name: bonus_577; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bonus_577 ("empId", bonus) FROM stdin;
2	500
4	2000
\.


--
-- Data for Name: books_1098; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_1098 (book_id, name, available_from) FROM stdin;
1	Kalila And Demna	2010-01-01
2	28 Letters	2012-05-12
3	The Hobbit	2019-06-10
4	13 Reasons Why	2019-06-01
5	The Hunger Games	2008-09-21
\.


--
-- Data for Name: boxes_1715; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boxes_1715 (box_id, chest_id, apple_count, orange_count) FROM stdin;
2	\N	6	15
18	14	4	15
19	3	8	4
12	2	19	20
20	6	12	9
8	6	9	9
3	14	16	7
\.


--
-- Data for Name: calls_1501; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calls_1501 (caller_id, callee_id, duration) FROM stdin;
1	9	33
2	9	4
1	2	59
3	12	102
3	12	330
12	3	5
7	9	13
7	1	3
9	7	1
1	7	7
\.


--
-- Data for Name: calls_1699; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calls_1699 (from_id, to_id, duration) FROM stdin;
1	2	59
2	1	11
1	3	20
3	4	100
3	4	200
3	4	200
4	3	499
\.


--
-- Data for Name: candidate_574; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.candidate_574 (id, name) FROM stdin;
1	A
2	B
3	C
4	D
5	E
\.


--
-- Data for Name: championships_1783; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.championships_1783 (year, wimbledon, fr_open, us_open, au_open) FROM stdin;
2018	1	1	1	1
2019	1	1	2	2
2020	2	1	2	2
\.


--
-- Data for Name: chargebacks_1205; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chargebacks_1205 (trans_id, charge_date) FROM stdin;
102	2019-05-29
101	2019-06-30
105	2019-09-18
\.


--
-- Data for Name: chests_1715; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chests_1715 (chest_id, apple_count, orange_count) FROM stdin;
6	5	6
14	20	10
2	8	8
3	19	4
16	19	19
\.


--
-- Data for Name: cinema_603; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cinema_603 (seat_id, free) FROM stdin;
1	1
2	0
3	1
4	1
5	1
\.


--
-- Data for Name: cinema_620; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cinema_620 (id, movie, description, rating) FROM stdin;
1	War	great 3D	8.9
2	Science	fiction	8.5
3	irish	boring	6.2
4	Ice song	Fantacy	8.6
5	House card	Interesting	9.1
\.


--
-- Data for Name: company_607; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_607 (com_id, name, city) FROM stdin;
1	RED	Boston
2	ORANGE	New York
3	YELLOW	Boston
4	GREEN	Austin
\.


--
-- Data for Name: contacts_1364; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_1364 (user_id, contact_name, contact_email) FROM stdin;
1	Bob	bob@leetcode.com
1	John	john@leetcode.com
1	Jal	jaleetcode.com
2	Omar	omar@leetcode.com
2	Meir	meir@leetcode.com
6	Alice	alice@leetcode.com
\.


--
-- Data for Name: contests_1811; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contests_1811 (contest_id, gold_medal, silver_medal, bronz_medal) FROM stdin;
190	1	5	2
191	2	3	5
192	5	2	3
193	1	3	5
194	4	5	2
195	4	2	1
196	1	5	2
\.


--
-- Data for Name: country_1501; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country_1501 (name, country_code) FROM stdin;
Peru	051
Israel	972
Morocco	212
Germany	049
Ethiopia	251
\.


--
-- Data for Name: courses_596; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_596 (student, class) FROM stdin;
A	Math
B	English
C	Math
D	Biology
E	Math
F	Computer
G	Math
H	Math
I	Math
\.


--
-- Data for Name: customer_1045; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_1045 (customer_id, product_key) FROM stdin;
1	5
2	6
3	5
3	6
1	6
\.


--
-- Data for Name: customer_1321; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_1321 (customer_id, name, visited_on, amount) FROM stdin;
1	Jhon	2019-01-01	100
2	Daniel	2019-01-02	110
3	Jade	2019-01-03	120
4	Khaled	2019-01-04	130
5	Winston	2019-01-05	110
6	Elvis	2019-01-06	140
7	Anna	2019-01-07	150
8	Maria	2019-01-08	80
9	Jaze	2019-01-09	110
1	Jhon	2019-01-10	130
3	Jade	2019-01-10	150
\.


--
-- Data for Name: customer_584; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_584 (id, name, reference_id) FROM stdin;
1	Will	\N
2	Jane	\N
3	Alex	2
4	Bill	\N
5	Zack	1
6	Mark	2
\.


--
-- Data for Name: customers_1364; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_1364 (customer_id, customer_name, email) FROM stdin;
1	Alice	alice@leetcode.com
2	Bob	bob@leetcode.com
13	John	john@leetcode.com
6	Alex	alex@leetcode.com
\.


--
-- Data for Name: customers_1398; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_1398 (customer_id, customer_name) FROM stdin;
1	Daniel
2	Diana
3	Elizabeth
4	Jhon
\.


--
-- Data for Name: customers_1532; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_1532 (customer_id, name) FROM stdin;
1	Winston
2	Jonathan
3	Annabelle
4	Marwan
5	Khaled
\.


--
-- Data for Name: customers_1549; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_1549 (customer_id, name) FROM stdin;
1	Winston
2	Jonathan
3	Annabelle
4	Marwan
5	Khaled
\.


--
-- Data for Name: customers_1596; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_1596 (customer_id, name) FROM stdin;
1	Alice
2	Bob
3	Tom
4	Jerry
5	John
\.


--
-- Data for Name: customers_1613; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_1613 (customer_id, customer_name) FROM stdin;
1	Alice
4	Bob
5	Charlie
\.


--
-- Data for Name: customers_183; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_183 (id, name) FROM stdin;
1	Joe
2	Henry
3	Sam
4	Max
\.


--
-- Data for Name: delivery_1173; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery_1173 (delivery_id, customer_id, order_date, customer_pref_delivery_date) FROM stdin;
1	1	2019-08-01	2019-08-02
2	5	2019-08-02	2019-08-02
3	1	2019-08-11	2019-08-11
4	3	2019-08-24	2019-08-26
5	4	2019-08-21	2019-08-22
6	2	2019-08-11	2019-08-13
\.


--
-- Data for Name: delivery_1174; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery_1174 (delivery_id, customer_id, order_date, customer_pref_delivery_date) FROM stdin;
1	1	2019-08-01	2019-08-02
2	2	2019-08-02	2019-08-02
3	1	2019-08-11	2019-08-12
4	3	2019-08-24	2019-08-24
5	3	2019-08-21	2019-08-22
6	2	2019-08-11	2019-08-13
7	4	2019-08-09	2019-08-09
\.


--
-- Data for Name: department_1179; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_1179 (id, revenue, month) FROM stdin;
1	8000	Jan
2	9000	Jan
3	10000	Feb
1	7000	Feb
1	6000	Mar
\.


--
-- Data for Name: department_184; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_184 (id, name) FROM stdin;
1	IT
2	Sales
\.


--
-- Data for Name: department_185; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_185 (id, name) FROM stdin;
1	IT
2	Sales
\.


--
-- Data for Name: department_580; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_580 (dept_id, dept_name) FROM stdin;
1	Engineering
2	Science
3	Law
\.


--
-- Data for Name: drivers_1635; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivers_1635 (driver_id, join_date) FROM stdin;
10	2019-12-10
8	2020-01-13
5	2020-02-16
7	2020-03-08
4	2020-05-17
1	2020-10-24
6	2021-01-05
\.


--
-- Data for Name: drivers_1645; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivers_1645 (driver_id, join_date) FROM stdin;
10	2019-12-10
8	2020-01-13
5	2020-02-16
7	2020-03-08
4	2020-05-17
1	2020-10-24
6	2021-01-05
\.


--
-- Data for Name: drivers_1651; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drivers_1651 (driver_id, join_date) FROM stdin;
10	2019-12-10
8	2020-01-13
5	2020-02-16
7	2020-03-08
4	2020-05-17
1	2020-10-24
6	2021-01-05
\.


--
-- Data for Name: emp_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emp_name (name) FROM stdin;
Khaled
Ali
John
Doe
\.


--
-- Data for Name: employee_1075; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_1075 (employee_id, name, experience_years) FROM stdin;
1	Khaled	3
2	Ali	2
3	John	1
4	Doe	2
\.


--
-- Data for Name: employee_1077; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_1077 (employee_id, name, experience_years) FROM stdin;
1	Khaled	3
2	Ali	2
4	Doe	2
3	John	3
\.


--
-- Data for Name: employee_181; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_181 (id, name, salary, manager_id) FROM stdin;
3	Sam	60000	\N
4	Max	90000	\N
1	Joe	70000	3
2	Henry	60000	4
\.


--
-- Data for Name: employee_184; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_184 (id, name, salary, department_id) FROM stdin;
1	Joe	70000	1
2	Jim	90000	1
3	Henry	80000	2
4	Sam	60000	2
5	Max	90000	1
\.


--
-- Data for Name: employee_185; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_185 (id, name, salary, department_id) FROM stdin;
1	Joe	85000	1
2	Henry	80000	2
3	Sam	60000	2
4	Max	90000	1
5	Janet	69000	1
6	Randy	85000	1
7	Will	70000	1
\.


--
-- Data for Name: employee_569; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_569 (id, company, salary) FROM stdin;
1	A	2341
2	A	341
3	A	15
4	A	15314
5	A	451
6	A	513
7	B	15
8	B	13
9	B	1154
10	B	1345
11	B	1221
12	B	234
13	C	2345
14	C	2645
15	C	2645
16	C	2652
17	C	65
\.


--
-- Data for Name: employee_570; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_570 (id, name, department, manager_id) FROM stdin;
101	John	A	\N
102	Dan	A	101
103	James	A	101
104	Amy	A	101
105	Anne	A	101
106	Ron	B	101
\.


--
-- Data for Name: employee_577; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_577 ("empId", name, supervisor, salary) FROM stdin;
3	Brad	\N	4000
1	John	3	1000
2	Dan	3	2000
4	Thomas	3	4000
\.


--
-- Data for Name: employee_579; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_579 (id, month, salary) FROM stdin;
1	1	20
2	1	20
1	2	30
2	2	30
3	2	40
1	3	40
3	3	60
1	4	60
3	4	70
\.


--
-- Data for Name: employee_615; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_615 (employee_id, department_id) FROM stdin;
1	1
2	2
3	2
\.


--
-- Data for Name: employees_1270; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_1270 (employee_id, employee_name, manager_id) FROM stdin;
1	Boss	1
3	Alice	3
2	Bob	1
4	Daniel	2
7	Luis	4
8	Jhon	3
9	Angela	8
77	Robert	1
\.


--
-- Data for Name: enrollments_1112; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments_1112 (student_id, course_id, grade) FROM stdin;
2	2	95
2	3	95
1	1	90
1	2	99
3	1	80
3	2	75
3	3	82
\.


--
-- Data for Name: events_1126; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_1126 (business_id, event_type, occurences) FROM stdin;
1	reviews	7
3	reviews	3
1	ads	11
2	ads	7
3	ads	6
1	page views	3
2	page views	12
\.


--
-- Data for Name: exams_1412; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exams_1412 (exam_id, student_id, score) FROM stdin;
10	1	70
10	2	80
10	3	90
20	1	80
30	1	70
30	3	80
30	4	90
40	1	60
40	2	70
40	4	80
\.


--
-- Data for Name: executed_1767; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.executed_1767 (task_id, subtask_id) FROM stdin;
1	2
3	1
3	2
3	3
3	4
\.


--
-- Data for Name: expressions_1440; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.expressions_1440 (left_operand, operator, right_operand) FROM stdin;
x	>	y
x	<	y
x	=	y
y	>	x
y	<	x
x	=	x
\.


--
-- Data for Name: failed_1225; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_1225 (fail_date) FROM stdin;
2018-12-28
2018-12-29
2019-01-04
2019-01-05
\.


--
-- Data for Name: follow_614; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_614 (followee, follower) FROM stdin;
A	B
B	C
B	D
D	E
\.


--
-- Data for Name: friend_request_597; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friend_request_597 (sender_id, send_to_id, request_date) FROM stdin;
1	2	2016-06-01
1	3	2016-06-01
1	4	2016-06-01
2	3	2016-06-02
3	4	2016-06-09
\.


--
-- Data for Name: friends_1355; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friends_1355 (id, name, activity) FROM stdin;
1	Jonathan D.	Eating
2	Jade W.	Singing
3	Victor J.	Singing
4	Elvis Q.	Eating
5	Daniel A.	Eating
6	Bob B.	Horse Riding
\.


--
-- Data for Name: friendship_1264; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friendship_1264 (user_id1, user_id2) FROM stdin;
1	2
1	3
1	4
2	3
2	4
2	5
6	1
\.


--
-- Data for Name: friendship_1892; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friendship_1892 (user1_id, user2_id) FROM stdin;
1	2
1	3
1	4
2	3
2	4
2	5
6	1
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (group_id, value) FROM stdin;
1	1
1	5
1	3
1	4
2	2
2	7
2	5
2	3
2	8
\.


--
-- Data for Name: insurance_585; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.insurance_585 (pid, tiv_2015, tiv_2016, lat, lon) FROM stdin;
1	10.00	5.00	10.00	10.00
2	20.00	20.00	20.00	20.00
3	10.00	30.00	20.00	20.00
4	10.00	40.00	40.00	40.00
\.


--
-- Data for Name: invoices_1364; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoices_1364 (invoice_id, price, user_id) FROM stdin;
77	100	1
88	200	1
99	300	2
66	400	2
55	500	13
44	60	6
\.


--
-- Data for Name: items_1158; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items_1158 (item_id, item_brand) FROM stdin;
1	Samsung
2	Lenovo
3	LG
4	HP
\.


--
-- Data for Name: items_1159; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items_1159 (item_id, item_brand) FROM stdin;
1	Samsung
2	Lenovo
3	LG
4	HP
\.


--
-- Data for Name: items_1479; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items_1479 (item_id, item_name, item_category) FROM stdin;
1	LC Alg. Book	Book
2	LC DB. Book	Book
3	LC SmartPhone	Phone
4	LC Phone 2020	Phone
5	LC SmartGlass	Glasses
6	LC T-Shirt XL	T-Shirt
\.


--
-- Data for Name: likes_1264; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes_1264 (user_id, page_id) FROM stdin;
1	88
2	23
3	24
4	56
5	11
6	33
2	77
3	77
6	88
\.


--
-- Data for Name: likes_1892; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes_1892 (user_id, page_id) FROM stdin;
1	88
2	23
3	24
4	56
5	11
6	33
2	77
3	77
6	88
\.


--
-- Data for Name: log_info_1747; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_info_1747 (account_id, ip_address, login, logout) FROM stdin;
1	1	2021-02-01 09:00:00	2021-02-01 09:30:00
1	2	2021-02-01 08:00:00	2021-02-01 11:30:00
2	6	2021-02-01 20:30:00	2021-02-01 22:00:00
2	7	2021-02-02 20:30:00	2021-02-02 22:00:00
3	9	2021-02-01 16:00:00	2021-02-01 16:59:59
3	13	2021-02-01 17:00:00	2021-02-01 17:59:59
4	10	2021-02-01 16:00:00	2021-02-01 17:00:00
4	11	2021-02-01 17:00:00	2021-02-01 17:59:59
\.


--
-- Data for Name: logins_1454; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logins_1454 (id, login_date) FROM stdin;
7	2020-05-30
1	2020-05-30
7	2020-05-31
7	2020-06-01
7	2020-06-02
7	2020-06-02
7	2020-06-03
1	2020-06-07
7	2020-06-10
\.


--
-- Data for Name: logs_1285; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logs_1285 (log_id) FROM stdin;
1
2
3
7
8
10
\.


--
-- Data for Name: matches_1194; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matches_1194 (match_id, first_player, second_player, first_score, second_score) FROM stdin;
1	15	45	3	0
2	30	25	1	2
3	30	15	2	0
4	40	20	5	2
5	35	50	1	1
\.


--
-- Data for Name: matches_1212; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matches_1212 (match_id, host_team, guest_team, host_goals, guest_goals) FROM stdin;
1	10	20	3	0
2	30	10	2	2
3	10	50	5	1
4	20	30	1	0
5	50	30	1	0
\.


--
-- Data for Name: movie_rating_1341; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_rating_1341 (movie_id, user_id, rating, created_at) FROM stdin;
1	1	3	2020-01-12
1	2	4	2020-02-11
1	3	2	2020-02-12
1	4	1	2020-01-01
2	1	5	2020-02-17
2	2	2	2020-02-01
2	3	2	2020-03-01
3	1	3	2020-02-22
3	2	4	2020-02-25
\.


--
-- Data for Name: movies_1341; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_1341 (movie_id, title) FROM stdin;
1	Avengers
2	Frozen 2
3	Joker
\.


--
-- Data for Name: npv_1421; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.npv_1421 (id, year, npv) FROM stdin;
1	2018	100
7	2020	30
13	2019	40
1	2019	113
2	2008	121
3	2009	12
11	2020	99
7	2019	0
\.


--
-- Data for Name: number_619; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.number_619 (num) FROM stdin;
8
8
3
3
1
4
5
6
\.


--
-- Data for Name: number_619_tc_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.number_619_tc_2 (num) FROM stdin;
8
8
3
3
\.


--
-- Data for Name: numbers_571; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.numbers_571 (number, frequency) FROM stdin;
0	7
1	1
2	3
3	1
\.


--
-- Data for Name: numbers_571_tc_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.numbers_571_tc_2 (number, frequency) FROM stdin;
0	7
1	2
2	3
3	2
\.


--
-- Data for Name: orders_1098; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1098 (order_id, book_id, quantity, dispatch_date) FROM stdin;
1	1	2	2018-07-26
2	1	1	2018-11-05
3	3	8	2019-06-11
4	4	6	2019-06-05
5	4	5	2019-06-20
6	5	9	2009-02-02
7	5	8	2010-04-13
\.


--
-- Data for Name: orders_1158; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1158 (order_id, order_date, item_id, buyer_id, seller_id) FROM stdin;
1	2019-08-01	4	1	2
2	2018-08-02	2	1	3
3	2019-08-03	3	2	3
4	2018-08-04	1	4	2
5	2018-08-04	1	3	4
6	2019-08-05	2	2	4
\.


--
-- Data for Name: orders_1159; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1159 (order_id, order_date, item_id, buyer_id, seller_id) FROM stdin;
1	2019-08-01	4	1	2
2	2019-08-02	2	1	3
3	2019-08-03	3	2	3
4	2019-08-04	1	4	2
5	2019-08-04	1	3	4
6	2019-08-05	2	2	4
\.


--
-- Data for Name: orders_1398; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1398 (order_id, customer_id, product_name) FROM stdin;
10	1	A
20	1	B
30	1	D
40	1	C
50	2	A
60	3	A
70	3	B
80	3	D
90	4	C
\.


--
-- Data for Name: orders_1479; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1479 (order_id, customer_id, order_date, item_id, quantity) FROM stdin;
1	1	2020-06-01	1	10
2	1	2020-06-08	2	10
3	2	2020-06-02	1	5
4	3	2020-06-03	3	5
5	4	2020-06-04	4	1
6	4	2020-06-05	5	5
7	5	2020-06-05	1	10
8	5	2020-06-14	4	5
9	5	2020-06-21	3	5
\.


--
-- Data for Name: orders_1532; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1532 (order_id, order_date, customer_id, cost) FROM stdin;
1	2020-07-31	1	30
2	2020-07-30	2	40
3	2020-07-31	3	70
4	2020-07-29	4	100
5	2020-06-10	1	1010
6	2020-08-01	2	102
7	2020-08-01	3	111
8	2020-08-03	1	99
9	2020-08-07	2	32
10	2020-07-15	1	2
\.


--
-- Data for Name: orders_1549; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1549 (order_id, order_date, customer_id, product_id) FROM stdin;
1	2020-07-31	1	1
2	2020-07-30	2	2
3	2020-08-29	3	3
4	2020-07-29	4	1
5	2020-06-10	1	2
6	2020-08-01	2	1
7	2020-08-01	3	1
8	2020-08-03	1	2
9	2020-08-07	2	3
10	2020-07-15	1	2
\.


--
-- Data for Name: orders_1596; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_1596 (order_id, order_date, customer_id, product_id) FROM stdin;
1	2020-07-31	1	1
2	2020-07-30	2	2
3	2020-08-29	3	3
4	2020-07-29	4	1
5	2020-06-10	1	2
6	2020-08-01	2	1
7	2020-08-01	3	3
8	2020-08-03	1	2
9	2020-08-07	2	3
10	2020-07-15	1	2
\.


--
-- Data for Name: orders_183; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_183 (id, customer_id) FROM stdin;
1	3
2	1
\.


--
-- Data for Name: orders_586; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_586 (order_number, customer_number, order_date, required_date, shipped_date, status, comment) FROM stdin;
1	1	2017-04-09	2017-04-13	2017-04-12	Closed	
2	2	2017-04-15	2017-04-20	2017-04-18	Closed	
3	3	2017-04-16	2017-04-25	2017-04-20	Closed	
4	3	2017-04-18	2017-04-28	2017-04-25	Closed	
\.


--
-- Data for Name: orders_607; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_607 (order_id, order_date, com_id, sales_id, amount) FROM stdin;
1	2014-01-01	3	4	100000
2	2014-01-02	3	5	5000
3	2014-01-03	1	1	50000
4	2014-01-04	1	4	25000
\.


--
-- Data for Name: person_1501; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_1501 (id, name, phone_number) FROM stdin;
3	Jonathan	051-1234567
12	Elvis	051-7654321
1	Moncef	212-1234567
2	Maroua	212-6523651
7	Meir	972-1234567
9	Rachel	972-0011100
\.


--
-- Data for Name: person_182; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_182 (id, email) FROM stdin;
1	a@b.com
2	c@d.com
3	a@b.com
\.


--
-- Data for Name: person_196; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_196 (id, email) FROM stdin;
1	john@example.com
2	bob@example.com
3	john@example.com
\.


--
-- Data for Name: person_196_ans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_196_ans (id, email) FROM stdin;
1	john@example.com
2	bob@example.com
\.


--
-- Data for Name: pivot_test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pivot_test (year, rain_days) FROM stdin;
2012	112
2012	112
2013	116
2014	111
2015	80
2016	110
2017	102
\.


--
-- Data for Name: pivot_test_rainfall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pivot_test_rainfall (city, year, month, rain_days) FROM stdin;
Lille	2017	1	9
Lille	2017	2	10
Lille	2017	3	9
Lille	2017	4	2
Lille	2017	5	9
Lille	2017	6	9
Lille	2017	7	7
Lille	2017	8	13
Lille	2017	9	12
Lille	2017	10	9
Lille	2017	11	15
Lille	2017	12	9
Lille	2016	1	17
Lille	2016	2	13
Lille	2016	3	14
Lille	2016	4	15
Lille	2016	5	13
Lille	2016	6	18
Lille	2016	7	8
Lille	2016	8	8
Lille	2016	9	5
Lille	2016	10	9
Lille	2016	11	14
Lille	2016	12	4
Lille	2015	1	14
Lille	2015	2	13
Lille	2015	3	10
Lille	2015	4	7
Lille	2015	5	8
Lille	2015	6	8
Lille	2015	7	13
Lille	2015	8	9
Lille	2015	9	11
Lille	2015	10	9
Lille	2015	11	16
Lille	2015	12	10
Lille	2014	1	19
Lille	2014	2	17
Lille	2014	3	8
Lille	2014	4	6
Lille	2014	5	11
Lille	2014	6	8
Lille	2014	7	12
Lille	2014	8	18
Lille	2014	9	5
Lille	2014	10	12
Lille	2014	11	8
Lille	2014	12	12
Lille	2013	1	10
Lille	2013	2	9
Lille	2013	3	7
Lille	2013	4	7
Lille	2013	5	17
Lille	2013	6	9
Lille	2013	7	6
Lille	2013	8	5
Lille	2013	9	11
Lille	2013	10	14
Lille	2013	11	15
Lille	2013	12	10
Lille	2012	1	12
Lille	2012	2	5
Lille	2012	3	4
Lille	2012	4	18
Lille	2012	5	8
Lille	2012	6	16
Lille	2012	7	15
Lille	2012	8	9
Lille	2012	9	6
Lille	2012	10	20
Lille	2012	11	16
Lille	2012	12	24
Marseille	2017	1	4
Marseille	2017	2	6
Marseille	2017	3	8
Marseille	2017	4	6
Marseille	2017	5	4
Marseille	2017	6	3
Marseille	2017	7	0
Marseille	2017	8	2
Marseille	2017	9	3
Marseille	2017	10	0
Marseille	2017	11	1
Marseille	2017	12	6
Marseille	2016	1	3
Marseille	2016	2	7
Marseille	2016	3	4
Marseille	2016	4	7
Marseille	2016	5	7
Marseille	2016	6	0
Marseille	2016	7	2
Marseille	2016	8	1
Marseille	2016	9	3
Marseille	2016	10	9
Marseille	2016	11	8
Marseille	2016	12	3
Marseille	2015	1	6
Marseille	2015	2	9
Marseille	2015	3	8
Marseille	2015	4	5
Marseille	2015	5	0
Marseille	2015	6	4
Marseille	2015	7	0
Marseille	2015	8	5
Marseille	2015	9	3
Marseille	2015	10	6
Marseille	2015	11	5
Marseille	2015	12	2
Marseille	2014	1	10
Marseille	2014	2	14
Marseille	2014	3	2
Marseille	2014	4	3
Marseille	2014	5	2
Marseille	2014	6	3
Marseille	2014	7	3
Marseille	2014	8	7
Marseille	2014	9	6
Marseille	2014	10	2
Marseille	2014	11	12
Marseille	2014	12	4
Marseille	2013	1	6
Marseille	2013	2	2
Marseille	2013	3	11
Marseille	2013	4	9
Marseille	2013	5	7
Marseille	2013	6	1
Marseille	2013	7	3
Marseille	2013	8	1
Marseille	2013	9	3
Marseille	2013	10	6
Marseille	2013	11	8
Marseille	2013	12	6
Marseille	2012	1	4
Marseille	2012	2	1
Marseille	2012	3	2
Marseille	2012	4	7
Marseille	2012	5	4
Marseille	2012	6	2
Marseille	2012	7	2
Marseille	2012	8	4
Marseille	2012	9	6
Marseille	2012	10	6
Marseille	2012	11	7
Marseille	2012	12	2
Paris	2017	1	8
Paris	2017	2	8
Paris	2017	3	9
Paris	2017	4	3
Paris	2017	5	8
Paris	2017	6	9
Paris	2017	7	9
Paris	2017	8	11
Paris	2017	9	11
Paris	2017	10	8
Paris	2017	11	10
Paris	2017	12	16
Paris	2016	1	11
Paris	2016	2	9
Paris	2016	3	14
Paris	2016	4	14
Paris	2016	5	14
Paris	2016	6	13
Paris	2016	7	4
Paris	2016	8	5
Paris	2016	9	10
Paris	2016	10	9
Paris	2016	11	13
Paris	2016	12	4
Paris	2015	1	11
Paris	2015	2	9
Paris	2015	3	6
Paris	2015	4	6
Paris	2015	5	9
Paris	2015	6	0
Paris	2015	7	4
Paris	2015	8	10
Paris	2015	9	9
Paris	2015	10	6
Paris	2015	11	10
Paris	2015	12	5
Paris	2014	1	13
Paris	2014	2	16
Paris	2014	3	3
Paris	2014	4	8
Paris	2014	5	17
Paris	2014	6	8
Paris	2014	7	11
Paris	2014	8	11
Paris	2014	9	2
Paris	2014	10	9
Paris	2014	11	6
Paris	2014	12	9
Paris	2013	1	14
Paris	2013	2	11
Paris	2013	3	9
Paris	2013	4	4
Paris	2013	5	15
Paris	2013	6	9
Paris	2013	7	6
Paris	2013	8	5
Paris	2013	9	9
Paris	2013	10	8
Paris	2013	11	11
Paris	2013	12	10
Paris	2012	1	7
Paris	2012	2	1
Paris	2012	3	3
Paris	2012	4	14
Paris	2012	5	7
Paris	2012	6	17
Paris	2012	7	9
Paris	2012	8	3
Paris	2012	9	8
Paris	2012	10	16
Paris	2012	11	10
Paris	2012	12	19
Nantes	2017	1	10
Nantes	2017	2	14
Nantes	2017	3	11
Nantes	2017	4	2
Nantes	2017	5	9
Nantes	2017	6	6
Nantes	2017	7	9
Nantes	2017	8	6
Nantes	2017	9	13
Nantes	2017	10	9
Nantes	2017	11	7
Nantes	2017	12	14
Nantes	2016	1	19
Nantes	2016	2	15
Nantes	2016	3	10
Nantes	2016	4	7
Nantes	2016	5	11
Nantes	2016	6	10
Nantes	2016	7	4
Nantes	2016	8	4
Nantes	2016	9	4
Nantes	2016	10	5
Nantes	2016	11	14
Nantes	2016	12	3
Nantes	2015	1	16
Nantes	2015	2	10
Nantes	2015	3	9
Nantes	2015	4	5
Nantes	2015	5	10
Nantes	2015	6	3
Nantes	2015	7	6
Nantes	2015	8	9
Nantes	2015	9	10
Nantes	2015	10	7
Nantes	2015	11	14
Nantes	2015	12	12
Nantes	2014	1	20
Nantes	2014	2	24
Nantes	2014	3	9
Nantes	2014	4	11
Nantes	2014	5	13
Nantes	2014	6	6
Nantes	2014	7	9
Nantes	2014	8	10
Nantes	2014	9	1
Nantes	2014	10	10
Nantes	2014	11	15
Nantes	2014	12	14
Nantes	2013	1	19
Nantes	2013	2	10
Nantes	2013	3	11
Nantes	2013	4	8
Nantes	2013	5	10
Nantes	2013	6	9
Nantes	2013	7	8
Nantes	2013	8	4
Nantes	2013	9	8
Nantes	2013	10	18
Nantes	2013	11	14
Nantes	2013	12	13
Nantes	2012	1	6
Nantes	2012	2	5
Nantes	2012	3	7
Nantes	2012	4	14
Nantes	2012	5	7
Nantes	2012	6	14
Nantes	2012	7	10
Nantes	2012	8	6
Nantes	2012	9	5
Nantes	2012	10	19
Nantes	2012	11	10
Nantes	2012	12	21
Bordeaux	2017	1	7
Bordeaux	2017	2	8
Bordeaux	2017	3	11
Bordeaux	2017	4	5
Bordeaux	2017	5	10
Bordeaux	2017	6	11
Bordeaux	2017	7	7
Bordeaux	2017	8	6
Bordeaux	2017	9	16
Bordeaux	2017	10	4
Bordeaux	2017	11	8
Bordeaux	2017	12	17
Bordeaux	2016	1	20
Bordeaux	2016	2	15
Bordeaux	2016	3	17
Bordeaux	2016	4	15
Bordeaux	2016	5	8
Bordeaux	2016	6	10
Bordeaux	2016	7	4
Bordeaux	2016	8	2
Bordeaux	2016	9	4
Bordeaux	2016	10	4
Bordeaux	2016	11	14
Bordeaux	2016	12	4
Bordeaux	2015	1	15
Bordeaux	2015	2	13
Bordeaux	2015	3	8
Bordeaux	2015	4	6
Bordeaux	2015	5	7
Bordeaux	2015	6	5
Bordeaux	2015	7	6
Bordeaux	2015	8	9
Bordeaux	2015	9	9
Bordeaux	2015	10	8
Bordeaux	2015	11	10
Bordeaux	2015	12	5
Bordeaux	2014	1	20
Bordeaux	2014	2	22
Bordeaux	2014	3	10
Bordeaux	2014	4	11
Bordeaux	2014	5	10
Bordeaux	2014	6	8
Bordeaux	2014	7	11
Bordeaux	2014	8	10
Bordeaux	2014	9	2
Bordeaux	2014	10	8
Bordeaux	2014	11	14
Bordeaux	2014	12	11
Bordeaux	2013	1	18
Bordeaux	2013	2	13
Bordeaux	2013	3	13
Bordeaux	2013	4	8
Bordeaux	2013	5	15
Bordeaux	2013	6	9
Bordeaux	2013	7	4
Bordeaux	2013	8	5
Bordeaux	2013	9	14
Bordeaux	2013	10	13
Bordeaux	2013	11	16
Bordeaux	2013	12	10
Bordeaux	2012	1	11
Bordeaux	2012	2	4
Bordeaux	2012	3	5
Bordeaux	2012	4	18
Bordeaux	2012	5	7
Bordeaux	2012	6	8
Bordeaux	2012	7	8
Bordeaux	2012	8	3
Bordeaux	2012	9	6
Bordeaux	2012	10	16
Bordeaux	2012	11	12
Bordeaux	2012	12	18
Metz	2017	1	8
Metz	2017	2	11
Metz	2017	3	7
Metz	2017	4	2
Metz	2017	5	8
Metz	2017	6	9
Metz	2017	7	14
Metz	2017	8	7
Metz	2017	9	11
Metz	2017	10	7
Metz	2017	11	14
Metz	2017	12	17
Metz	2016	1	14
Metz	2016	2	10
Metz	2016	3	12
Metz	2016	4	12
Metz	2016	5	16
Metz	2016	6	17
Metz	2016	7	9
Metz	2016	8	3
Metz	2016	9	5
Metz	2016	10	8
Metz	2016	11	13
Metz	2016	12	3
Metz	2015	1	16
Metz	2015	2	8
Metz	2015	3	6
Metz	2015	4	8
Metz	2015	5	8
Metz	2015	6	9
Metz	2015	7	7
Metz	2015	8	5
Metz	2015	9	9
Metz	2015	10	5
Metz	2015	11	9
Metz	2015	12	3
Metz	2014	1	10
Metz	2014	2	12
Metz	2014	3	3
Metz	2014	4	1
Metz	2014	5	12
Metz	2014	6	4
Metz	2014	7	14
Metz	2014	8	15
Metz	2014	9	7
Metz	2014	10	13
Metz	2014	11	10
Metz	2014	12	9
Metz	2013	1	10
Metz	2013	2	7
Metz	2013	3	7
Metz	2013	4	8
Metz	2013	5	19
Metz	2013	6	8
Metz	2013	7	5
Metz	2013	8	8
Metz	2013	9	10
Metz	2013	10	12
Metz	2013	11	15
Metz	2013	12	11
Metz	2012	1	12
Metz	2012	2	4
Metz	2012	3	3
Metz	2012	4	11
Metz	2012	5	6
Metz	2012	6	15
Metz	2012	7	9
Metz	2012	8	6
Metz	2012	9	6
Metz	2012	10	6
Metz	2012	11	6
Metz	2012	12	14
Nice	2017	1	5
Nice	2017	2	8
Nice	2017	3	5
Nice	2017	4	7
Nice	2017	5	2
Nice	2017	6	1
Nice	2017	7	0
Nice	2017	8	0
Nice	2017	9	4
Nice	2017	10	0
Nice	2017	11	5
Nice	2017	12	6
Nice	2016	1	3
Nice	2016	2	8
Nice	2016	3	5
Nice	2016	4	4
Nice	2016	5	5
Nice	2016	6	4
Nice	2016	7	1
Nice	2016	8	1
Nice	2016	9	2
Nice	2016	10	9
Nice	2016	11	8
Nice	2016	12	2
Nice	2015	1	4
Nice	2015	2	9
Nice	2015	3	7
Nice	2015	4	5
Nice	2015	5	1
Nice	2015	6	3
Nice	2015	7	0
Nice	2015	8	3
Nice	2015	9	6
Nice	2015	10	7
Nice	2015	11	2
Nice	2015	12	3
Nice	2014	1	14
Nice	2014	2	14
Nice	2014	3	3
Nice	2014	4	2
Nice	2014	5	4
Nice	2014	6	5
Nice	2014	7	4
Nice	2014	8	3
Nice	2014	9	2
Nice	2014	10	4
Nice	2014	11	15
Nice	2014	12	8
Nice	2013	1	10
Nice	2013	2	6
Nice	2013	3	17
Nice	2013	4	10
Nice	2013	5	7
Nice	2013	6	2
Nice	2013	7	1
Nice	2013	8	2
Nice	2013	9	3
Nice	2013	10	5
Nice	2013	11	7
Nice	2013	12	7
Nice	2012	1	4
Nice	2012	2	0
Nice	2012	3	2
Nice	2012	4	8
Nice	2012	5	8
Nice	2012	6	1
Nice	2012	7	1
Nice	2012	8	1
Nice	2012	9	6
Nice	2012	10	8
Nice	2012	11	10
Nice	2012	12	4
Lyon	2017	1	7
Lyon	2017	2	8
Lyon	2017	3	8
Lyon	2017	4	4
Lyon	2017	5	13
Lyon	2017	6	11
Lyon	2017	7	7
Lyon	2017	8	10
Lyon	2017	9	5
Lyon	2017	10	5
Lyon	2017	11	10
Lyon	2017	12	14
Lyon	2016	1	12
Lyon	2016	2	13
Lyon	2016	3	10
Lyon	2016	4	11
Lyon	2016	5	16
Lyon	2016	6	12
Lyon	2016	7	6
Lyon	2016	8	6
Lyon	2016	9	4
Lyon	2016	10	9
Lyon	2016	11	10
Lyon	2016	12	1
Lyon	2015	1	10
Lyon	2015	2	9
Lyon	2015	3	9
Lyon	2015	4	7
Lyon	2015	5	6
Lyon	2015	6	7
Lyon	2015	7	5
Lyon	2015	8	5
Lyon	2015	9	6
Lyon	2015	10	6
Lyon	2015	11	5
Lyon	2015	12	5
Lyon	2014	1	10
Lyon	2014	2	15
Lyon	2014	3	4
Lyon	2014	4	9
Lyon	2014	5	10
Lyon	2014	6	5
Lyon	2014	7	17
Lyon	2014	8	10
Lyon	2014	9	4
Lyon	2014	10	9
Lyon	2014	11	11
Lyon	2014	12	7
Lyon	2013	1	10
Lyon	2013	2	11
Lyon	2013	3	12
Lyon	2013	4	10
Lyon	2013	5	18
Lyon	2013	6	7
Lyon	2013	7	6
Lyon	2013	8	5
Lyon	2013	9	8
Lyon	2013	10	10
Lyon	2013	11	14
Lyon	2013	12	5
Lyon	2012	1	11
Lyon	2012	2	4
Lyon	2012	3	5
Lyon	2012	4	18
Lyon	2012	5	8
Lyon	2012	6	15
Lyon	2012	7	8
Lyon	2012	8	9
Lyon	2012	9	8
Lyon	2012	10	8
Lyon	2012	11	7
Lyon	2012	12	11
Toulouse	2017	1	6
Toulouse	2017	2	7
Toulouse	2017	3	10
Toulouse	2017	4	3
Toulouse	2017	5	11
Toulouse	2017	6	6
Toulouse	2017	7	7
Toulouse	2017	8	7
Toulouse	2017	9	9
Toulouse	2017	10	2
Toulouse	2017	11	9
Toulouse	2017	12	12
Toulouse	2016	1	15
Toulouse	2016	2	12
Toulouse	2016	3	11
Toulouse	2016	4	10
Toulouse	2016	5	12
Toulouse	2016	6	10
Toulouse	2016	7	7
Toulouse	2016	8	3
Toulouse	2016	9	3
Toulouse	2016	10	5
Toulouse	2016	11	11
Toulouse	2016	12	3
Toulouse	2015	1	8
Toulouse	2015	2	11
Toulouse	2015	3	13
Toulouse	2015	4	7
Toulouse	2015	5	7
Toulouse	2015	6	5
Toulouse	2015	7	7
Toulouse	2015	8	8
Toulouse	2015	9	5
Toulouse	2015	10	4
Toulouse	2015	11	6
Toulouse	2015	12	2
Toulouse	2014	1	13
Toulouse	2014	2	16
Toulouse	2014	3	6
Toulouse	2014	4	11
Toulouse	2014	5	12
Toulouse	2014	6	6
Toulouse	2014	7	9
Toulouse	2014	8	10
Toulouse	2014	9	6
Toulouse	2014	10	2
Toulouse	2014	11	13
Toulouse	2014	12	7
Toulouse	2013	1	15
Toulouse	2013	2	9
Toulouse	2013	3	15
Toulouse	2013	4	12
Toulouse	2013	5	14
Toulouse	2013	6	7
Toulouse	2013	7	4
Toulouse	2013	8	4
Toulouse	2013	9	5
Toulouse	2013	10	7
Toulouse	2013	11	18
Toulouse	2013	12	6
Toulouse	2012	1	6
Toulouse	2012	2	3
Toulouse	2012	3	5
Toulouse	2012	4	14
Toulouse	2012	5	8
Toulouse	2012	6	8
Toulouse	2012	7	4
Toulouse	2012	8	8
Toulouse	2012	9	5
Toulouse	2012	10	8
Toulouse	2012	11	5
Toulouse	2012	12	12
Ajaccio	2017	1	7
Ajaccio	2017	2	5
Ajaccio	2017	3	4
Ajaccio	2017	4	3
Ajaccio	2017	5	2
Ajaccio	2017	6	3
Ajaccio	2017	7	0
Ajaccio	2017	8	0
Ajaccio	2017	9	3
Ajaccio	2017	10	2
Ajaccio	2017	11	8
Ajaccio	2017	12	14
Ajaccio	2016	1	12
Ajaccio	2016	2	16
Ajaccio	2016	3	9
Ajaccio	2016	4	5
Ajaccio	2016	5	6
Ajaccio	2016	6	4
Ajaccio	2016	7	1
Ajaccio	2016	8	1
Ajaccio	2016	9	6
Ajaccio	2016	10	7
Ajaccio	2016	11	10
Ajaccio	2016	12	4
Ajaccio	2015	1	4
Ajaccio	2015	2	12
Ajaccio	2015	3	5
Ajaccio	2015	4	4
Ajaccio	2015	5	1
Ajaccio	2015	6	1
Ajaccio	2015	7	1
Ajaccio	2015	8	0
Ajaccio	2015	9	4
Ajaccio	2015	10	9
Ajaccio	2015	11	5
Ajaccio	2015	12	2
Ajaccio	2014	1	15
Ajaccio	2014	2	13
Ajaccio	2014	3	7
Ajaccio	2014	4	4
Ajaccio	2014	5	3
Ajaccio	2014	6	3
Ajaccio	2014	7	6
Ajaccio	2014	8	0
Ajaccio	2014	9	4
Ajaccio	2014	10	3
Ajaccio	2014	11	11
Ajaccio	2014	12	9
Ajaccio	2013	1	13
Ajaccio	2013	2	11
Ajaccio	2013	3	18
Ajaccio	2013	4	10
Ajaccio	2013	5	10
Ajaccio	2013	6	2
Ajaccio	2013	7	0
Ajaccio	2013	8	1
Ajaccio	2013	9	5
Ajaccio	2013	10	6
Ajaccio	2013	11	10
Ajaccio	2013	12	5
Ajaccio	2012	1	5
Ajaccio	2012	2	4
Ajaccio	2012	3	2
Ajaccio	2012	4	17
Ajaccio	2012	5	6
Ajaccio	2012	6	1
Ajaccio	2012	7	0
Ajaccio	2012	8	1
Ajaccio	2012	9	6
Ajaccio	2012	10	10
Ajaccio	2012	11	8
Ajaccio	2012	12	9
Perpignan	2017	1	7
Perpignan	2017	2	6
Perpignan	2017	3	6
Perpignan	2017	4	3
Perpignan	2017	5	2
Perpignan	2017	6	5
Perpignan	2017	7	2
Perpignan	2017	8	3
Perpignan	2017	9	7
Perpignan	2017	10	3
Perpignan	2017	11	0
Perpignan	2017	12	4
Perpignan	2016	1	3
Perpignan	2016	2	8
Perpignan	2016	3	8
Perpignan	2016	4	7
Perpignan	2016	5	9
Perpignan	2016	6	4
Perpignan	2016	7	4
Perpignan	2016	8	3
Perpignan	2016	9	3
Perpignan	2016	10	7
Perpignan	2016	11	8
Perpignan	2016	12	5
Perpignan	2015	1	3
Perpignan	2015	2	8
Perpignan	2015	3	6
Perpignan	2015	4	6
Perpignan	2015	5	3
Perpignan	2015	6	4
Perpignan	2015	7	3
Perpignan	2015	8	2
Perpignan	2015	9	4
Perpignan	2015	10	5
Perpignan	2015	11	4
Perpignan	2015	12	0
Perpignan	2014	1	4
Perpignan	2014	2	3
Perpignan	2014	3	4
Perpignan	2014	4	4
Perpignan	2014	5	5
Perpignan	2014	6	2
Perpignan	2014	7	6
Perpignan	2014	8	6
Perpignan	2014	9	4
Perpignan	2014	10	2
Perpignan	2014	11	9
Perpignan	2014	12	5
Perpignan	2013	1	4
Perpignan	2013	2	4
Perpignan	2013	3	10
Perpignan	2013	4	7
Perpignan	2013	5	9
Perpignan	2013	6	3
Perpignan	2013	7	5
Perpignan	2013	8	2
Perpignan	2013	9	3
Perpignan	2013	10	1
Perpignan	2013	11	6
Perpignan	2013	12	2
Perpignan	2012	1	3
Perpignan	2012	2	1
Perpignan	2012	3	4
Perpignan	2012	4	8
Perpignan	2012	5	4
Perpignan	2012	6	3
Perpignan	2012	7	2
Perpignan	2012	8	4
Perpignan	2012	9	4
Perpignan	2012	10	9
Perpignan	2012	11	3
Perpignan	2012	12	3
Brest	2017	1	11
Brest	2017	2	18
Brest	2017	3	16
Brest	2017	4	6
Brest	2017	5	10
Brest	2017	6	6
Brest	2017	7	9
Brest	2017	8	7
Brest	2017	9	17
Brest	2017	10	9
Brest	2017	11	16
Brest	2017	12	19
Brest	2016	1	25
Brest	2016	2	19
Brest	2016	3	16
Brest	2016	4	17
Brest	2016	5	9
Brest	2016	6	15
Brest	2016	7	12
Brest	2016	8	9
Brest	2016	9	13
Brest	2016	10	6
Brest	2016	11	16
Brest	2016	12	8
Brest	2015	1	24
Brest	2015	2	18
Brest	2015	3	10
Brest	2015	4	10
Brest	2015	5	12
Brest	2015	6	5
Brest	2015	7	13
Brest	2015	8	18
Brest	2015	9	7
Brest	2015	10	10
Brest	2015	11	17
Brest	2015	12	16
Brest	2014	1	24
Brest	2014	2	25
Brest	2014	3	12
Brest	2014	4	10
Brest	2014	5	16
Brest	2014	6	6
Brest	2014	7	8
Brest	2014	8	14
Brest	2014	9	2
Brest	2014	10	17
Brest	2014	11	25
Brest	2014	12	21
Brest	2013	1	22
Brest	2013	2	12
Brest	2013	3	15
Brest	2013	4	13
Brest	2013	5	12
Brest	2013	6	11
Brest	2013	7	4
Brest	2013	8	8
Brest	2013	9	11
Brest	2013	10	18
Brest	2013	11	18
Brest	2013	12	17
Brest	2012	1	16
Brest	2012	2	7
Brest	2012	3	8
Brest	2012	4	20
Brest	2012	5	12
Brest	2012	6	16
Brest	2012	7	14
Brest	2012	8	11
Brest	2012	9	11
Brest	2012	10	18
Brest	2012	11	18
Brest	2012	12	27
Dijon	2017	1	7
Dijon	2017	2	7
Dijon	2017	3	6
Dijon	2017	4	3
Dijon	2017	5	13
Dijon	2017	6	10
Dijon	2017	7	8
Dijon	2017	8	7
Dijon	2017	9	12
Dijon	2017	10	4
Dijon	2017	11	9
Dijon	2017	12	17
Dijon	2016	1	15
Dijon	2016	2	12
Dijon	2016	3	13
Dijon	2016	4	13
Dijon	2016	5	15
Dijon	2016	6	11
Dijon	2016	7	3
Dijon	2016	8	5
Dijon	2016	9	8
Dijon	2016	10	7
Dijon	2016	11	12
Dijon	2016	12	2
Dijon	2015	1	14
Dijon	2015	2	10
Dijon	2015	3	9
Dijon	2015	4	8
Dijon	2015	5	7
Dijon	2015	6	5
Dijon	2015	7	3
Dijon	2015	8	10
Dijon	2015	9	8
Dijon	2015	10	7
Dijon	2015	11	6
Dijon	2015	12	6
Dijon	2014	1	14
Dijon	2014	2	14
Dijon	2014	3	4
Dijon	2014	4	6
Dijon	2014	5	9
Dijon	2014	6	7
Dijon	2014	7	13
Dijon	2014	8	14
Dijon	2014	9	3
Dijon	2014	10	9
Dijon	2014	11	12
Dijon	2014	12	11
Dijon	2013	1	11
Dijon	2013	2	11
Dijon	2013	3	11
Dijon	2013	4	10
Dijon	2013	5	17
Dijon	2013	6	9
Dijon	2013	7	6
Dijon	2013	8	6
Dijon	2013	9	8
Dijon	2013	10	15
Dijon	2013	11	13
Dijon	2013	12	7
Dijon	2012	1	11
Dijon	2012	2	3
Dijon	2012	3	4
Dijon	2012	4	13
Dijon	2012	5	11
Dijon	2012	6	15
Dijon	2012	7	6
Dijon	2012	8	7
Dijon	2012	9	9
Dijon	2012	10	10
Dijon	2012	11	10
Dijon	2012	12	15
\.


--
-- Data for Name: players_1194; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players_1194 (player_id, group_id) FROM stdin;
15	1
25	1
30	1
45	1
10	2
35	2
50	2
20	3
40	3
\.


--
-- Data for Name: players_1783; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players_1783 (player_id, player_name) FROM stdin;
1	Nadal
2	Federer
3	Novak
\.


--
-- Data for Name: point_2d_612; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.point_2d_612 (x, y) FROM stdin;
-1	-1
0	0
-1	-2
\.


--
-- Data for Name: point_613; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.point_613 (x) FROM stdin;
-1
0
2
\.


--
-- Data for Name: points_1459; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.points_1459 (id, x_value, y_value) FROM stdin;
1	2	8
2	4	7
3	2	10
\.


--
-- Data for Name: product_1045; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_1045 (product_key) FROM stdin;
5
6
\.


--
-- Data for Name: product_1068; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_1068 (product_id, product_name) FROM stdin;
100	Nokia
200	Apple
300	Samsung
\.


--
-- Data for Name: product_1082; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_1082 (product_id, product_name, unit_price) FROM stdin;
1	S8	1000
2	G4	800
3	iPhone	1400
\.


--
-- Data for Name: product_1384; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_1384 (product_id, product_name) FROM stdin;
1	LC Phone
2	LC T-Shirt
3	LC Keychain
\.


--
-- Data for Name: products_1164; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_1164 (product_id, new_price, change_date) FROM stdin;
1	20	2019-08-14
2	50	2019-08-14
1	30	2019-08-15
1	35	2019-08-16
2	65	2019-08-17
3	20	2019-08-18
\.


--
-- Data for Name: products_1549; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_1549 (product_id, product_name, price) FROM stdin;
1	keyboard	120
2	mouse	80
3	screen	600
4	hard disk	450
\.


--
-- Data for Name: products_1596; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_1596 (product_id, product_name, price) FROM stdin;
1	keyboard	120
2	mouse	80
3	screen	600
4	hard disk	450
\.


--
-- Data for Name: project_1075; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_1075 (project_id, employee_id) FROM stdin;
1	1
1	2
1	3
2	1
2	4
\.


--
-- Data for Name: project_1077; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_1077 (project_id, employee_id) FROM stdin;
1	1
1	2
1	3
2	1
2	4
\.


--
-- Data for Name: queries_1211; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.queries_1211 (query_name, result, "position", rating) FROM stdin;
Dog	Golden Retriever	1	5
Dog	German Shepherd	2	5
Dog	Mule	200	2
Cat	Shirazi	5	2
Cat	Siamese	3	3
Cat	Sphynx	7	4
\.


--
-- Data for Name: queries_1421; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.queries_1421 (id, year) FROM stdin;
1	2019
2	2008
3	2009
7	2018
7	2019
7	2020
13	2019
\.


--
-- Data for Name: queue_1204; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.queue_1204 (person_id, person_name, weight, turn) FROM stdin;
5	George Washington	250	1
3	John Adams	350	2
6	Thomas Jefferson	400	3
2	Will Johnliams	200	4
4	Thomas Jefferson	175	5
1	James Elephant	500	6
\.


--
-- Data for Name: removals_1132; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.removals_1132 (post_id, remove_date) FROM stdin;
2	2019-07-20
3	2019-07-18
\.


--
-- Data for Name: request_accepted_597; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request_accepted_597 (requester_id, accepter_id, accepted_date) FROM stdin;
1	2	2016-06-03
1	3	2016-06-08
2	3	2016-06-08
3	4	2016-06-09
3	4	2016-06-10
\.


--
-- Data for Name: request_accepted_602; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request_accepted_602 (requester_id, accepter_id, accepted_date) FROM stdin;
1	2	2016-06-03
1	3	2016-06-08
2	3	2016-06-08
3	4	2016-06-09
\.


--
-- Data for Name: rides_1635; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rides_1635 (ride_id, user_id, requested_at) FROM stdin;
6	75	2019-12-09
1	54	2020-02-09
10	63	2020-03-04
19	39	2020-04-06
3	41	2020-06-03
13	52	2020-06-22
7	69	2020-07-16
17	70	2020-08-25
20	81	2020-11-02
5	57	2020-11-09
2	42	2020-12-09
11	68	2021-01-11
15	32	2021-01-17
12	11	2021-01-19
14	18	2021-01-27
\.


--
-- Data for Name: rides_1645; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rides_1645 (ride_id, user_id, requested_at) FROM stdin;
6	75	2019-12-09
1	54	2020-02-09
10	63	2020-03-04
19	39	2020-04-06
3	41	2020-06-03
13	52	2020-06-22
7	69	2020-07-16
17	70	2020-08-25
20	81	2020-11-02
5	57	2020-11-09
2	42	2020-12-09
11	68	2021-01-11
15	32	2021-01-17
12	11	2021-01-19
14	18	2021-01-27
\.


--
-- Data for Name: rides_1651; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rides_1651 (ride_id, user_id, requested_at) FROM stdin;
6	75	2019-12-09
1	54	2020-02-09
10	63	2020-03-04
19	39	2020-04-06
3	41	2020-06-03
13	52	2020-06-22
7	69	2020-07-16
17	70	2020-08-25
20	81	2020-11-02
5	57	2020-11-09
2	42	2020-12-09
11	68	2021-01-11
15	32	2021-01-17
12	11	2021-01-19
14	18	2021-01-27
\.


--
-- Data for Name: salaries_1468; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salaries_1468 (company_id, employee_id, employee_name, salary) FROM stdin;
1	1	Tony	2000
1	2	Pronub	21300
1	3	Tyrrox	10800
2	1	Pam	300
2	7	Bassem	450
2	9	Hermione	700
3	7	Bocaben	100
3	2	Ognjen	2200
3	13	Nyancat	3300
3	15	Morninngcat	1866
\.


--
-- Data for Name: salary_615; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salary_615 (id, employee_id, amount, pay_date) FROM stdin;
1	1	9000	2017-03-31
2	2	6000	2017-03-31
3	3	10000	2017-03-31
4	1	7000	2017-02-28
5	2	6000	2017-02-28
6	3	8000	2017-02-28
\.


--
-- Data for Name: salary_627; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salary_627 (id, name, sex, salary) FROM stdin;
1	A	m	2500
2	B	f	1500
3	C	m	5500
4	D	f	500
\.


--
-- Data for Name: sales_1068; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_1068 (sale_id, product_id, year, quantity, price) FROM stdin;
1	100	2008	10	5000
2	100	2009	12	5000
7	200	2011	15	9000
\.


--
-- Data for Name: sales_1082; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_1082 (seller_id, product_id, buyer_id, sale_date, quantity, price) FROM stdin;
1	1	1	2019-01-21	2	2000
1	2	2	2019-02-17	1	800
2	2	3	2019-06-02	1	800
3	3	4	2019-05-13	2	2800
\.


--
-- Data for Name: sales_1384; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_1384 (product_id, period_start, period_end, average_daily_sales) FROM stdin;
1	2019-01-25	2019-02-28	100
2	2018-12-01	2020-01-01	10
3	2019-12-01	2020-01-31	1
\.


--
-- Data for Name: sales_1445; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_1445 (sale_date, fruit, sold_num) FROM stdin;
2020-05-01	apples	10
2020-05-01	oranges	8
2020-05-02	apples	15
2020-05-02	oranges	15
2020-05-03	apples	20
2020-05-03	oranges	0
2020-05-04	apples	15
2020-05-04	oranges	16
\.


--
-- Data for Name: salesperson_607; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salesperson_607 (sales_id, name, salary, commission_rate, hire_date) FROM stdin;
1	John	100000	6	2006-04-01
2	Amy	120000	5	2010-05-01
3	Mark	65000	12	2006-12-25
4	Pam	25000	25	2006-01-01
5	Alex	50000	10	2006-02-03
\.


--
-- Data for Name: scores_1308; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scores_1308 (player_name, gender, day, score_points) FROM stdin;
Aron	F	2020-01-01	17
Alice	F	2020-01-07	23
Bajrang	M	2020-01-07	7
Khali	M	2019-12-25	11
Slaman	M	2019-12-30	13
Joe	M	2019-12-31	3
Jose	M	2019-12-18	2
Priya	F	2019-12-31	23
Priyanka	F	2019-12-30	17
\.


--
-- Data for Name: seat_626; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seat_626 (id, student) FROM stdin;
1	Abbot
2	Doris
3	Emerson
4	Green
5	Jeames
\.


--
-- Data for Name: spending_1127; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spending_1127 (user_id, spend_date, platform, amount) FROM stdin;
1	2019-07-01	mobile	100
1	2019-07-01	desktop	100
2	2019-07-01	mobile	100
2	2019-07-02	mobile	100
3	2019-07-01	desktop	100
3	2019-07-02	desktop	100
\.


--
-- Data for Name: stadium_601; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stadium_601 (id, visit_date, people) FROM stdin;
1	2017-01-01	10
2	2017-01-02	109
3	2017-01-03	150
4	2017-01-04	99
5	2017-01-05	145
6	2017-01-06	1455
7	2017-01-07	199
8	2017-01-08	188
\.


--
-- Data for Name: stocks_1393; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stocks_1393 (stock_name, operation, operation_day, price) FROM stdin;
Leetcode	Buy	1	1000
Corona Masks	Buy	2	10
Leetcode	Sell	5	9000
Handbags	Buy	17	30000
Corona Masks	Sell	3	1010
Corona Masks	Buy	4	1000
Corona Masks	Sell	5	500
Corona Masks	Buy	6	1000
Handbags	Sell	29	7000
Corona Masks	Sell	10	10000
\.


--
-- Data for Name: student_580; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_580 (student_id, student_name, gender, dept_id) FROM stdin;
1	Jack	M	1
2	Jane	F	1
3	Mark	M	2
\.


--
-- Data for Name: student_618; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_618 (name, continent) FROM stdin;
Jack	America
Pascal	Europe
Xi	Asia
Jane	America
\.


--
-- Data for Name: students_1412; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_1412 (student_id, student_name) FROM stdin;
1	Daniel
2	Jade
3	Stella
4	Jonathan
5	Will
\.


--
-- Data for Name: succeeded_1225; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.succeeded_1225 (success_date) FROM stdin;
2018-12-30
2018-12-31
2019-01-01
2019-01-02
2019-01-03
2019-01-06
\.


--
-- Data for Name: surveylog_578; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.surveylog_578 (uid, action, question_id, answer_id, q_num, "timestamp") FROM stdin;
5	show	285	\N	1	123
5	answer	285	124124	1	124
5	show	369	\N	2	125
5	skip	369	\N	2	126
\.


--
-- Data for Name: tasks_1767; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks_1767 (task_id, subtasks_count) FROM stdin;
1	3
2	2
3	4
\.


--
-- Data for Name: teams_1212; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams_1212 (team_id, team_name) FROM stdin;
10	Leetcode FC
20	NewYork FC
30	Atlanta FC
40	Chicago FC
50	Toronto FC
\.


--
-- Data for Name: traffic_1107; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.traffic_1107 (user_id, activity, activity_date) FROM stdin;
1	login	2019-05-01
1	homepage	2019-05-01
1	logout	2019-05-01
2	login	2019-06-21
2	logout	2019-06-21
3	login	2019-01-01
3	jobs	2019-01-01
3	logout	2019-01-01
4	login	2019-06-21
4	groups	2019-06-21
4	logout	2019-06-21
5	login	2019-03-01
5	logout	2019-03-01
5	login	2019-06-21
5	logout	2019-06-21
\.


--
-- Data for Name: transactions_1193; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions_1193 (id, country, state, amount, trans_date) FROM stdin;
121	US	approved	1000	2018-12-18
122	US	declined	2000	2018-12-19
123	US	approved	2000	2019-01-01
124	DE	approved	2000	2019-01-07
\.


--
-- Data for Name: transactions_1205; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions_1205 (id, country, state, amount, trans_date) FROM stdin;
101	US	approved	1000	2019-05-18
102	US	declined	2000	2019-05-19
103	US	approved	3000	2019-06-10
104	US	approved	4000	2019-06-13
105	US	approved	5000	2019-06-15
\.


--
-- Data for Name: transactions_1336; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions_1336 (user_id, transaction_date, amount) FROM stdin;
1	2020-01-02	120
2	2020-01-03	22
7	2020-01-11	232
1	2020-01-04	7
9	2020-01-25	33
9	2020-01-25	66
8	2020-01-28	1
9	2020-01-25	99
\.


--
-- Data for Name: transactions_1555; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions_1555 (trans_id, paid_by, paid_to, amount, transacted_on) FROM stdin;
1	1	3	400	2020-08-01
2	3	2	500	2020-08-02
3	2	1	200	2020-08-03
\.


--
-- Data for Name: transactions_1831; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions_1831 (transactions_id, day, amount) FROM stdin;
8	2021-04-03 15:57:28	57
9	2021-04-28 08:47:25	21
1	2021-04-29 13:28:30	58
5	2021-04-28 16:39:59	40
6	2021-04-29 23:39:28	58
\.


--
-- Data for Name: tree_608; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tree_608 (id, p_id) FROM stdin;
1	\N
2	1
3	1
4	2
5	2
\.


--
-- Data for Name: triangle_610; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.triangle_610 (x, y, z) FROM stdin;
13	15	30
10	20	15
\.


--
-- Data for Name: trips_262; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_262 (id, client_id, driver_id, city_id, status, request_at) FROM stdin;
1	1	10	1	completed	2013-10-01
2	2	11	1	cancelled_by_driver	2013-10-01
3	3	12	6	completed	2013-10-01
4	4	13	6	cancelled_by_client	2013-10-01
5	1	10	1	completed	2013-10-02
6	2	11	6	completed	2013-10-02
7	3	12	6	completed	2013-10-02
8	2	12	12	completed	2013-10-03
8	3	10	12	completed	2013-10-03
10	4	13	12	cancelled_by_driver	2013-10-03
\.


--
-- Data for Name: user_activity_1369; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_activity_1369 (username, activity, start_date, end_date) FROM stdin;
Alice	Travel	2020-02-12	2020-02-20
Alice	Dancing	2020-02-21	2020-02-23
Alice	Travel	2020-02-24	2020-02-28
Bob	Travel	2020-02-11	2020-02-18
\.


--
-- Data for Name: user_visits_1709; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_visits_1709 (user_id, visit_date) FROM stdin;
1	2020-11-28
1	2020-10-20
1	2020-12-03
2	2020-10-05
2	2020-12-09
3	2020-11-11
\.


--
-- Data for Name: users_1158; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_1158 (user_id, join_date, favorite_brand) FROM stdin;
1	2018-01-01	Lenovo
2	2018-02-09	Samsung
3	2018-01-19	LG
4	2018-05-21	HP
\.


--
-- Data for Name: users_1159; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_1159 (user_id, join_date, favorite_brand) FROM stdin;
1	2019-01-01	Lenovo
2	2019-02-09	Samsung
3	2019-01-19	LG
4	2019-05-21	HP
\.


--
-- Data for Name: users_1341; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_1341 (user_id, name) FROM stdin;
1	Daniel
2	Monica
3	Maria
4	James
\.


--
-- Data for Name: users_1555; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_1555 (user_id, user_name, credit) FROM stdin;
1	Moustafa	100
2	Jonathan	200
3	Winston	10000
4	Luis	800
\.


--
-- Data for Name: users_1811; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_1811 (user_id, mail, name) FROM stdin;
1	sarah@leetcode.com	Sarah
2	bob@leetcode.com	Bob
3	alice@leetcode.com	Alice
4	hercy@leetcode.com	Hercy
5	quarz@leetcode.com	Quarz
\.


--
-- Data for Name: users_262; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_262 (user_id, banned, role) FROM stdin;
1	No	client
2	Yes	client
3	No	client
4	No	client
10	No	driver
11	No	driver
12	No	driver
13	No	driver
\.


--
-- Data for Name: variables_1440; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variables_1440 (name, value) FROM stdin;
x	66
y	77
\.


--
-- Data for Name: views_1148; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.views_1148 (article_id, author_id, viewer_id, view_date) FROM stdin;
1	3	5	2019-08-01
1	3	6	2019-08-02
2	7	7	2019-08-01
2	7	6	2019-08-02
4	7	1	2019-07-22
3	4	4	2019-07-21
3	4	4	2019-07-21
\.


--
-- Data for Name: views_1149; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.views_1149 (article_id, author_id, viewer_id, view_date) FROM stdin;
1	3	5	2019-08-01
3	4	5	2019-08-01
1	3	6	2019-08-02
2	7	7	2019-08-01
2	7	6	2019-08-02
4	7	1	2019-07-22
3	4	4	2019-07-21
3	4	4	2019-07-21
\.


--
-- Data for Name: visits_1336; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visits_1336 (user_id, visit_date) FROM stdin;
1	2020-01-01
2	2020-01-02
12	2020-01-01
19	2020-01-03
1	2020-01-02
2	2020-01-03
1	2020-01-04
7	2020-01-11
9	2020-01-25
8	2020-01-28
\.


--
-- Data for Name: vote_574; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vote_574 (id, candidate_id) FROM stdin;
1	2
2	4
3	3
4	2
5	5
\.


--
-- Data for Name: weather_197; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weather_197 (id, record_date, temperature) FROM stdin;
1	2015-01-01	10
2	2015-01-02	25
3	2015-01-03	20
4	2015-01-04	30
\.


--
-- Data for Name: world_595; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.world_595 (name, continent, area, population, gdp) FROM stdin;
Afghanistan	Asia	652230	25500100	2043000
Albania	Europe	28748	2831741	12960000
Algeria	Africa	2381741	37100000	188681000
Andorra	Europe	468	78115	3712000
Angola	Africa	1246700	20609294	100990000
\.


--
-- Name: bonus_577 bonus_577_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus_577
    ADD CONSTRAINT bonus_577_pkey PRIMARY KEY ("empId");


--
-- Name: cinema_603 cinema_603_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cinema_603
    ADD CONSTRAINT cinema_603_pkey PRIMARY KEY (seat_id);


--
-- Name: customer_584 customer_584_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_584
    ADD CONSTRAINT customer_584_pkey PRIMARY KEY (id);


--
-- Name: customers_183 customers_183_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_183
    ADD CONSTRAINT customers_183_pkey PRIMARY KEY (id);


--
-- Name: employee_181 employee_181_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_181
    ADD CONSTRAINT employee_181_pkey PRIMARY KEY (id);


--
-- Name: employee_570 employee_570_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_570
    ADD CONSTRAINT employee_570_pkey PRIMARY KEY (id);


--
-- Name: employee_577 employee_577_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_577
    ADD CONSTRAINT employee_577_pkey PRIMARY KEY ("empId");


--
-- Name: orders_183 orders_183_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_183
    ADD CONSTRAINT orders_183_pkey PRIMARY KEY (id);


--
-- Name: orders_586 orders_586_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_586
    ADD CONSTRAINT orders_586_pkey PRIMARY KEY (order_number);


--
-- Name: person_182 person_182_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_182
    ADD CONSTRAINT person_182_pkey PRIMARY KEY (id);


--
-- Name: person_196 person_196_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_196
    ADD CONSTRAINT person_196_pkey PRIMARY KEY (id);


--
-- Name: weather_197 weather_197_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weather_197
    ADD CONSTRAINT weather_197_pkey PRIMARY KEY (id);


--
-- Name: orders_183 fk_cutomer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_183
    ADD CONSTRAINT fk_cutomer_id FOREIGN KEY (customer_id) REFERENCES public.customers_183(id);


--
-- Name: bonus_577 fk_emp_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus_577
    ADD CONSTRAINT fk_emp_id FOREIGN KEY ("empId") REFERENCES public.employee_577("empId");


--
-- Name: employee_181 fk_manager_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_181
    ADD CONSTRAINT fk_manager_id FOREIGN KEY (manager_id) REFERENCES public.employee_181(id);


--
-- Name: employee_570 fk_manager_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_570
    ADD CONSTRAINT fk_manager_id FOREIGN KEY (manager_id) REFERENCES public.employee_570(id);


--
-- Name: employee_577 fk_supervisor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_577
    ADD CONSTRAINT fk_supervisor FOREIGN KEY (supervisor) REFERENCES public.employee_577("empId");


--
-- PostgreSQL database dump complete
--

