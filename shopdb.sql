-- Creo lo schema ShopDB, se non esiste
create schema if not exists ShopDB;
use ShopDB;

-- Creazione della tabella Cliente
create table if not exists Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,  -- Aggiungo AUTO_INCREMENT per generare ID univoci
    Nome_clientecompleto VARCHAR(30),
    Numero_telefono VARCHAR(12),
    Indirizzo VARCHAR(30),
    EMAIL VARCHAR(30)
);

-- Creazione della tabella Ordine
create table if not exists Ordine (
    id_ordine INT PRIMARY KEY AUTO_INCREMENT,  -- Aggiungo AUTO_INCREMENT per generare ID univoci
    data_ordine DATE,
    data_spedizione DATE,
    stato VARCHAR(20),
    id_cliente INT,  -- Collega l'ordine al cliente
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) -- Relazione con Cliente
);


-- Inserimento dei dati nella tabella Cliente
insert into Cliente (Nome_clientecompleto, Numero_telefono, Indirizzo, EMAIL) 
values 
('Mario Rossi', '1234567890', 'Via Roma 123, Milano', 'mario.rossi@example.com'),
('Luca Bianchi', '0987654321', 'Corso Italia 456, Roma', 'luca.bianchi@example.com'),
('Giulia Verdi', '1122334455', 'Via Milano 789, Torino', 'giulia.verdi@example.com');

-- Inserimento dei dati nella tabella Ordine
insert into Ordine (data_ordine, data_spedizione, stato, id_cliente) 
values 
('2025-04-01', '2025-04-05', 'In lavorazione', 1),  -- Ordine associato al Cliente 1
('2025-04-02', '2025-04-06', 'Spedito', 2),        -- Ordine associato al Cliente 2
('2025-04-03', '2025-04-07', 'Consegnato', 3);      -- Ordine associato al Cliente 3
