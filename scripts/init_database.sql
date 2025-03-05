/*
=================================================================
create database et schema
=================================================================
Script purpose :
   thus script creates a new database named 'DataWarehouse' after checking if it already exists.
   If the database exits, it is dropped and recreated. Additionnally, the script sets up three schemas
within the database : 'bronze', 'silver', 'gold'.

*/

-- Vérifier et supprimer la base de données si elle existe
DO $$ 
BEGIN
   IF EXISTS (SELECT 1 FROM pg_database WHERE datname = 'DataWarehouse') THEN
      EXECUTE 'DROP DATABASE DataWarehouse';
   END IF;
END $$;

-- Créer la base de données 'DataWarehouse'
CREATE DATABASE DataWarehouse;

-- Se connecter à la base de données 'DataWarehouse' (non applicable dans pgAdmin, à faire manuellement)
-- \c DataWarehouse 

-- Exécuter les commandes suivantes après s'être connecté à la base 'DataWarehouse'
-- Créer le schéma 'bronze'
CREATE SCHEMA bronze;

-- Créer le schéma 'silver'
CREATE SCHEMA silver;

-- Créer le schéma 'gold'
CREATE SCHEMA gold;
