-- Attempt to create currencies -- too many NULL values and no details on different types currencies used only symbols

SELECT box_office FROM movies

--------------------

CREATE TABLE exchange_rates (
	currency_code VARCHAR(3) PRIMARY KEY,
	exchange_rate NUMERIC
);

--------------------

INSERT INTO exchange_rates (currency_code, exchange_rate) VALUES
('USD', 1.0),          -- Assuming USD is the base currency
('CAD', 1.35),         -- Example rate: 1 USD = 1.35 CAD
('EUR', 0.85),         -- Example rate: 1 USD = 0.85 EUR
('GBP', 0.75),         -- Example rate: 1 USD = 0.75 GBP
('JPY', 110.0),        -- Example rate: 1 USD = 110 JPY
('AUD', 1.45),         -- Example rate: 1 USD = 1.45 AUD
('CHF', 0.92),         -- Example rate: 1 USD = 0.92 CHF
('CNY', 6.45),         -- Example rate: 1 USD = 6.45 CNY
('INR', 74.0),         -- Example rate: 1 USD = 74 INR
('BRL', 5.3),          -- Example rate: 1 USD = 5.3 BRL
('RUB', 75.0),         -- Example rate: 1 USD = 75 RUB
('MXN', 20.0),         -- Example rate: 1 USD = 20 MXN
('ZAR', 14.5),         -- Example rate: 1 USD = 14.5 ZAR
('KRW', 1200.0),       -- Example rate: 1 USD = 1200 KRW
('SGD', 1.35),         -- Example rate: 1 USD = 1.35 SGD
('HKD', 7.75),         -- Example rate: 1 USD = 7.75 HKD
('NZD', 1.5),          -- Example rate: 1 USD = 1.5 NZD
('TRY', 8.5),          -- Example rate: 1 USD = 8.5 TRY
('NOK', 8.8),          -- Example rate: 1 USD = 8.8 NOK
('SEK', 8.6),          -- Example rate: 1 USD = 8.6 SEK
('DKK', 6.3),          -- Example rate: 1 USD = 6.3 DKK
('PLN', 3.8),          -- Example rate: 1 USD = 3.8 PLN
('THB', 31.0),         -- Example rate: 1 USD = 31 THB
('IDR', 14400.0),      -- Example rate: 1 USD = 14400 IDR
('HUF', 300.0);        -- Example rate: 1 USD = 300 HUF

-----------------

ALTER TABLE movies ADD COLUMN currency_code VARCHAR(3);

-------------------

UPDATE movies SET currency_code = 'USD' WHERE currency_code is NULL;

-------------------------

SELECT 
    m.movie_name,
    m.box_office,
    m.currency_code,
    CAST(m.box_office AS numeric) * e.exchange_rate AS box_office_in_cad
FROM 
    movies m
JOIN 
    exchange_rates e ON m.currency_code = e.currency_code
WHERE 
    e.currency_code = 'CAD';

	
-------------------------
	
CREATE OR REPLACE FUNCTION convert_currency(amount NUMERIC, from_currency VARCHAR, to_currency VARCHAR)
RETURNS NUMERIC AS $$
DECLARE
    from_rate NUMERIC;
    to_rate NUMERIC;
BEGIN
    SELECT exchange_rate INTO from_rate FROM exchange_rates WHERE currency_code = from_currency;
    SELECT exchange_rate INTO to_rate FROM exchange_rates WHERE currency_code = to_currency;

    IF from_rate IS NULL OR to_rate IS NULL THEN
        RAISE EXCEPTION 'Currency code not found';
    END IF;

    RETURN (amount / from_rate) * to_rate;
END;
$$ LANGUAGE plpgsql;

--------------------

WITH cad_rate AS (
    SELECT exchange_rate 
    FROM exchange_rates 
    WHERE currency_code = 'CAD'
),
cleaned_movies AS (
    SELECT
        movie_name,
        box_office,
        currency_code,
        CASE 
            WHEN regexp_replace(box_office, '[^0-9.]', '', 'g') ~ '\..*\.' THEN NULL
            ELSE CAST(
                NULLIF(
                    regexp_replace(
                        box_office, -- Remove non-numeric characters
                        '[^0-9.]', '', 'g'
                    ), 
                    ''
                ) AS numeric
            )
        END AS cleaned_box_office
    FROM 
        movies
)
SELECT 
    cm.movie_name,
    cm.box_office,
    cm.currency_code,
    cm.cleaned_box_office * er.exchange_rate / cad.exchange_rate AS box_office_in_cad
FROM 
    cleaned_movies cm
JOIN 
    exchange_rates er ON cm.currency_code = er.currency_code,
    cad_rate cad
WHERE 
    cm.cleaned_box_office IS NOT NULL;

	
-----------------------

CREATE VIEW movies_in_cad AS
SELECT 
    movie_name,
    box_office,
    currency_code,
    CAST(
        CASE 
            WHEN currency_code = 'CAD' THEN box_office::numeric -- If currency is CAD, no conversion needed
            ELSE box_office::numeric / (SELECT exchange_rate FROM exchange_rates WHERE currency_code = 'CAD') -- Convert to CAD using exchange rate
        END 
    AS numeric) AS box_office_in_cad
FROM 
    movies;

------------------

CREATE OR REPLACE FUNCTION convert_currency(amount NUMERIC, from_currency VARCHAR, to_currency VARCHAR)
RETURNS NUMERIC AS $$
DECLARE
    from_rate NUMERIC;
    to_rate NUMERIC;
BEGIN
    SELECT exchange_rate INTO from_rate FROM exchange_rates WHERE currency_code = from_currency;
    SELECT exchange_rate INTO to_rate FROM exchange_rates WHERE currency_code = to_currency;

    IF from_rate IS NULL OR to_rate IS NULL THEN
        RAISE EXCEPTION 'Currency code not found';
    END IF;

    -- Check if amount is a valid numeric value
    BEGIN
        RETURN (amount / from_rate) * to_rate;
    EXCEPTION
        WHEN OTHERS THEN
            RAISE EXCEPTION 'Invalid amount: %', amount;
    END;
END;
$$ LANGUAGE plpgsql;

------------

SELECT currency_code FROM movies
SELECT * FROM movies_in_cad
