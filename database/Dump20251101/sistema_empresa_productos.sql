CREATE DATABASE  IF NOT EXISTS `sistema_empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_empresa`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_empresa
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(50) NOT NULL,
  `idMarca` smallint DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `imagen` varchar(300) DEFAULT NULL,
  `precio_costo` decimal(8,2) DEFAULT NULL,
  `precio_venta` decimal(8,2) DEFAULT NULL,
  `existencia` int DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProducto`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Smartphone Galaxy S21',1,'Teléfono inteligente Samsung Galaxy S21',NULL,500.00,750.00,6,'2025-10-08 20:07:09'),(2,'iPhone 13',2,'Teléfono inteligente Apple iPhone 13','',800.00,1200.00,10,'2025-10-08 20:07:09'),(3,'Smart TV 55\"',3,'Televisor inteligente LG 55 pulgadas',NULL,400.00,600.00,3,'2025-10-08 20:07:09'),(4,'hotrooo',1,'producton nuevo',NULL,123.00,412.00,1,'2025-10-09 23:19:31'),(5,'otroo prodpo',5,'adasdad',NULL,1000.00,10000.00,5,'2025-10-10 22:01:52'),(6,'EEEEE',2,'SSSSSSSSSS','',23.00,222.00,2,'2025-10-11 18:02:00'),(7,'Pruebabb',5,'Pueba dessc','https://assets.stickpng.com/images/580b57fbd9996e24bc43bbdc.png',100.00,120.00,11,'2025-10-23 20:23:17'),(9,'asdad',5,'asdadas','web/assets/productos/3f6f8323-77f7-4921-b5ab-2aeef9ba0882.png',2.00,21.00,2,'2025-10-29 23:10:46'),(12,'hola',5,'hola2','web/assets/productos/a170987a-f040-4a79-aa35-e4f5d08e4f8d.png',20.00,23.00,4,'2025-10-30 20:23:11'),(15,'Imagen2',3,'dectt','web/assets/productos/5c951e1f-9d76-4702-88d3-661d8f827877.PNG',50.00,60.00,24,'2025-10-30 20:46:43'),(16,'immma',6,'gaf','web/assets/productos/70d5e3ed-6150-48ad-a1f1-c51fd3782561.png',4.00,7.00,3,'2025-10-30 20:56:51'),(17,'kllkklkl',6,'asasa','web/assets/productos/083b9304-9e4d-4cc0-893c-c9da1eff7ec4.png',94.00,100.00,4,'2025-10-30 21:04:31'),(18,'pruba33',6,'holaaa','web/assets/productos/ef0279f9-e363-49f5-aa3c-eca1e2b10293.jpeg',24.00,41.00,2,'2025-10-30 21:11:18'),(20,'dasd',5,'dffas','web/assets/productos/88d67297-d0ba-4f41-be94-e0cab54bc4f1.jpeg',2.00,33.00,24,'2025-10-30 21:20:28'),(21,'NuevoProducto',4,'Descripcion producto','web/assets/productos/f79fb2a7-c1a7-4c99-b202-424f378541df.jpeg',42.00,50.00,24,'2025-11-01 08:04:40'),(22,'iPhone 20',2,'Ipthone proximo','web/assets/productos/3e10c0df-dd17-4be8-9ee4-ec40604da18f.jpg',10000.00,15000.00,100,'2025-11-01 08:10:41'),(23,'televisor',4,'descrip','web/assets/productos/80db8424-a350-4412-bef2-536296ffd1b4.jpg',400.00,500.00,4,'2025-11-01 08:11:27'),(24,'Producto30',5,'Descripcion','web/assets/productos/c0a4a363-9609-42ee-a75c-3b54974bd03f.jpg',42.00,50.00,4,'2025-11-01 08:25:21'),(25,'ImagenPrueba2',1,'dessccipriocn','web/assets/productos/cb5a7a81-73cb-4610-bf71-d81868ab04df.jpg',10.00,20.00,4,'2025-11-01 08:47:11'),(26,'NombrePrueba10',5,'Descirpcion','web/assets/productos/f6973f94-168c-40b9-9e14-a5fe24c093f8.png',50.00,60.00,3,'2025-11-01 08:48:31');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-01  9:03:26
