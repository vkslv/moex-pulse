CREATE DATABASE IF NOT EXISTS moex;

CREATE TABLE IF NOT EXISTS moex.raw_quotes
(
    market_time DateTime,
    collected_at DateTime,
    ticker String,
    last_price Nullable(Float64),
    open_price Nullable(Float64),
    high_price Nullable(Float64),
    low_price Nullable(Float64),
    volume Nullable(Float64),
    value Nullable(Float64),
    source String
)
ENGINE = MergeTree
ORDER BY (ticker, collected_at);