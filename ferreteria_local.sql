-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ferreteria_local
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleados` int NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(20) NOT NULL,
  `id_tipo_documento` int DEFAULT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_empleados`),
  KEY `id_tipo_documento` (`id_tipo_documento`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'1234567890',1,'Juan','Pérez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(2,'2345678901',1,'María','Gómez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(3,'3456789012',2,'Carlos','Rodríguez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(4,'4567890123',1,'Ana','Martínez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(5,'5678901234',1,'Luis','Fernández','2024-09-06 15:58:38','2024-09-06 15:58:38'),(6,'6789012345',1,'Sofía','López','2024-09-06 15:58:38','2024-09-06 15:58:38'),(7,'7890123456',2,'Miguel','García','2024-09-06 15:58:38','2024-09-06 15:58:38'),(8,'8901234567',1,'Laura','Hernández','2024-09-06 15:58:38','2024-09-06 15:58:38'),(9,'9012345678',1,'Pedro','Ramírez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(10,'0123456789',2,'Lucía','Torres','2024-09-06 15:58:38','2024-09-06 15:58:38'),(11,'1123456789',1,'Jorge','Mendoza','2024-09-06 15:58:38','2024-09-06 15:58:38'),(12,'2123456789',1,'Elena','Castro','2024-09-06 15:58:38','2024-09-06 15:58:38'),(13,'3123456789',2,'Andrés','Moreno','2024-09-06 15:58:38','2024-09-06 15:58:38'),(14,'4123456789',1,'Paula','Ríos','2024-09-06 15:58:38','2024-09-06 15:58:38'),(15,'5123456789',1,'Diego','Vargas','2024-09-06 15:58:38','2024-09-06 15:58:38');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_productos`
--

DROP TABLE IF EXISTS `factura_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_productos` (
  `id_factura_producto` int NOT NULL AUTO_INCREMENT,
  `id_facturas` int DEFAULT NULL,
  `id_productos` int DEFAULT NULL,
  PRIMARY KEY (`id_factura_producto`),
  KEY `id_facturas` (`id_facturas`),
  KEY `id_productos` (`id_productos`),
  CONSTRAINT `factura_productos_ibfk_1` FOREIGN KEY (`id_facturas`) REFERENCES `facturas` (`id_facturas`),
  CONSTRAINT `factura_productos_ibfk_2` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_productos`
--

LOCK TABLES `factura_productos` WRITE;
/*!40000 ALTER TABLE `factura_productos` DISABLE KEYS */;
INSERT INTO `factura_productos` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15);
/*!40000 ALTER TABLE `factura_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_facturas` int NOT NULL AUTO_INCREMENT,
  `id_usuarios` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_facturas`),
  KEY `id_usuarios` (`id_usuarios`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,'2024-09-06 15:58:38','2024-09-06 15:58:38',5),(2,2,'2024-09-06 15:58:38','2024-09-06 15:58:38',3),(3,3,'2024-09-06 15:58:38','2024-09-06 15:58:38',7),(4,4,'2024-09-06 15:58:38','2024-09-06 15:58:38',2),(5,5,'2024-09-06 15:58:38','2024-09-06 15:58:38',4),(6,6,'2024-09-06 15:58:38','2024-09-06 15:58:38',6),(7,7,'2024-09-06 15:58:38','2024-09-06 15:58:38',8),(8,8,'2024-09-06 15:58:38','2024-09-06 15:58:38',1),(9,9,'2024-09-06 15:58:38','2024-09-06 15:58:38',9),(10,10,'2024-09-06 15:58:38','2024-09-06 15:58:38',10),(11,11,'2024-09-06 15:58:38','2024-09-06 15:58:38',11),(12,12,'2024-09-06 15:58:38','2024-09-06 15:58:38',12),(13,13,'2024-09-06 15:58:38','2024-09-06 15:58:38',13),(14,14,'2024-09-06 15:58:38','2024-09-06 15:58:38',14),(15,15,'2024-09-06 15:58:38','2024-09-06 15:58:38',15);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int NOT NULL AUTO_INCREMENT,
  `id_tipo_producto` int DEFAULT NULL,
  `nombre_producto` varchar(70) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` tinytext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_productos`),
  KEY `id_tipo_producto` (`id_tipo_producto`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_tipo_producto`) REFERENCES `tipo_producto` (`id_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'Martillo',15000.00,50,'Martillo de acero','2024-09-06 15:58:38','2024-09-06 15:58:38'),(2,1,'Destornillador',8000.00,100,'Destornillador de estrella','2024-09-06 15:58:38','2024-09-06 15:58:38'),(3,2,'Cemento',25000.00,200,'Bolsa de cemento 50kg','2024-09-06 15:58:38','2024-09-06 15:58:38'),(4,2,'Ladrillo',500.00,1000,'Ladrillo rojo','2024-09-06 15:58:38','2024-09-06 15:58:38'),(5,3,'Pintura Blanca',30000.00,30,'Galón de pintura blanca','2024-09-06 15:58:38','2024-09-06 15:58:38'),(6,3,'Pintura Azul',32000.00,20,'Galón de pintura azul','2024-09-06 15:58:38','2024-09-06 15:58:38'),(7,4,'Taladro',120000.00,15,'Taladro eléctrico','2024-09-06 15:58:38','2024-09-06 15:58:38'),(8,1,'Sierra',18000.00,40,'Sierra manual','2024-09-06 15:58:38','2024-09-06 15:58:38'),(9,2,'Arena',10000.00,300,'Bolsa de arena 50kg','2024-09-06 15:58:38','2024-09-06 15:58:38'),(10,3,'Pintura Roja',31000.00,25,'Galón de pintura roja','2024-09-06 15:58:38','2024-09-06 15:58:38'),(11,4,'Lijadora',90000.00,10,'Lijadora eléctrica','2024-09-06 15:58:38','2024-09-06 15:58:38'),(12,1,'Alicate',12000.00,60,'Alicate de corte','2024-09-06 15:58:38','2024-09-06 15:58:38'),(13,2,'Grava',15000.00,150,'Bolsa de grava 50kg','2024-09-06 15:58:38','2024-09-06 15:58:38'),(14,3,'Pintura Verde',32000.00,20,'Galón de pintura verde','2024-09-06 15:58:38','2024-09-06 15:58:38'),(15,4,'Taladro Inalámbrico',150000.00,12,'Taladro inalámbrico','2024-09-06 15:58:38','2024-09-06 15:58:38');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int NOT NULL AUTO_INCREMENT,
  `tipo_de_documento` varchar(35) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'cedula de ciudadania'),(2,'cedula extranjera'),(3,'pasaporte de turista'),(4,'targeta de identidad');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_producto` (
  `id_tipo_producto` int NOT NULL AUTO_INCREMENT,
  `tipo_de_producto` varchar(35) NOT NULL,
  PRIMARY KEY (`id_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'Herramientas'),(2,'Materiales de Construcción'),(3,'Pinturas'),(4,'Electrodomésticos');
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(20) NOT NULL,
  `id_tipo_documento` int DEFAULT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuarios`),
  KEY `id_tipo_documento` (`id_tipo_documento`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'1234567890',1,'Juan','Pérez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(2,'2345678901',1,'María','Gómez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(3,'3456789012',2,'Carlos','Rodríguez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(4,'4567890123',1,'Ana','Martínez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(5,'5678901234',3,'Luis','Fernández','2024-09-06 15:58:38','2024-09-06 15:58:38'),(6,'6789012345',4,'Sofía','López','2024-09-06 15:58:38','2024-09-06 15:58:38'),(7,'7890123456',2,'Miguel','García','2024-09-06 15:58:38','2024-09-06 15:58:38'),(8,'8901234567',1,'Laura','Hernández','2024-09-06 15:58:38','2024-09-06 15:58:38'),(9,'9012345678',1,'Pedro','Ramírez','2024-09-06 15:58:38','2024-09-06 15:58:38'),(10,'0123456789',2,'Lucía','Torres','2024-09-06 15:58:38','2024-09-06 15:58:38'),(11,'1123456789',1,'Jorge','Mendoza','2024-09-06 15:58:38','2024-09-06 15:58:38'),(12,'2123456789',1,'Elena','Castro','2024-09-06 15:58:38','2024-09-06 15:58:38'),(13,'3123456789',2,'Andrés','Moreno','2024-09-06 15:58:38','2024-09-06 15:58:38'),(14,'4123456789',1,'Paula','Ríos','2024-09-06 15:58:38','2024-09-06 15:58:38'),(15,'5123456789',1,'Diego','Vargas','2024-09-06 15:58:38','2024-09-06 15:58:38');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 18:00:38
