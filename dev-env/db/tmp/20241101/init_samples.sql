DROP TABLE IF EXISTS samples;
CREATE TABLE samples (
    seq SERIAL PRIMARY KEY,
    id VARCHAR(255) NOT NULL,
    number INTEGER,
    string TEXT,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    updated_at TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

COMMENT ON TABLE samples IS 'サンプル';
COMMENT ON COLUMN samples.seq IS 'サンプルSEQ';
COMMENT ON COLUMN samples.id IS 'サンプルID';
COMMENT ON COLUMN samples.number IS 'サンプル数';
COMMENT ON COLUMN samples.string IS 'サンプル文字列';
COMMENT ON COLUMN samples.created_at IS '登録日時';
COMMENT ON COLUMN samples.updated_at IS '更新日時';

INSERT INTO samples (id, number, string, created_at, updated_at) 
VALUES ('0d861b64-371a-484f-800c-6afd05add48b', 111, 'sample_string1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO samples (id, number, string, created_at, updated_at) 
VALUES ('3dcf9c61-997e-48e9-b6c6-b26b1db684de', 222, 'sample_string2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO samples (id, number, string, created_at, updated_at) 
VALUES ('e3051e4b-55d3-4518-897e-4b065ec10a28', 333, 'sample_string3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO samples (id, number, string, created_at, updated_at) 
VALUES ('f3bc2d06-5442-44df-a463-7131004f7064', 444, 'sample_string4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO samples (id, number, string, created_at, updated_at) 
VALUES ('978beed7-229e-4667-86d1-ef4bcae75be1', 555, 'sample_string5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
