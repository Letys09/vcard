-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-09-2023 a las 11:34:31
-- Versión del servidor: 5.7.43
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clased1_bmv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `paterno` varchar(45) DEFAULT NULL,
  `materno` varchar(45) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `industry_other` varchar(45) DEFAULT NULL,
  `profile_firm_type` varchar(45) DEFAULT NULL,
  `profile_firm_type_other` varchar(45) DEFAULT NULL,
  `profile_ao_type` varchar(45) DEFAULT NULL,
  `profile_ao_type_other` varchar(45) DEFAULT NULL,
  `profile_insurance_professional_profile` varchar(45) DEFAULT NULL,
  `profile_insurance_professional_profile_other` varchar(45) DEFAULT NULL,
  `profile_insurance_company_type` varchar(45) DEFAULT NULL,
  `profile_insurance_company_type_other` varchar(45) DEFAULT NULL,
  `profile_insurance_role` varchar(45) DEFAULT NULL,
  `profile_insurance_role_other` varchar(45) DEFAULT NULL,
  `event_hear_about` varchar(45) DEFAULT NULL,
  `event_hear_about_other` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `impresion` datetime DEFAULT NULL,
  `checkin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`, `status`, `impresion`, `checkin`) VALUES
(1, 'PARTICIPANTE', 'sbecerril@bursanet.com.mx', 'YAEL', 'BECERRIL', 'BARRAGAN', 'ACTINVER', 'MANAGER / BURSANET', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(2, 'PARTICIPANTE', 'mariocarrillo@ardetti.com', 'MARIO ALBERTO', 'CARRILLO', 'JIMENEZ', 'ACTINVER', 'MEMBER', 'MEXICO CITY METROPOLITAN AREA', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(3, 'PARTICIPANTE', 'sperezv@actinver.com.mx', 'SAMUEL', 'PEREZ', 'VEGA', 'ACTINVER', 'BANQUERO PRIVADO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(4, 'PARTICIPANTE', 'lpimienta@actinver.com.mx', 'LEOPOLDO', 'PIMIENTA', 'SANCHEZ', 'ACTINVER', 'VP EQUITY SALES', 'CIUDAD DE MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(5, 'PARTICIPANTE', 'hreyes@actinver.com.mx', 'HECTOR JAVIER', 'REYES', 'ARGOTE', 'ACTINVER', 'ANALISTA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(6, 'PARTICIPANTE', 'treyes@actinver.com.mx', 'TANIA', 'REYES', 'FLORES', 'ACTINVER', 'ASESOR PATRIMONIAL', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'ASESOR', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(7, 'PARTICIPANTE', 'asuarezs@actinver.com.mx', 'ANGEL', 'SUAREZ', '', 'ACTINVER', 'PM', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'UN COMPAÑERO ES PANELISTA', 1, NULL, NULL),
(8, 'PARTICIPANTE', 'reportefinanciero@prodigy.net.mx', 'ALEJANDRO', 'GUERRERO', '', 'ACTINVER.', 'ESTRATEGA BURSATIL INDEPENDIENTE.', 'CIUDAD DE MEXICO.', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO', 1, NULL, NULL),
(9, 'PARTICIPANTE', 'jesustovar@aditiconstructora.com', 'JESUS', 'TOVAR', '', 'ADITI CONSTRUCTORA', 'DESARROLLADOR', 'LEON', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(10, 'PARTICIPANTE', 'jmontiell@elektra.com.mx', 'JORGE', 'MONTIEL', '', 'AFORE AZTECA', 'GERENTE RIESGOS FINANCIEROS', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(11, 'PARTICIPANTE', 'francisco.vargasg@aforecoppel.com', 'FRANCISCO JAVIER', 'VARGAS', 'GARCIA', 'AFORE COPPEL', 'EQUITY TRADER', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'AFORE', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(12, 'PARTICIPANTE', 'horacio.coutino.mx@gmail.com', 'HORACIO', 'COUTIÑO', '', 'AFORE COPPEL SA DE CV', 'SENIOR EQUITY RESEARCH ANALYST', '', 'MEXICO', 'ASSET OWNER', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(13, 'PARTICIPANTE', 'MMONTESINOS@PENSIONISSSTE.GOB.MX', 'MAXIMILIANO', 'MONTESINOS', 'CORDOVA', 'AFORE PENSIONISSSTE', 'JEFE DE DEPARTAMENTO C', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'OTHER', 'CORREO DE BBVA', 1, NULL, NULL),
(14, 'PARTICIPANTE', 'daniel.badillo@suramexico.com', 'DANIEL', 'BADILLO', 'CASTRO', 'AFORE SURA', 'ALTERNATIVE INVESTMENTS ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(15, 'PARTICIPANTE', 'juan.arce@aforecoppel.com', 'JUAN CARLOS', 'ARCE', 'LIMON', 'AFORECOPPEL', 'ANALISTA MIDDLE OFFICE', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(16, 'PARTICIPANTE', 'guillermo.morales@uno.cl', 'GUILLERMO', 'MORALES', '', 'AFP UNO', 'ANALISTA DE INVERSIONES DE RENTA VARIABLE INT', 'SANTIAGO', 'CHILE', 'ASSET OWNER', '', '', '', 'OTHER', 'ADMINISTRADORA DE FONDO DE PENSIONES', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(17, 'PARTICIPANTE', 'galo.legorreta@ag2solutions.com', 'GALO', 'LEGORRETA', '', 'AG2 SOLUTIONS', 'DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'SERVICIOS DE BACKOFFICE Y ADMINISTRATIVOS PAR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(18, 'PARTICIPANTE', 'karen.gallo@ag2solutions.com', 'KAREN', 'SALINAS', '', 'AG2 SOLUTIONS', 'LIDER', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'EMPRESARIAL', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(19, 'PARTICIPANTE', 'fernanda.vivia@ag2solutions.com', 'FERNANDA', 'VIVIA', '', 'AG2 SOLUTIONS', 'SUBDIRECTORA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'SERVICIOS DE BACKOFFICE Y ADMINISTRATIVOS PAR', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'RECOMENDACION', 1, NULL, NULL),
(20, 'PARTICIPANTE', 'rgonzalez@aiu.edu', 'RICARDO', 'GONZALEZ', '', 'AIU', 'PROVOST', 'SUNNY ISLES BEACH', 'UNITED STATES', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(21, 'PARTICIPANTE', 'gabriel.albores@cbimultiassets.com', 'GABRIEL', 'ALBORES', 'GARCIA', 'ALBORES COACH', 'DIRECTOR', 'OAXACA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(22, 'PARTICIPANTE', 'ventas.multimodal@grupoamigo.com', 'LAURA', 'CALVILLO', '', 'ALLIANZ', 'ASESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONOCIDOS', 1, NULL, NULL),
(23, 'PARTICIPANTE', 'jorge@primerotuseguro.com', 'JORGE', 'ESCANDON', '', 'ALLIANZ', 'ASESOR PATRIMONIAL', 'AREA METROPOLITANA DE PUEBLA', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'CONSULTANT', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(24, 'PARTICIPANTE', 'acontreras@alstec.mx', 'ALEJANDRO', 'CONTRERAS', 'BELMONTE', 'ALSTEC CONSULTING', 'RISK & INVESTMENT CONSULTANT', 'MONTERREY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FAMILY OFFICE', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(25, 'PARTICIPANTE', 'mauricio.iracheta@altorcb.com', 'MAURICIO', 'IRACHETA', '', 'ALTOR CASA DE BOLSA', 'OPERADOR DE BOLSA', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(26, 'PARTICIPANTE', 'mccarranza@amafore.org', 'MARIA CRISTINA', 'CARRANZA', 'BUENO', 'AMAFORE', 'GERENTE', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'REFERENCIA INTERNA', 1, NULL, NULL),
(27, 'PARTICIPANTE', 'mcruz@amafore.org', 'MAURICIO', 'CRUZ', '', 'AMAFORE', 'ANALISTA DE INVERSIONES Y RIESGOS', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ASOCIACION', 1, NULL, NULL),
(28, 'PARTICIPANTE', 'rmendoza@amafore.org', 'ROBERTO', 'MENDOZA', '', 'AMAFORE', 'DIRECTOR DE INVERSIONES', 'MEXICO CITY', 'MEXICO', 'GOVERNMENT/NGO', 'ASSOCIATION', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(29, 'PARTICIPANTE', 'atafoya@amafore.org', 'ALDO DANIEL', 'TAFOYA', 'CARRILLO', 'AMAFORE', 'ANALISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(30, 'PARTICIPANTE', 'edelcastillo@asociacionamai.com', 'ERIKA', 'DEL CASTILLO', 'OTERO', 'AMAI', 'DIRECTORA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', '.', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(31, 'PARTICIPANTE', 'mbordas@amubi.com.mx', 'MAURICIO', 'BORDAS', 'CHIAS', 'AMUBI FUTURUM SEGUROS Y CIBERSEGURIDAD', 'DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(32, 'PARTICIPANTE', 'emaldonado@apatrimonial.com.mx', 'ELIZABETH', 'MALDONADO', 'CAMARENA', 'ASEGURADORA PATRIMONIAL DAÑOS, S.A.', 'SUBDIRECTORA DE ADMINISTRACION Y FINANZAS', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'OTHER', 'DAÑOS', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(33, 'PARTICIPANTE', 'hectorct@asepriv.com', 'HECTOR', 'CISNEROS', 'TORRES', 'ASEPRIV ASESORES INDEPENDIENTES', 'DIRECTOR DE OPERACIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(34, 'PARTICIPANTE', 'abours@aserta.com', 'ANTONIO', 'R', 'BOURS', 'ASERTA', 'ANALISTA SR INVERSIONES', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(35, 'PARTICIPANTE', 'edibarrar@asesorfinanciero.vip', 'ENRIQUE DAVID', 'IBARRA', 'RAMIREZ', 'ASESOR FINANCIERO VIP', 'DIRECTOR', 'MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(36, 'PARTICIPANTE', 'samuela@grupobmv.com.mx', 'SAMUEL AARON', 'ARCHUNDIA', 'PEREZ', 'ASIGNA Y CCV', 'GERENTE', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(37, 'PARTICIPANTE', 'elizabeth.puente@axa-im.com', 'ELIZABETH', 'PUENTE', '', 'AXA IM', 'PORTFOLIO MANAGER', 'MEXICO', 'MEXICO', 'OTHER', 'PORTFOLIO MANAGER', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(38, 'PARTICIPANTE', 'pablo@axsmexico.com', 'PABLO', 'HURTADO', '', 'AXS MEXICO S.C.', 'MANAGING PARTNER & FOUNDER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(39, 'PARTICIPANTE', 'andres@aztlanequities.com', 'ANDRES', 'VIEDMA', '', 'AZTLAN', 'ANALISTA DE EQUITIES', 'MONTERREY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO DE INVERSION', '', '', '', '', '', '', 'OTHER', 'EMAIL AZTLAN EQUITY', 1, NULL, NULL),
(40, 'PARTICIPANTE', 'fabiola@aztlanequities.com', 'FABIOLA', 'PASTRAN', '', 'AZTLAN EQUITIES', 'ANALYST', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(41, 'PARTICIPANTE', 'carlos.valenci@comunidad.unam.mx', 'CARLOS EDUARDO', 'VALENCIA', 'MONTIEL', 'AZUCAR CAFE', 'EMPRENDEDOR', 'ESTADO DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'COMPAÑERO DE AMI', 1, NULL, NULL),
(42, 'PARTICIPANTE', 'jesus.mondragon@b4u.mx', 'JESUS', 'MONDRAGON', '', 'B4U', 'ANALISTA ACTUARIAL', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ACTUARIO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(43, 'PARTICIPANTE', 'jessica.reyess@elektra.com.mx', 'JESSICA', 'REYES', '', 'BANCO AZTECA', 'ANALISTA RIESGOS FINANCIEROS', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(44, 'PARTICIPANTE', 'marcos.neumann@bbva.com', 'MARCOS', 'NEUMANN', '', 'BANCO BBVA ARGENTINA S.A.', 'VP CS', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(45, 'PARTICIPANTE', 'irannuga@outlook.com', 'IRMA', 'NUÑEZ', 'GALICIA', 'BANCO COVALTO', 'DIRECTOR OF OPERATIONS', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'BANCA', '', '', '', '', '', '', 'OTHER', 'OTRO', 1, NULL, NULL),
(46, 'PARTICIPANTE', 'jjleon@banxico.org.mx', 'JOSE DE JESUS', 'LEON', 'ASTORGA', 'BANCO DE MEXICO', 'JEFE DE OFICINA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'RIESGOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'BMV', 1, NULL, NULL),
(47, 'PARTICIPANTE', 'dcabrera@bancomext.gob.mx', 'DIANA LIZETH', 'CABRERA', 'PLIEGO', 'BANCO NACIONAL DE COMERCIO EXTERIOR', 'ESPECIALISTA DERIVADOS', 'MEXICO CITY', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO VALMER', 1, NULL, NULL),
(48, 'PARTICIPANTE', 'ynava@bancomext.gob.mx', 'YARLIN AZUCENA', 'NAVA', 'GARCIA', 'BANCO NACIONAL DE COMERCIO EXTERIOR, S.N.C. (', 'ESPECIALISTA AUXILIAR DE ADMINISTRACION DE RI', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(49, 'PARTICIPANTE', 'cbasurto@santander.com.mx', 'CAMILA', 'BASURTO', '', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE ', 'ASSOCIATE', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'BANCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(50, 'PARTICIPANTE', 'elopezp@vepormas.com', 'EDUARDO', 'LOPEZ', 'PONCE', 'BANCO VE POR MAS', 'EQUITY RESEARCH ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(51, 'PARTICIPANTE', 'marsol_h@yahoo.com', 'MARISOL', 'HUERTA', '', 'BANCO VE POR MAS BX+', 'ANALISTA SENIOR CORPORATIVO', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(52, 'PARTICIPANTE', 'damarisgezabel@hotmail.com', 'DAMARIS GEZABEL', 'CASTILLO', '', 'BANCOPPEL SA', 'ECONOMISTA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GERENTE ZONA SERVICIOS FINANCIEROS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(53, 'PARTICIPANTE', 'sandra.arreola.monroy@banorte.com', 'SANDRA', 'ARREOLA', '', 'BANORTE', 'GERENTE', 'CIUDAD MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(54, 'PARTICIPANTE', 'jessica.grajales.lara@banorte.com', 'JESSICA MARIANA', 'GRAJALES', 'LARA', 'BANORTE', 'DIRECTORA DE RIESGO DE BALANCE', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', 'BANCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(55, 'PARTICIPANTE', 'carlos.hernandez.garcia@banorte.com', 'CARLOS', 'HERNANDEZ', 'GARCIA', 'BANORTE', 'SUBDIRECTOR ANALISIS BURSATIL', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', 'CORREO DE SPDR', 1, NULL, NULL),
(56, 'PARTICIPANTE', 'mauricio.santos.alonso@banorte.com', 'MAURICIO', 'SANTOS', 'ALONSO DEL MONTE', 'BANORTE', 'SUBDIRECTOR PROMOCION ADMINISTRACION DE ACTIV', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(57, 'PARTICIPANTE', 'orlando.zelaya.molina@banorte.com', 'ORLANDO ERNESTO', 'ZELAYA', 'MOLINA', 'BANORTE ASSET MANAGEMENT', 'DIRECTOR DE ESTRATEGIA / PM FONDOS MULTIACTIV', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'VANGUARD', 1, NULL, NULL),
(58, 'PARTICIPANTE', 'wendipaola.acevedo@bbva.com', 'WENDI', 'ACEVEDO', '', 'BBVA', 'MANAGER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'BBVA', 1, NULL, NULL),
(59, 'PARTICIPANTE', 'martha.angulo@bbva.com', 'MARTHA', 'ANGULO', '', 'BBVA', 'DIRECTORA RIESGO FIDUCIARIO', 'CDMX', 'MEXICO', 'REGULATORY/COMPLIANCE', 'RIESGO FIDUCIARIO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(60, 'PARTICIPANTE', 'jafetezequiel.bello@bbva.com', 'JAFET EZEQUIEL', 'BELLO', 'CISNEROS', 'BBVA', 'ESTRUCTURADOR', 'CDMX', 'MEXICO', 'OTHER', 'ESTRUCTURADOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(61, 'PARTICIPANTE', 'sergioenrique.gutierrez@bbva.com', 'SERGIO', 'CEJA', '', 'BBVA', 'RISK MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ASESOR DE RIESGOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(62, 'PARTICIPANTE', 'Marco.espinosa@bbva.com', 'MARCO ANTONIO', 'ESPINOSA', 'MELENDEZ', 'BBVA', 'ED LIQUIDITY MANAGEMENT', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(63, 'PARTICIPANTE', 'ivanarturo.flores@bbva.com', 'IVAN', 'FLORES', 'VELAZQUEZ', 'BBVA', 'NORMATIVIDAD CONTABLE', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(64, 'PARTICIPANTE', 'jesushoracio.garcia@bbva.com', 'JESUS HORACIO', 'GARCIA', 'BRAVO', 'BBVA', 'VP', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(65, 'PARTICIPANTE', 'JOSEMARIA.GL@BBVA.COM', 'JOSE MARIA', 'GOMEZ', 'LASTRA', 'BBVA', 'INVESTMET CONSEOUR DIRECCION DE ESTRATEGIA DE', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', 'BANK-OWNED BROKER/DEALER', 'VENTAS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'RECOMENDACION', 1, NULL, NULL),
(66, 'PARTICIPANTE', 'diego.miranda@bbva.com', 'DIEGO', 'MIRANDA', '', 'BBVA', 'ASSOCIATE AM', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(67, 'PARTICIPANTE', 'monica.palacios@bbva.com', 'MONICA', 'PALACIOS', '', 'BBVA', 'SENIOR RISK MANAGER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'ASESOR DE RIESGOS', 'OTHER', 'BANK', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(68, 'PARTICIPANTE', 'ci.rios@bbva.com', 'CRISTINA', 'RIOS', '', 'BBVA', 'ASSOCIATE BUSSINES EXECUTION', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FONDOS DE INVERSION', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MEDIO DE BBVA', 1, NULL, NULL),
(69, 'PARTICIPANTE', 'javierivan.rodriguez.dejesus@bbva.com', 'JAVIER IVAN', 'RODRIGUEZ', '', 'BBVA', 'BANQUERO PATRIMONIAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(70, 'PARTICIPANTE', 'victordaniel.rodriguez@bbva.com', 'VICTOR', 'RODRIGUEZ', '', 'BBVA', 'MR.', 'MEXICO CITY', 'MEXICO', 'REGULATORY/COMPLIANCE', 'PROJECT MANAGER', 'OTHER', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(71, 'PARTICIPANTE', 'elena.rodriguez.1@bbva.com', 'ELENA MARGARITA', 'RODRIGUEZ', 'ESCALONA', 'BBVA', 'ASSOCIATE PRODUCTO & MARKET INTELLIGENCE', 'TLALNEPANTLA DE BAZ', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', 'BBVA OPERADORA MEXICO, S.A. DE C.V.', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO', 1, NULL, NULL),
(72, 'PARTICIPANTE', 'mauricio.rubio@bbva.com', 'MAURICIO', 'RUBIO', '', 'BBVA', 'MD I&CS ASSET MANAGEMENT', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(73, 'PARTICIPANTE', 'channialaialexis.sanchez@bbva.com', 'CHANNI ALAI ALEXIS', 'SANCHEZ', 'SOUVERVIELLE', 'BBVA', 'RIESGO MERCADO', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'MI EMPRESA', 1, NULL, NULL),
(74, 'PARTICIPANTE', 'elmer.solano@bbva.com', 'ELMER', 'SOLANO', '', 'BBVA', 'SENIOR MANAGER PRODUCTOS DE AHORRO E INVERSIO', 'CDMX', 'MEXICO', 'OTHER', 'VENTAS DIGITALES', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(75, 'PARTICIPANTE', 'deliacarolina.soto@bbva.com', 'DELIA', 'SOTO', '', 'BBVA', 'DIRECTOR EJECUTIVO', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', 'OTHER', 'BBVA', '', '', '', '', '', '', 'SPDJI EMAIL', 'PARTICIPACION EN EL EVENTO, PERO, TAMBIEN LLE', 1, NULL, NULL),
(76, 'PARTICIPANTE', 'miriampamela.soto@bbva.com', 'MIRIAM', 'SOTO', 'SOTO', 'BBVA', 'ASESOR DE ESTRUCTURACION DE CREDITO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ANALISTA FINANCIERO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(77, 'PARTICIPANTE', 'ederjair.vazquez@bbva.com', 'EDER JAIR', 'VAZQUEZ', 'HERNANDEZ', 'BBVA', 'ASSET MANAGEMENT', 'MEXICO', 'MEXICO', 'OTHER', 'QUANT MODELS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'TRABAJO', 1, NULL, NULL),
(78, 'PARTICIPANTE', 'dkilian@bbva.com', 'DANIELA', 'KILIAN', '', 'BBVA ASSET MANAGEMENT', 'CONTROL INTERNO', 'MEXICO CITY', 'MEXICO', 'REGULATORY/COMPLIANCE', 'FINANCIERO PRIVADO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'BBVA', 1, NULL, NULL),
(79, 'PARTICIPANTE', 'xavier.macias@bbva.com', 'XAVIER', 'MACIAS', 'RUBIO', 'BBVA ASSET MANAGEMENT', 'PM ACTIVOS TRADICIONALES & QUANT MODELS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'MIDDLE OFFICE', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'TRABAJO', 1, NULL, NULL),
(80, 'PARTICIPANTE', 'adrianna.morales@bbva.com', 'ADRIANNA EDYAMIN', 'MORALES', 'GONZALEZ', 'BBVA ASSET MANAGEMENT', 'ASSOCIATE', 'MEXICO', 'MEXICO', 'OTHER', 'DESARROLLO DE PRODUCTOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(81, 'PARTICIPANTE', 'martin.neumann@bbva.com', 'MARTIN', 'NEUMANN', '', 'BBVA ASSET MANAGEMENT', 'EJECUCION ASSET MANAGEMENT', 'CDMX', 'MEXICO', 'ASSET OWNER', 'BUY SIDE TRADER', '', '', 'OTHER', 'BBVA', '', '', '', '', '', '', 'OTHER', 'INVITE BBVA AM', 1, NULL, NULL),
(82, 'PARTICIPANTE', 'la.raygoza@bbva.com', 'LUIS', 'RAYGOZA', '', 'BBVA ASSET MANAGEMENT', 'VP GOVERNANCE', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', 'OTHER', 'ASSET MANAGEMENT', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(83, 'PARTICIPANTE', 'alvaronoel.solares@bbva.com', 'ALVARO', 'SOLARES', '', 'BBVA ASSET MANAGEMENT', 'VP PRODUCTO', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(84, 'PARTICIPANTE', 'lk.herrera@bbva.com', 'LIZETH KAREM', 'HERRERA', 'CEJA', 'BBVA MEXICO', 'VP RIESGOS FINANCIEROS', 'CDMX', 'MEXICO', 'OTHER', 'RIESGOS FINANCIEROS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(85, 'PARTICIPANTE', 'josejesusruben.lopez@bbva.com', 'RUBEN', 'LOPEZ', 'MARTINEZ', 'BBVA MEXICO', 'ASSOCIATE BUSINESS EXECUTION II', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'EMPLEADO BBVA', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(86, 'PARTICIPANTE', 'josemguel.ortega@bbva.com', 'JOSE MIGUEL', 'ORTEGA', '', 'BBVA MEXICO', 'BANQUERO PRIVADO UHN', 'GUADALAJARA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(87, 'PARTICIPANTE', 'aremymelissa.sanchez@bbva.com', 'AREMY MELISSA', 'SANCHEZ', 'CARDENAS', 'BBVA MEXICO', 'FIXED INCOME ANALYST', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(88, 'PARTICIPANTE', 'anakarenguadalupe.narvaez@bbva.com', 'ANA KAREN', 'NARVAEZ', '', 'BBVA SEGUROS', 'CONSULTOR RIESGOS FINANCIEROS', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(89, 'PARTICIPANTE', 'ediez@bdric.com', 'ERNESTO', 'DIEZ', '', 'BDR INVESTMENT CAPITAL', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(90, 'PARTICIPANTE', 'ubm1511@gmail.com', 'URIEL', 'BARRON', 'MONTAÑO', 'BE BLOCK', 'WEALTH MANAGEMENT ANALYST SR.', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(91, 'PARTICIPANTE', 'cadillac7056@hotmail.com', 'ELISA', 'GONZALEZ', 'SALDAÑA', 'BE BLOCK', 'WEALTH MANAGEMENT ANALYST SR.', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(92, 'PARTICIPANTE', 'abetancourt@finamex.com.mx', 'ALEJANDRO', 'BETANCOURT', 'GAONA', 'BEGA771118HDFTNL02', 'HEAD OF MARKET MAKING', 'CD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(93, 'PARTICIPANTE', 'fernanda.cosio@blackrock.com', 'FERNANDA', 'COSIO', '', 'BLACKROCK MEXICO', 'VICEPRESIDENTA, WEALTH MANAGEMENT', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(94, 'PARTICIPANTE', 'elsa.nunez@blackrock.com', 'ELSA', 'NUÑEZ', 'TOSCANO', 'BLACKROCK, INC.', 'DIRECTOR, RIESGOS', 'CDMX', 'MEXICO', 'OTHER', 'ASSET MANAGER', 'OTHER', 'OPERADORA DE FONDOS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(95, 'PARTICIPANTE', 'johanna.serna@blackrock.com', 'JOHANNA', 'SERNA', '', 'BLACKROCK, INC.', 'MARKETING ASSOCIATE', 'CDMX', 'MEXICO', 'OTHER', 'MARKETING', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'COMUNIDAD MEF', 1, NULL, NULL),
(96, 'PARTICIPANTE', 'acaballeroga@bloomberg.net', 'ANDRES', 'CABALLERO', '', 'BLOOMBERG', 'GERENTE COMERCIAL', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(97, 'PARTICIPANTE', 'malfaro@tecnoxia.com', 'MIRIAM', 'ALFATO', '', 'BMV', 'STAFF BMV', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(98, 'PARTICIPANTE', 'eamaro@tecnoxia.com', 'ERNESTO', 'AMARO', '', 'BMV', 'STAFF TECNOXIA', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(99, 'PARTICIPANTE', 'ngonzalez@grupobmv.com.mx', 'NAYELI', 'GONZALEZ', '', 'BMV', 'GERENTE DE CAPITALES', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(100, 'PARTICIPANTE', 'egonzalez@grupobmv.com.mx', 'EDGARDO', 'GONZALEZ', 'ENRIQUEZ', 'BMV', 'GERENTE', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(101, 'PARTICIPANTE', 'alopezp@grupobmv.com.mx', 'ADRIANA', 'LOPEZ', 'PEREZ', 'BMV', 'ESPECIALISTA EN SOPORTE A PRODUCTOS DE INFORM', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(102, 'PARTICIPANTE', 'amarin@grupobmv.com.mx', 'ABIMAEL', 'MARIN', 'ESCALANTE', 'BMV', 'SUBDIRECTOR DE VALUACION', 'MEXICO DF', 'MEXICO', 'OTHER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(103, 'PARTICIPANTE', 'smartinezm@grupobmv.com.mx', 'STEPHANI', 'MARTINEZ', '', 'BMV', 'ESPECIALISTA', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(104, 'PARTICIPANTE', 'amaya@grupobmv.com.mx', 'ALBERTO', 'MAYA', '', 'BMV', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'OTHER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'DIRECTAMENTE CON S&P', 1, NULL, NULL),
(105, 'PARTICIPANTE', 'emorales@tecnoxia.com', 'EDUARDO', 'MORALES', '', 'BMV', 'STAFF BMV', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(106, 'PARTICIPANTE', 'jolivo@grupobmv.com.mx', 'JUAN MANUEL', 'OLIVO', '', 'BMV', 'DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO', 1, NULL, NULL),
(107, 'PARTICIPANTE', 'vramirezp@grupobmv.com.mx', 'VERONICA', 'RAMIREZ', 'PASCUAL', 'BMV', 'MANAGER THE FIXED INCOME', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(108, 'PARTICIPANTE', 'crivera@grupobmv.com.mx', 'CYNTHIA', 'RIVERA', 'CANO', 'BMV', 'COMMUNITY MANAGER', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(109, 'PARTICIPANTE', 'orosas@tecnoxia.com', 'OSVALDO', 'ROSAS', '', 'BMV', 'STAFF BMV', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(110, 'PARTICIPANTE', 'matorres@grupobmv.com.mx', 'MIGUEL ANGEL', 'TORRES', '', 'BMV', 'DIRECTOR DE OPERACIONES', 'MEXICO DF', 'MEXICO', 'OTHER', 'DIRECTOR DE OPERACIONES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(111, 'PARTICIPANTE', 'rtunon@grupobmv.com.mx', 'ROCIO', 'TUÑON', '', 'BMV', 'SUBDIRECTORA DE PRODUCTOS DE INFORMACION', 'MEXICO CITY', 'MEXICO', 'OTHER', 'MARKET DATA', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(112, 'PARTICIPANTE', 'hsalas@bncr.fi.cr', 'HAZEL', 'SALAS', '', 'BN VITAL', 'GESTOR', 'NA', 'COSTA RICA', 'ASSET OWNER', '', '', '', 'OTHER', 'OPERADORA DE PENSIONES', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(113, 'PARTICIPANTE', 'karla.lopeztronco@bnpparibas.com', 'KARLA', 'LOPEZ', '', 'BNP AM', 'HEAD OF CREDIT', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(114, 'PARTICIPANTE', 'jovanny-hb@hotmail.com', 'JOVANNY', 'HERNANDEZ', '', 'BNP PARIBAS', 'FUND ACCOUNTING AND TAX ANALYST', 'HIDALGO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(115, 'PARTICIPANTE', 'ebalcells@grupobmv.com.mx', 'EDUARDO', 'BALCELLS', '', 'BOLSA DE MEXICANA DE VALORES (BMV)', 'GERENTE', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(116, 'PARTICIPANTE', 'slagunilla@grupobmv.com.mx', 'SAMUEL SAUL', 'LAGUNILLA', 'SALAS', 'BOLSA DE MEXICANA DE VALORES (BMV)', 'ESPECIALISTA RIESGOS', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(117, 'PARTICIPANTE', 'erodriguez@grupobmv.com.mx', 'EDUARDO', 'RODRIGUEZ', '', 'BOLSA DE MEXICANA DE VALORES (BMV)', 'SURVEILLANCE MANAGER', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(118, 'PARTICIPANTE', 'armandoacciones@gmail.com', 'ARMANDO', 'ECHEGOLLEN', '', 'BOLSA DESDE CERO', 'PROJECT LEADER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'ME COMPARTIERON LA INFORMACION', 1, NULL, NULL),
(119, 'PARTICIPANTE', 'adfernandez@grupobmv.com.mx', 'ANGELICA DANIELA', 'FERNANDEZ', 'GARZA', 'BOLSA MEXICANA DE VALORES', 'ESPECIALISTA MERCADO GLOBAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(120, 'PARTICIPANTE', 'alflores@grupobmv.com.mx', 'LEONARDO', 'FLORES', '', 'BOLSA MEXICANA DE VALORES', 'ANALISTA DE COMUNICACION CORPORATIVA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(121, 'PARTICIPANTE', 'cocampo@grupobmv.com.mx', 'CARLOS JESUS', 'OCAMPO', 'VARGAS', 'BOLSA MEXICANA DE VALORES', 'GERENTE EN COMUNICACION', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ORGANIZADOR', 1, NULL, NULL),
(122, 'PARTICIPANTE', 'xsanchez@grupobmv.com.mx', 'XIMENA', 'SANCHEZ', 'KEHR', 'BOLSA MEXICANA DE VALORES', 'GERENTE MERCADO GLOBAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(123, 'PARTICIPANTE', 'amartinezo@grupobmv.com.mx', 'JOSE ALEJANDRO', 'MARTINEZ', 'OROZCO', 'BOLSA MEXICANA DE VALORES SAB DE CV', 'ESPECIALISTA ASG', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(124, 'PARTICIPANTE', 'sgonzalezt@grupobmv.com.mx', 'SANTIAGO', 'GONZALEZ', 'TRILLO', 'BOLSA MEXICANA DE VALORES, S.A.B DE C.V', 'MARKET DATA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(125, 'PARTICIPANTE', 'asolis@grupobmv.com.mx', 'ALI', 'SOLIS', 'LUNA', 'BOLSA MEXICANA DE VALORES, S.A.B. DE C.V.', 'MARKET DATA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(126, 'PARTICIPANTE', 'mcastaneda@boltonbridgecapital.com', 'MARTIN', 'CASTAÑEDA', '', 'BOLTONBRIDGE CAPITAL', 'MP INVESTMENT BANKING / PRIVATE EQUITY', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'BANCA DE INVERSION', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(127, 'PARTICIPANTE', 'guillermo.delafuente@btgpactual.com', 'GUILLERMO', 'DE LA FUENTE', '', 'BTG PACTUAL GESTORA DE FONDOS S.A. DE C.V.', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(128, 'PARTICIPANTE', 'arfin.rsalas@gmail.com', 'ALDAIR', 'ROJAS', 'SALAS', 'CAMPEONES FINANCIEROS', 'ANALISTA FINANCIERO', 'COACALCO DE BERRIOZABAL', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(129, 'PARTICIPANTE', 'victorh.cortes@banorte.com', 'VICTOR', 'CORTES', '', 'CASA DE BOLSA BANORTE', 'ANALISTA TECNICO', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(130, 'PARTICIPANTE', 'jorge.lagunas.cortes@banorte.com', 'JORGE', 'LAGUNAS', 'CORTES', 'CASA DE BOLSA BANORTE', 'DIRECTOR PROMOCI?N CAPITALES', 'M?XICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(131, 'PARTICIPANTE', 'pablo.carrera.lopez@banorte.com', 'PABLO', 'CARRERA', 'LOPEZ', 'CASA DE BOLSA BANORTE, S.A. DE C.V.', 'DIRECTOR DE BANCA DE INVERSION', 'CIUDAD DE MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(132, 'PARTICIPANTE', 'mherrerag@finamex.com.mx', 'MARIANO', 'HERRERA', 'GUZMA', 'CASA DE BOLSA FINAMEX SAB DE CV', 'EQUITY SALES TRADER', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'MI ECONOMISTA PRINCIPAL NOS LO ENVIO A LA MES', 1, NULL, NULL),
(133, 'PARTICIPANTE', 'rreal@santander.com.mx', 'RICARDO', 'REAL', '', 'CASA DE BOLSA SANTANDER, S.A. DE C.V.', 'DIRECTOR FISCAL', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(134, 'PARTICIPANTE', 'ghernandezo@vepormas.com', 'GUSTAVO', 'HERNANDEZ', 'OCADIZ', 'CASA DE BOLSA VE POR MAS, S.A. DE C.V., RESEA', 'ANALISTA', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ANALISTA DE DATOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(135, 'PARTICIPANTE', 'francisco.esteva@cat.com', 'FRANCISCO', 'ESTEVA', '', 'CATERPILLAR', 'OFICIAL DE CUMPLIMIENTO', 'MONTERREY', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(136, 'PARTICIPANTE', 'dcjtorres@grupobmv.com.mx', 'DIEGO', 'JUAREZ', '', 'CCV', 'ANALISTA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COMPAÑERO DE TRABAJO', 1, NULL, NULL),
(137, 'PARTICIPANTE', 'prisma.yadira.huertascastillo@citibanamex.com', 'PRISMA', 'HUERTAS', '', 'CFA CHALLENGE 2016 MEXICO', 'ANALYST', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ANALYST', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(138, 'PARTICIPANTE', 'adela.hernandez@chubb.com', 'ADELA', 'HERNANDEZ', 'GARCIA', 'CHUBB', 'CRO', 'CDMX', 'MEXICO', 'INSURANCE', 'SEGUROS', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'RISK', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(139, 'PARTICIPANTE', 'mocancino@cibolsa.com', 'MONICA', 'CANCINO', '', 'CI CASA DE BOLSA', 'INVERSIONES INSTITUCIONALES', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(140, 'PARTICIPANTE', 'opetrilli@cism.mx', 'OMAR', 'PETRILLI', 'MENA', 'CI CASA DE BOLSA', 'ASESOR EN ESTRATEGIAS DE INVERSION', 'PUEBLA', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(141, 'PARTICIPANTE', 'armendez@cibanco.com', 'ARIEL', 'MENDEZ', '', 'CIBANCO', 'ANALISTA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'ANALISTA BURSATIL', 'OTHER', 'ANALISTA BURSATIL', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(142, 'PARTICIPANTE', 'fegarcia@cimgroup.com', 'FERNANDO', 'GARCIA', '', 'CIM GROUP', 'AVP - LATAM INVESTOR RELATIONS', 'CA', 'UNITED STATES', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA', 1, NULL, NULL),
(143, 'PARTICIPANTE', 'ckulish@cima.com.ar', 'CAROLINA', 'KULISH', '', 'CIMA', 'FINANCIAL ADVISOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(144, 'PARTICIPANTE', 'jose.ramon.rojas@citibanamex.com', 'JOSE RAMON', 'ROJAS', '', 'CITI', 'INVESTMENT LAB', 'MEXICO CITY', 'MEXICO', 'INSURANCE', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', 'LIFE & ANNUITY', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(145, 'PARTICIPANTE', 'jose.ramon.depedroabascal@citi.com', 'JOSE RAMON', 'DE', 'PEDRO', 'CITIBANAMEX', 'INVESTMENT COUNSELOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(146, 'PARTICIPANTE', 'ricardo.lopez@citi.com', 'RICARDO', 'LOPEZ', '', 'CITIBANAMEX', 'INVESTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGIONAL BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVESCO', 1, NULL, NULL),
(147, 'PARTICIPANTE', 'jesus.manzanorubio@citi.com', 'JESUS', 'MANZANO', '', 'CITIBANAMEX', 'ADMINISTRADOR FIDUCIARIO', 'MEXICO', 'MEXICO', 'OTHER', 'CAPITAL MARKETS TRUST ADMIN', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(148, 'PARTICIPANTE', 'martin.manzoturegano@citi.com', 'MARTIN', 'MANZO', 'TUREGANO', 'CITIBANAMEX', 'ESPECIALISTA DE INVERSIONES Y PRODUCTO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(149, 'PARTICIPANTE', 'alberto.matamoros@citi.com', 'ALBERTO', 'MATAMOROS', '', 'CITIBANAMEX', 'OPS SPECIALIST', ' -CIUDAD DE MEXICO, D.F.', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(150, 'PARTICIPANTE', 'lidia.padilla@citibanamex.com', 'LIDIA', 'PADILLA', '', 'CITIBANAMEX', 'ANALYST', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', 'OTHER', 'BANCA PRIVADA Y PATRIMONIAL', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(151, 'PARTICIPANTE', 'cesar.rodrigo.sanchezrodriguez@citi.com', 'CESAR', 'SANCHEZ', '', 'CITIBANAMEX', 'ANALISTA DE INVERSIONES', 'CIUDAD DE MEXCO', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(152, 'PARTICIPANTE', 'salvador.vallejo@citibanamex.com', 'SALVADOR', 'VALLEJO', 'CALDERON', 'CITIBANAMEX', 'BANQUERO PRIVADO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(153, 'PARTICIPANTE', 'cortes@cmderivados.com', 'IRVING', 'CORTES', '', 'CMD', 'DG', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(154, 'PARTICIPANTE', 'cesarcote@cmdtrader.mx', 'CESAR DAVID', 'COTE', 'LOPEZ', 'CMD', 'DERIVATIVES TRADER', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(155, 'PARTICIPANTE', 'ljacobi@cmderivados.com', 'LEONARDO', 'JACOBI', 'ZARCO', 'CMD', 'DIRECTOR ASOCIADO', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(156, 'PARTICIPANTE', 'arobles@cmdtrader.mx', 'ALAN', 'ROBLES', '', 'CMD', 'HEAD OF TRADERS', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(157, 'PARTICIPANTE', 'derek.rod.bri@gmail.com', 'DEREK', 'RODRIGUEZ', '', 'CMD TRADER', 'BECARIO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'COMPAÑEROS QUE ASISTIRAN', 1, NULL, NULL),
(158, 'PARTICIPANTE', 'jorge.alegria@cmegroup.com', 'JORGE', 'ALEGRIA', '', 'CME GROUP', 'INTERNATIONAL MARKETS DEVELOPMENT - LATAM', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(159, 'PARTICIPANTE', 'cesar.alejandre@kof.com.mx', 'CESAR', 'ALEJANDRE', '', 'COCA COLA FEMSA', 'PORTOFOLIO MANAGER', 'CDMX', 'MEXICO', 'OTHER', 'ALIMENTOS Y BEBIDAS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(160, 'PARTICIPANTE', 'produccion@cocomkt.com', 'JUAN FRANCISCO', 'LECONA', 'ALONSO', 'COCOMKT', 'STAFF', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(161, 'PARTICIPANTE', 'laura.gonzalez1@coface.com', 'LAURA', 'GONZALEZ', '', 'COFACE', 'RISK OFFICER MEXICO', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(162, 'PARTICIPANTE', 'hcabello@columbus.mx', 'HECTOR', 'CABELLO', '', 'COLUMBUS', 'AFI', 'MEXICO DF', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(163, 'PARTICIPANTE', 'arivera@columbus.mx', 'ALEJANDRA', 'RIVERA', '', 'COLUMBUS', 'ANALISTA DE CREDITO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(164, 'PARTICIPANTE', 'jvarela@columbus.mx', 'JESSICA', 'VARELA', '', 'COLUMBUS', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'AMAI', 1, NULL, NULL),
(165, 'PARTICIPANTE', 'mralarcon@columbus.mx', 'MARIA ROSA', 'ALARCON', '', 'COLUMBUS DE MEXICO', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(166, 'PARTICIPANTE', 'dmaya@columbus.mx', 'DANIEL', 'MAYA', 'GARCIA', 'COLUMBUS DE MEXICO', 'ANALYST', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(167, 'PARTICIPANTE', 'drosendo@columbus.mx', 'LOLA', 'ROSENDO', '', 'COLUMBUS DE MEXICO S.A. DE C.V.', 'PROMOTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(168, 'PARTICIPANTE', 'eaguilar@cnbv.gob.mx', 'ERNESTO', 'AGUILAR', 'CAYETANO', 'COMISION NACIONAL BANCARIA Y DE VALORES', 'LICENCIADO', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(169, 'PARTICIPANTE', 'malu@sumamx.com', 'LUZ MARIA', 'LOPEZ', 'PORTILLO', 'CONCIENCIA FINANCIERA', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(170, 'PARTICIPANTE', 'ALE_AMADOR@YAHOO.COM', 'ALEJANDRA', 'AMADOR', '', 'CONECTA PENSION', 'DIRECCION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'WEB', 1, NULL, NULL),
(171, 'PARTICIPANTE', 'luis@congrexpo.mx', 'LUIS', 'LOPEZ', '', 'CONGREXPO', 'DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'PRODUCTOR DE EVENTOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'MARKETING', 1, NULL, NULL),
(172, 'PARTICIPANTE', 'valvis@cpcerano.com.mx', 'VERONICA', 'ALVIS', '', 'CP CERANO', 'RIESGO', 'CERANO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(173, 'PARTICIPANTE', 'valentina.villa@creel.mx', 'VALENTINA', 'VILLA', '', 'CREEL, GARCIA-CUELLAR, AIZA Y ENRIQUEZ', 'COUNSEL', 'CDMX', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'NEWSLETTER CMFS', 1, NULL, NULL),
(174, 'PARTICIPANTE', 'giovanni.garrido@creel.mx', 'GIOVANNI', 'RAMIREZ', 'GARRIDO', 'CREEL, GARCIA-CUELLAR, AIZA Y ENRIQUEZ', 'SOCIO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'LEGAL', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(175, 'PARTICIPANTE', 's.vielma@dannumcapital.com', 'SEBASTIAN', 'VIELMA', '', 'DANNUM CAPITAL', 'PORTFOLIO MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(176, 'PARTICIPANTE', 'aortegav@dentegramx.com', 'ANA BERTHA', 'ORTEGA', 'VEGA', 'DENTEGRA SEGUROS DENTALES, S.A.', 'GERENTE', 'HACIENDA DE SANTA CECILIA NO. 192 COL. VILLA ', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'HEALTH', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(177, 'PARTICIPANTE', 'isa65@ifastnet1.com', 'MAUD JACOBS', 'BAKKER', '', 'DIJK BV', 'INDUSTRIAL', 'VEENHOEK', 'FRENCH GUIANA', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(178, 'PARTICIPANTE', 'mmauleon@inverso.mx', 'MAURO', 'MAULEON', '', 'DIRECTOR DE INVERSIONES', 'SENIOR PORTFOLIO MANAGER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(179, 'PARTICIPANTE', 'jr@julioruelas.com', 'JULIO', 'RUELAS', '', 'DIRG SC', 'GESTOR DE ACTIVOS', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(180, 'PARTICIPANTE', 'cmartinezc@gbm.com.mx', 'CESAR', 'MARTINEZ', 'CONSTANTINO', 'DISTRITO FINANCIERO', 'ASESOR FINANCIERO AFILIADO', 'PUEBLA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'A TRAVES DE GBM', 1, NULL, NULL),
(181, 'PARTICIPANTE', 'gmolina@inversores.com.mx', 'GERARDO', 'MOLINA', '', 'DMOS INVERSORES', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(182, 'PARTICIPANTE', 'jcramirez@inversores.com.mx', 'JUAN CARLOS', 'RAMIREZ', '', 'DMOS INVERSORES', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE INVESCO', 1, NULL, NULL),
(183, 'PARTICIPANTE', 'fer.3.fernandez.l@gmail.com', 'MARIA FERNANDA', 'FERNANDEZ', 'LOPEZ', 'DSM3 CONTROL AND AUTOMATION ADVANCED ENGINEER', 'DIRECTORA GENERAL', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR UN CONOCIDO QUE TRABAJA EN LA BMV', 1, NULL, NULL),
(184, 'PARTICIPANTE', 'luisa@ecovalores.org', 'LUISA', 'MONTES', '', 'ECOVALORES', 'CEO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'ESG ANALISYS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(185, 'PARTICIPANTE', 'roberto.barrera@tec.mx', 'ROBERTO R.', 'BARRERA', '', 'EGADE BUSINESS SCHOOL', 'GRADUATE PROFESSOR', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', 'INVESTIGADOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(186, 'PARTICIPANTE', 'cntct@mpwrd.com.mx', 'FABIAN', 'MUNGUIA', 'GARCIA', 'EMPOWERED MEXICO', 'DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(187, 'PARTICIPANTE', 'ptiburcio@crecimientoexponencial.com', 'PEDRO', 'TIBURCIO', '', 'ESCUELA DE INVERSIONES', 'ANALISTA', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(188, 'PARTICIPANTE', 'junioralfredomartinezhernandez@gmail.com', 'JUNIOR ALFREDO', 'MARTINEZ', 'HERNANDEZ', 'ESTRATEGIA BASADA EN EVIDENCIA, S.A.S.', 'INVESTIGADOR', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(189, 'PARTICIPANTE', 'diana.guerrero@eticayestrategia.mx', 'DIANA', 'GUERRERO', '', 'ETICA Y ESTRATEGIA CONSULTORES SC', 'COO', 'CHIHUAHUA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(190, 'PARTICIPANTE', 'milleroeduardo@gmail.com', 'EDUARDO', 'MILLER', '', 'EXI OPERADORA QUANTUM', 'INFRASTRUCTURE', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(191, 'PARTICIPANTE', 'ramon.leal@eztellum.com', 'RAMON', 'LEAL', '', 'EZTELLUM', 'SOCIO', 'MONTERREY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(192, 'PARTICIPANTE', 'egiraltd@gbm.com.mx', 'EDUARDO', 'GIRALT', '', 'FACE / GBM', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(193, 'PARTICIPANTE', 'contacto@ferreconexiones.com', 'ARNULFO JOSUE', 'GANTE', 'ORROSTIETA', 'FERRECONEXIONES', 'ASESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(194, 'PARTICIPANTE', 'rec2@fianscapital.com.mx', 'MARIA EUGENIA', 'SIDAOUI', '', 'FIANS CAPITAL', 'SOCIO DIRECOTR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL);
INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`, `status`, `impresion`, `checkin`) VALUES
(195, 'PARTICIPANTE', 'gabriel.flores@fianzasatlas.com', 'GABRIEL', 'FLORES', '', 'FIANZAS Y CAUCIONES ATLAS', 'TESORERIA', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'OTHER', 'ASEGURADORA', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(196, 'PARTICIPANTE', 'kmora@fibrauno.mx', 'KAREN', 'MORA', '', 'FIBRA UNO', 'SUSTAINABILITY DIRECTOR', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(197, 'PARTICIPANTE', 'areyesv@fiduoccidente.com.co', 'ANA', 'REYES', '', 'FIDUCIARIA OCCIDENTE', 'ANALISTA DE PORTAFOLIO', 'BOGOTA', 'COLOMBIA', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(198, 'PARTICIPANTE', 'ocorzod@finamex.com.mx', 'OSMAR', 'CORZO', 'DIAZ', 'FINAMEX', 'EQUITY SALES TRADER', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(199, 'PARTICIPANTE', 'oroldan@acercate.org.mx', 'OLIVER', 'ROLDAN', '', 'FINANCIERA ACERCATE', 'DIRECTOR', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'PERIODICO', 1, NULL, NULL),
(200, 'PARTICIPANTE', 'cfernandez@finantech.com.mx', 'CARLOS', 'FERNANDEZ', '', 'FINANTECH', 'ANALYST', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(201, 'PARTICIPANTE', 'cmeneses@finantech.com.mx', 'CARLOS CESAR', 'MENESES', 'TEROBA', 'FINANTECH', 'ANALISTA DE MERCADO DE CAPITALES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(202, 'PARTICIPANTE', 'fgutierrez@finarq.mx', 'FRANCISCO JAVIER', 'GUTIERREZ', 'ALVAREZ', 'FINARQ SC', 'CEO', 'GUADALAJARA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'TWITTER', '', 1, NULL, NULL),
(203, 'PARTICIPANTE', 'CECILIA.BARRERA@MULTIVA.COM.MX', 'CECILIA', 'BARRERA', '', 'FONDOS DE INVERSION MULTIVA S.A. DE C.V.', 'PRODUCTOS FONDOS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(204, 'PARTICIPANTE', 'georgina.ruiz@multiva.com.mx', 'GEORGINA', 'RUIZ', '', 'FONDOS DE INVERSION MULTIVA S.A. DE C.V.', 'SUBDIRECTOR DE ESTRATEGIA', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(205, 'PARTICIPANTE', 'marco.garcia@franklintempleton.com', 'MARCO', 'GARCIA', '', 'FRANKLIN TEMPLETON', 'IW', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(206, 'PARTICIPANTE', 'aline.wright@franklintempleton.com', 'ALINE', 'WRIGHT', '', 'FRANKLIN TEMPLETON', 'MKT', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'MKT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(207, 'PARTICIPANTE', 'alinewrighttrejo@gmail.com', 'ALINE', 'WRIGHT', 'TREJO', 'FRANKLIN TEMPLETON', 'MKT MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'MKT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(208, 'PARTICIPANTE', 'juancarlos.leyva@franklintempleton.com', 'JUAN', 'LEYVA', '', 'FRANKLIN TEMPLETON INVESTMENTS CORP.', 'SALES EXEC', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ERIKA ME INVITO PERSONALMENTE Y ME PROMETIO E', 1, NULL, NULL),
(209, 'PARTICIPANTE', 'veytia@teleton.org.mx', 'MARCO', 'VEYTIA', '', 'FUNDACION TELETON MEXICO', 'SUBDIRECTOR DE INVERSIONES', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(210, 'PARTICIPANTE', 'jmucino@gaf.com.mx', 'JOSE ANTONIO', 'MUCIÑO', 'SANCHEZ', 'GAF OPERADORA, S.A. DE C.V.', 'DIRECTOR DE CONTROL OPERATIVO', 'MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(211, 'PARTICIPANTE', 'palducin@gbm.com.mx', 'AMANDO', 'ALDUCIN', '', 'GBM', 'ASESOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(212, 'PARTICIPANTE', 'cwoodworth@gbm.com.mx', 'CARLOS', 'ANDRADE', 'PRADILLO', 'GBM', 'DIRECTOR', 'CD MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'FWOD', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(213, 'PARTICIPANTE', 'mbalcazar@gbm.com.mx', 'MA ELENA', 'BALCAZAR', 'REGALADO', 'GBM', 'ASESOR FINANCIERO AFILIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(214, 'PARTICIPANTE', 'sbarrera@gbm.com.mx', 'SONIA', 'BARRERA', 'LOPEZ', 'GBM', 'SUBDIRECTOR IS', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GBM', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(215, 'PARTICIPANTE', 'labecerrilm@gbm.com.mx', 'LUIS ANGEL', 'BECERRIL', 'MUÑOZ', 'GBM', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO DE TERCERO', 1, NULL, NULL),
(216, 'PARTICIPANTE', 'efcardenasb@gbm.com.mx', 'EDGAR', 'CARDENAS', 'BELTRAN', 'GBM', 'EXECUTIVE RELATIONSHIP', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE GBM', 1, NULL, NULL),
(217, 'PARTICIPANTE', 'ecelorio@gbm.com', 'ENRIQUE', 'CELORIO', 'BALMORI', 'GBM', 'ASESOR FINANCIERO A.', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(218, 'PARTICIPANTE', 'rchavezv@gbm.com.mx', 'RODRIGO', 'CHAVEZ', 'VELAZQUEZ', 'GBM', 'PORTFOLIO MANAGER', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(219, 'PARTICIPANTE', 'rifernandezg@gbm.com.mx', 'RODOLFO', 'FERNANDEZ', '', 'GBM', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(220, 'PARTICIPANTE', 'aferruscag@gbm.com', 'ALBERTO', 'FERRUSCA', 'GARCIA', 'GBM', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(221, 'PARTICIPANTE', 'jfigueroas@gbm.com', 'JOEL', 'FIGUEROA', '', 'GBM', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(222, 'PARTICIPANTE', 'egomezd@gbm.com.mx', 'EDUARDO', 'GOMEZ', 'DE LA GARZA', 'GBM', 'ASESOR FINANCIERO ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MEDIO DE GBM ADVISORS', 1, NULL, NULL),
(223, 'PARTICIPANTE', 'magongorar@gbm.com', 'MARIO ALEJANDRO', 'GONGORA', 'RIVERA', 'GBM', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(224, 'PARTICIPANTE', 'idgonzalez@gbm.com.mx', 'IVAN', 'GONZALEZ', '', 'GBM', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', 'INVITACION', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(225, 'PARTICIPANTE', 'ragonzalezv@gbm.com', 'RAMON ALEJANDRO', 'GONZALEZ', 'VEGA', 'GBM', 'ASESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(226, 'PARTICIPANTE', 'ajgutierrez@gbm.com.mx', 'JORGE', 'GUTIERREZ', '', 'GBM', 'GERENTE', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(227, 'PARTICIPANTE', 'jamartinez@gbm.com.mx', 'JUAN', 'MARTINEZ', '', 'GBM', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GBM', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(228, 'PARTICIPANTE', 'hsmartinez@gbm.com', 'HUGO', 'MARTINEZ', 'CAMPOS', 'GBM', 'AFAS SUCCESS ASSOCIATE', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'GESTOR DE ASESORES', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION INTERNA GBM', 1, NULL, NULL),
(229, 'PARTICIPANTE', 'jmonroy@gbm.com.mx', 'JESUS', 'MONROY', 'LARRAURI', 'GBM', 'ASESOR FINANCIERO SR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GBM', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(230, 'PARTICIPANTE', 'laramirezo@gbm.com.mx', 'LUIS ADRIAN', 'RAMIREZ', 'ORTIZ', 'GBM', 'ADVISOR', 'HUIXQUILUCAN', 'MEXICO', 'EXCHANGE', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(231, 'PARTICIPANTE', 'lsantiagor@gbm.com.mx', 'LUIS', 'SANTIAGO', 'ROMERO', 'GBM', 'ASESOR ESPECIALIZADO EN INVERSIONES', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(232, 'PARTICIPANTE', 'esoto@efin.com.mx', 'ASESORES PROFESIONALES EN', 'SC', '', 'GBM', 'ASESOR FINANCIERO', 'BENITO JUAREZ', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'GBM', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(233, 'PARTICIPANTE', 'jasomozag@gbm.com.mx', 'JOSE ANGEL', 'SOMOZA', '', 'GBM', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GLOBAL X', 1, NULL, NULL),
(234, 'PARTICIPANTE', 'iesosa@gbm.com.mx', 'IGNACIO ENRIQUE', 'SOSA', '', 'GBM', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION GBM', 1, NULL, NULL),
(235, 'PARTICIPANTE', 'esotoagu@gbm.com.mx', 'ELIZABETH', 'SOTO', 'A.', 'GBM', 'ASESOR', 'COYOACAN', 'MEXICO', 'OTHER', 'ASESOR FINANCIERO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ALICIA ARIAS   EN  GBM', 1, NULL, NULL),
(236, 'PARTICIPANTE', 'rtinajero@gbm.com.mx', 'RICARDO', 'TINAJERO', 'POZOS', 'GBM', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(237, 'PARTICIPANTE', 'rvillazevallosr@gbm.com.mx', 'RODOLFO', 'VILLA', 'ZEVALLOS RODRIGUEZ', 'GBM', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'EN MI EMPRESA', 1, NULL, NULL),
(238, 'PARTICIPANTE', 'evillalobos@gbm.com.mx', 'ERICK', 'VILLALOBOS', '', 'GBM', 'DIRECTOR GBM ADVISORY', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(239, 'PARTICIPANTE', 'avillarruel@gbm.com', 'ARACELI', 'VILLARRUEL', 'ARANA', 'GBM', 'AFAS', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE ALICIA ARIAS', 1, NULL, NULL),
(240, 'PARTICIPANTE', 'aarguellesg@gbm.com.mx', 'ALEJANDRO', 'ARGÜELLES', 'GONZALEZ', 'GBM / FACE FINANCIAL ADVISORS', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(241, 'PARTICIPANTE', 'mamendezch@gbm.com', 'MIGUEL ANGEL', 'MENDEZ', 'CHAVERO', 'GBM CASA DE BOLSA', 'FINANCIAL ADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE GBM CASA DE BOLSA', 1, NULL, NULL),
(242, 'PARTICIPANTE', 'jdaldanac@gbm.com.mx', 'JESUS DAVID', 'ALDANA', '', 'GBM GRUPO BURSATIL MEXICANO', 'AFA', 'CULIACAN', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(243, 'PARTICIPANTE', 'econtrerasl@gbm.com.mx', 'EDUARDO', 'CONTRERAS', '', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO AFILIADO', 'LEON', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(244, 'PARTICIPANTE', 'ogonzalezp@gbm.com.mx', 'OSCAR', 'GONZALEZ', '', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO ASOCIADO', 'QUERETARO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(245, 'PARTICIPANTE', 'jclopez@gbm.com.mx', 'JORGE CARLOS', 'LOPEZ', 'CRUZ', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(246, 'PARTICIPANTE', 'laolivase@gbm.com.mx', 'LUIS ALEJANDRO', 'OLIVAS', 'ENRIQUEZ', 'GBM GRUPO BURSATIL MEXICANO', 'SOCIO FUNDADOR NOVA GBM', 'CHIHUAHUA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(247, 'PARTICIPANTE', 'rtinajero@gbm.com', 'RICARDO', 'TINAJERO', '', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'EXCHANGE', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(248, 'PARTICIPANTE', 'daniel.suarez@genommalab.com', 'DANIEL', 'SUAREZ', '', 'GENOMMA LAB INTERNACIONAL SAB DE CV', 'RELACION CON INVERSIONISTAS', 'NAUCALPAN DE JUAREZ', 'MEXICO', 'INDIVIDUAL INVESTOR', 'COMPANY EMPLOYEE', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(249, 'PARTICIPANTE', 'dguiza@globalxetfs.com', 'DIANA', 'GUIZA', '', 'GLOBAL X', 'PRODUCT SPECIALIST', 'NEW YORK', 'UNITED STATES', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ESTAMOS PARTICIPANDO COMO COLABORADORES', 1, NULL, NULL),
(250, 'PARTICIPANTE', 'sgallo@globalxetfs.com', 'SEBASTIAN', 'GALLO', '', 'GLOBAL X ETFS', 'INVESTMENT CONSULTANT', 'BOGOTA', 'COLOMBIA', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'GLOBAL X ETFS FORMA PARTE DEL EVENTO.', 1, NULL, NULL),
(251, 'PARTICIPANTE', 'ftorres@globalxetfs.com', 'FEDERICO', 'TORRES', 'GRAJALES', 'GLOBAL X ETFS', 'SVP, HEAD OF LATINAMERICAN SALES.', 'BOGOTA', 'COLOMBIA', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(252, 'PARTICIPANTE', 'diego.gonzalezg@gs.com', 'DIEGO', 'GONZALEZ', '', 'GOLDMAN SACHS CASA DE BOLSA S.A. DE C.V.', 'SALES ASSOCIATE', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'GOLDMAN SACHS', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(253, 'PARTICIPANTE', 'jpartida@good-grip.com', 'JORGE', 'PARTIDA', 'REYES', 'GOOD GRIP EXECUTIVE TRAINING', 'FOUNDER', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONOCIDO', 1, NULL, NULL),
(254, 'PARTICIPANTE', 'diej4cob@duystars.com.mx', 'JUAN DIEGO', 'JACOBO', 'HERNANDEZ', 'GOOGLE LLC', 'DEVERLOPER', 'LEON', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(255, 'PARTICIPANTE', 'kzhurtador@sapv.com.mx', 'KAREN', 'HURTADO', 'ROMERO', 'GPV', 'ANALISTA DE FINANZAS CORPORATIVAS Y RI', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', 'COMPAÑERO DE TRABAJO', 1, NULL, NULL),
(256, 'PARTICIPANTE', 'crosales@mobilityado.com', 'CARLOS', 'GUTIERREZ', '', 'GRUPO ADO', 'CIO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', 'OTHER', 'CORPORACION', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(257, 'PARTICIPANTE', 'jose@ainbinder.com.mx', 'JOSE', 'AINBINDER', '', 'GRUPO AINBINDER AGENTE DE SEGUROS SA DE CV', 'CEO', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', 'FINANCIAL ADVISOR', '', 'LIFE & ANNUITY', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(258, 'PARTICIPANTE', 'pdiez@grupobmv.com.mx', 'PEDRO', 'DIEZ', '', 'GRUPO BMV', 'VIGILANCIA DE MERCADOS', 'MEXICO CITY', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(259, 'PARTICIPANTE', 'gesquivel@grupobmv.com.mx', 'PAVEL', 'ESQUIVEL', '', 'GRUPO BMV', 'VP INDICES & STATISTICS', 'MEXICO CITY', 'MEXICO', 'EXCHANGE', '', 'OTHER', 'FINANCE', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(260, 'PARTICIPANTE', 'ammoreno@grupobmv.com.mx', 'ADRIANA', 'MARTINEZ', 'MORENO', 'GRUPO BMV', 'GERENTE DE SOPORTE', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(261, 'PARTICIPANTE', 'nrayo@grupobmv.com.mx', 'NANCY', 'RAYO', '', 'GRUPO BMV', 'ESPECIALISTA MARKET DATA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'DIRECTO BMV', 1, NULL, NULL),
(262, 'PARTICIPANTE', 'emadero@grupobmv.com.mx', 'SANTIAGO', 'MADERO', '', 'GRUPO BOLSA MEXICANA', 'ANALISTA MERCADO GLOBAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(263, 'PARTICIPANTE', 'rcarinoc@grupobmv.com.mx', 'ROSALINDA', 'CONTRERAS', 'CARIÑO', 'GRUPO BOLSA MEXICANA DE VALORES', 'MARKET DATA SPECIALIST AT MEXICAN STOCK EXCHA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(264, 'PARTICIPANTE', 'argomezs@gbm.com', 'ROMINA', 'GOMEZ', 'SILVA', 'GRUPO BURSATIL MEXICANO', 'VP EXPANSION ASESORES AFILIADOS', 'MEXICO CITY', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DIRECTA S&P', 1, NULL, NULL),
(265, 'PARTICIPANTE', 'jmarceod@gbm.com', 'JOSE MARIANO', 'ARCEO', 'DIAZ', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(266, 'PARTICIPANTE', 'arturo.dorantes.chavez@gmail.com', 'ARTURO', 'DORANTES', 'CHAVEZ', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(267, 'PARTICIPANTE', 'pgutierreza@gbm.com', 'PIERO', 'GUTIERREZ', '', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(268, 'PARTICIPANTE', 'aramirezpaulin@gmail.com', 'ALEJANDRO', 'RAMIREZ', '', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'HUIXQUILUCAN', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(269, 'PARTICIPANTE', 'mmhernandezi@gbm.com.mx', 'MONICA', 'HERNANDEZ', '', 'GRUPO BURSATIL MEXICANO, S.A. DE C.V., CASA D', 'ASESOR EN ESTRATEGIAS DE INVERSION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(270, 'PARTICIPANTE', 'iaceves@gbm.com.mx', 'ISRAEL', 'ACEVES', '', 'GRUPO CARIM', 'AFA', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(271, 'PARTICIPANTE', 'smiramontes@corde.com.mx', 'SALVADOR', 'MIRAMONTES', '', 'GRUPO CORDE ASESORES', 'PM', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(272, 'PARTICIPANTE', 'fcampos@aserta.com', 'MARIA FERNANDA', 'CAMPOS', 'MORENO', 'GRUPO FINANCIERO ASERTA', 'ANALISTA TESORERIA', 'PERIFERICO SUR 4829', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(273, 'PARTICIPANTE', 'alrodriguez@aserta.com', 'ALEJANDRO', 'RODRIGUEZ', '', 'GRUPO FINANCIERO ASERTA', 'DIRECTOR DE INVERSIONES', 'PERIFERICO SUR 4829', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(274, 'PARTICIPANTE', 'hgonzaleza@inbursa.com', 'HECTOR CLEMENTE', 'GONZALEZ', 'ARREDONDO', 'GRUPO FINANCIERO INBURSA', 'GERENTE FISCAL', 'MEXICO CITY', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(275, 'PARTICIPANTE', 'eizurietam@inbursa.com', 'MAURICIO', 'IZURIETA', 'MARTINEZ', 'GRUPO FINANCIERO INBURSA, S.A.B. DE C.V.', 'ANALISTA SR BURS?TIL', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(276, 'PARTICIPANTE', 'arodriguez@mvalores.fi.cr', 'ADRIAN', 'RODRIGUEZ', '', 'GRUPO FINANCIERO MERCADO DE VALORES DE COSTA ', 'ANALISTA DE INVERSIONES RESPONSABLES', 'SAN JOSE', 'COSTA RICA', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(277, 'PARTICIPANTE', 'hjasso83@gmail.com', 'HUGO', 'JASSO', '', 'GRUPO GMI OFICIAL', 'HEAD OF FP&A', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(278, 'PARTICIPANTE', 'bochoa@igs.com.mx', 'BARBARA', 'OCHOA', 'WOODWORTH', 'GRUPO IGS', 'CEO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(279, 'PARTICIPANTE', 'usalas@ginversion.com', 'ULISES', 'SALAS', '', 'GRUPO INVERSION', 'GERENTE DE ADMINISTRACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(280, 'PARTICIPANTE', 'eportillo@mrp.com.mx', 'EDUARDO', 'PORTILLO', '', 'GRUPO MRP', 'GERENTE COMPLIANCE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(281, 'PARTICIPANTE', 'pcarrancom@sapv.com.mx', 'PEDRO', 'CARRANCO', 'MARTINEZ', 'GRUPO PEÑA VERDE', 'ESPECIALISTA DE INVERSIONES', 'CDMX', 'MEXICO', 'INSURANCE', 'INDICES', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(282, 'PARTICIPANTE', 'emorenob@sapv.com.mx', 'ELLIS', 'MORENO', '', 'GRUPO PEÑA VERDE', 'ANALISTA DE INVERSIONES', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(283, 'PARTICIPANTE', 'avillalobosj@gseguros.com.mx', 'ABRAHAM', 'VILLALOBOS', '', 'GRUPO PEÑA VERDE', 'ANALISTA ACTIVOS ALTERNATIVOS', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(284, 'PARTICIPANTE', 'mslater@vepormas.com', 'MARIAN', 'SLATER', '', 'GRUPO VE POR MAS', 'GERENTE DE ADMINISTRACION DE PORTAFOLIOS', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(285, 'PARTICIPANTE', 'jonathan.saucedo@hdi.com.mx', 'JONAHTAN', 'SAUCEDO', '', 'HDI SEGUROS', 'INVESTMENT MANAGER', 'LEON', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'AMIS', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(286, 'PARTICIPANTE', 'marilu.rodriguez@hdi.com.mx', 'MARILU', 'RODRIGUEZ', '', 'HDI SEGUROS SA DE CV', 'COORDINADORA DE INVERSIONES', 'LEON', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'DAÑOS', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(287, 'PARTICIPANTE', 'salvador@hidalgoconsultores.net', 'SALVADOR', 'HIDALGO', '', 'HIDALGO CONSULTORES, S.A. DE C.V.', 'CEO', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'CONSULTANT', 'CONSEJERO', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(288, 'PARTICIPANTE', 'A01378063@tec.mx', 'PAULINA', 'CALVILLO', '', 'HSBC', 'SENIOR ANALYST', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR UN GRUPO DE FINANZAS', 1, NULL, NULL),
(289, 'PARTICIPANTE', 'alberto1.gonzalez@hsbc.com.mx', 'ALBERTO', 'GONZALEZ', 'LUNA', 'HSBC', 'BANQUERO PRIVADO', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE UN AMIGO DEL BANCO', 1, NULL, NULL),
(290, 'PARTICIPANTE', 'jaime.saborio@hsbc.com.mx', 'JAIME', 'SABORIO', '', 'HSBC', 'HEAD OF MEXICO ETF & INDEXING SALES', 'CDMX', 'MEXICO', 'OTHER', 'ETF PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(291, 'PARTICIPANTE', 'jesus.zamudio@hsbc.com.mx', 'JESUS', 'ZAMUDIO', '', 'HSBC', 'RM', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DIRECTA', 1, NULL, NULL),
(292, 'PARTICIPANTE', 'maria.garciaz@hsbc.com.mx', 'MARIA DEL CARMEN', 'GARCIA', 'ZOBERANI', 'HSBC ASSET MANAGEMENT', 'HEAD VENTAS INSTITUCIONALES', 'CDMX', 'MEXICO', 'OTHER', 'GESTION DE INVERSIONES', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(293, 'PARTICIPANTE', 'ana.paula.montano@hsbc.com.mx', 'ANA PAULA', 'MONTAÑO', 'MEDINA MORA', 'HSBC ASSET MANAGEMENT GLOBAL', 'LAM CHIEF RISK OFFICER', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'ASSET MANAGER', '', '', '', '', '', '', 'OTHER', 'INVITACION DE EQUIPO INTERNO', 1, NULL, NULL),
(294, 'PARTICIPANTE', 'mayte.rico@hsbc.com.mx', 'MAYTE', 'RICO', '', 'HSBC ASSET MANAGEMENT MEXICO', 'CHIEF INVESTOR OFFICER', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA', 1, NULL, NULL),
(295, 'PARTICIPANTE', 'adriana@estrategiasustentable.com.mx', 'ADRIANA', 'PULIDO', 'SANDOVAL', 'ILUNKA, ESTRATEGIA SUSTENTABLE', 'FUNDADORA', 'CDMX', 'MEXICO', 'OTHER', 'CONSEJERA', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(296, 'PARTICIPANTE', 'hsandoval@hsoinversiones.com', 'HERIBERTO', 'SANDOVAL', 'OLMEDO', 'INCREASE KAPITAL', 'ASESOR EN INVERSIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(297, 'PARTICIPANTE', 'rodriguez_26089@univdep.edu.mx', 'JOSE MAURICIO', 'RODRIGUEZ', 'ANDRADE', 'INDEPENDIENTE', 'INDEPENDIENTE', 'CDMX', 'MEXICO', 'OTHER', 'ESTUDIANTE', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(298, 'PARTICIPANTE', 'gabriela_soriano@ciencias.unam.mx', 'GABRIELA', 'SORIANO', 'SERRANO', 'INDEPENDIENTE', 'INVERSIONISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(299, 'PARTICIPANTE', 'jessica.soriano@comunidad.unam.mx', 'JESSICA', 'SORIANO', 'SERRANO', 'INDEPENDIENTE', 'INVERSIONISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(300, 'PARTICIPANTE', 'joelsotof@pacifico.com.pe', 'JOEL', 'SOTO', 'FLORES', 'INDEPENDIENTE', 'CONSULTOR', 'LIMA', 'PERU', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(301, 'PARTICIPANTE', 'agarza@grupobmv.com.mx', 'ALEJANDRO', 'GARZA', '', 'INDEVAL GRUPO BMV', 'DIRCTOR COMERCIAL Y PRODUCTO', 'CDMX', 'MEXICO', 'OTHER', 'DEPOSITARIO CSD', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(302, 'PARTICIPANTE', 'hibarra@profi-mex.com', 'ARMANDO', 'IBARRA', '', 'INDIVIDUAL', 'PUBLICO', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'EL UNIVERSAL', 1, NULL, NULL),
(303, 'PARTICIPANTE', 'roberto_urena@penoles.com.mx', 'ROBERTO', 'URENA', '', 'INDUSTRIAS PEÑOLES, S.A.B. DE C.V.', 'ESPECIALISTA DE ESTRUCTURACION FINANCIERA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ANALISTA FINANCIERO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(304, 'PARTICIPANTE', 'ogonzalez@infonavit.org.mx', 'OMAR', 'GONZALEZ', 'MOTA', 'INFONAVIT', 'CONSULTOR', 'CDMX', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(305, 'PARTICIPANTE', 'ucastro@infonavit.org.mx', 'ULISES', 'CASTRO', '', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'PORTFOLIO MANAGER EQUITY', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(306, 'PARTICIPANTE', 'SDELGADO@infonavit.org.mx', 'SAMANTHA', 'DELGADO', 'NAVARRETE', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'CONSULTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ACTUARIO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'OTRO', 1, NULL, NULL),
(307, 'PARTICIPANTE', 'rhernandezc@infonavit.org.mx', 'RAYMUNDO JESUS', 'HERNANDEZ', 'CRUZ', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'GERENTE DE RIESGO DE MERCADO', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET OWNER', 'ADMINISTRACION DE RIESGOS', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(308, 'PARTICIPANTE', 'mvictoria@infonavit.org.mx', 'MANUEL', 'VICTORIA', '', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'CIO', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'SAR', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(309, 'PARTICIPANTE', 'osorianol1600@alumno.ipn.mx', 'OSCAR ALEXANDER', 'SORIANO', 'LOPEZ', 'INSTITUTO POLITECNICO NACIONAL', 'STUDENT', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(310, 'PARTICIPANTE', 'dvillav1900@alumno.ipn.mx', 'DAVID', 'VILLA', '', 'INSTITUTO POLITECNICO NACIONAL', 'ESTUDIANTE', 'ESTADO DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(311, 'PARTICIPANTE', 'alvahernandezg@intercam.com.mx', 'ALVARO', 'HERNANDEZ', 'GUTIERREZ', 'INTERCAM', 'EQUITY RESEARCH ANALYST', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(312, 'PARTICIPANTE', 'roperezdiaz@hotmail.com', 'ROBERTO ULISES', 'PEREZ', 'DIAZ DE LEON', 'INTERCAM', 'HOMEMAKER', 'SAN LUIS POTOSI', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(313, 'PARTICIPANTE', 'mtolentino@intercam.com.mx', 'MAURICIO', 'TOLENTINO', 'GONZALEZ', 'INTERCAM', 'EJECUTIVO DE RELACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(314, 'PARTICIPANTE', 'asanbarbara@gmail.com', 'ALEJANDRO', 'SANCHEZ', 'BARBARA', 'INTERCAM CASA DE BOLSA, S.A. DE C.V.', 'DIRECTOR DE BANCA PRIVADA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(315, 'PARTICIPANTE', 'cchairez@interesse.com.mx', 'CAROLINA', 'CHAIREZ', '', 'INTERESSE', 'INVESTMENT FUNDS MANAGER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'REFERENCIADOR', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(316, 'PARTICIPANTE', 'a.amaya@inverente.com', 'ALEJANDRO', 'AMAYA', '', 'INVERENTE', 'GESTOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(317, 'PARTICIPANTE', 'lpalacio@invex.com', 'LUIS', 'PALACIO', '', 'INVEX', 'DIR VENTAS INSTITUCIONALES', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'SALES ASSET MANAGEMENT', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(318, 'PARTICIPANTE', 'pingu66648@invex.com', 'ROCIO ISABEL', 'VALENCIA', 'LOPEZ', 'INVEX BANCO', 'ESPECIALISTA DE PLANEACION FINANCIERA', 'TLALPAN CENTRO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(319, 'PARTICIPANTE', 'rbenavidezr1300@alumno.ipn.mx', 'RODRIGO', 'BENAVIDEZ', 'RODRIGUEZ', 'IPN', 'ESTUDIANTE', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'TWITTER', '', 1, NULL, NULL),
(320, 'PARTICIPANTE', 'jcantur1400@alumno.ipn.mx', 'JOHAN ALEXIS', 'CANTU', 'RUIZ', 'IPN', 'INVERSIONISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(321, 'PARTICIPANTE', 'jaime.escamilla@iqsec.com.mx', 'JAIME', 'ESCAMILLA', '', 'IQSEC', 'DIRECTOR ALIANZAS', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'WHATSAPP', 1, NULL, NULL),
(322, 'PARTICIPANTE', 'carlos.brito@jpmorgan.com', 'CARLOS', 'BRITO', '', 'J.P. MORGAN ASSET MANAGEMENT', 'ED', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(323, 'PARTICIPANTE', 'juan.p.medina-mora@jpmorgan.com', 'JUAN PABLO', 'MEDINA-MORA', '', 'J.P. MORGAN ASSET MANAGEMENT', 'MANAGING DIRECTOR', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(324, 'PARTICIPANTE', 'jbeltran@jaroscapital.net', 'JUAN CARLOS', 'BELTRAN', 'LUCIO', 'JAROS CAPITAL ASESOR INDEPENDIENTE', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(325, 'PARTICIPANTE', 'brenda.ramirezrodriguez@jpmchase.com', 'BRENDA MARIANA', 'RAMIREZ', '', 'JP MORGAN ASSET MANAGEMENT', 'CLIENT ADVISOR', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(326, 'PARTICIPANTE', 'Fernando.pino@juliusbaer.com', 'FERNANDO', 'PINO', '', 'JULIUS BÄR', 'DIRECTOR GENERAL ADJUNTO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'AZTLAN', 1, NULL, NULL),
(327, 'PARTICIPANTE', 'ernesto.velasco@kcc.com', 'ERNESTO', 'VELASCO', '', 'KIMBERLY CLARK DE MEXICO', 'SUPERVISOR CORPORATIVO DE CONTABILIDAD', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(328, 'PARTICIPANTE', 'edgaralonso.amezcua@kcc.com', 'EDGAR ALONSO', 'AMEZCUA', 'VERGARA', 'KIMBERLY-CLARK DE MEXICO, S.A.B. DE C.V.', 'INFORMACION FINANCIERA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION', 1, NULL, NULL),
(329, 'PARTICIPANTE', 'carlos.hernandez-rios@kcc.com', 'CARLOS', 'HERNANDEZ', 'RIOS', 'KIMBERLY-CLARK DE MEXICO, S.A.B. DE C.V.', 'GERENTE DE INFORMACION FINANCIERA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(330, 'PARTICIPANTE', 'mmontesinos@larrainvial.com', 'MACARENA', 'MONTESINOS', '', 'LARRAINVIAL', 'ACTIVOS ALTERNATIVOS - DISTRIBUCION INSTITUCI', 'SANTIAGO', 'CHILE', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVESCO', 1, NULL, NULL),
(331, 'PARTICIPANTE', 'mramirezc@larrainvial.com', 'MARIA FERNANDA', 'RAMIREZ', '', 'LARRAINVIAL', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', 'ORGANIZADOR', 1, NULL, NULL),
(332, 'PARTICIPANTE', 'asaldias@larrainvial.com', 'ALEJANDRA', 'SALDIAS', '', 'LARRAINVIAL', 'HEAD SALES LATAM', 'LAS CONDES', 'CHILE', 'OTHER', 'DISTRIBUIDOR EFT INVESCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(333, 'PARTICIPANTE', 'berenicerangel@latinamericainvest.com', 'BERENICE', 'RANGEL', '', 'LATIN AMERICA INVEST', 'DIRECTORA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'WEALTH MANAGEMENT', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(334, 'PARTICIPANTE', 'ricardo@llamainvest.com', 'RICARDO', 'LATOURNERIE', '', 'LLAMA', 'CEO', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(335, 'PARTICIPANTE', 'rrivera@llorenteycuenca.com', 'RUBEN', 'RIVERA', '', 'LLYC', 'CONSULTOR SENIOR', 'CDMX', 'MEXICO', 'OTHER', 'COMUNICACION', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', 'LLYC', 1, NULL, NULL),
(336, 'PARTICIPANTE', 'asampedrol@llorenteycuenca.com', 'ALEJANDRO', 'SAMPEDRO', '', 'LLYC', 'DIRECTOR COMUNICACION FINANCIERA', 'CDMX', 'MEXICO', 'OTHER', 'COMUNICACION', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(337, 'PARTICIPANTE', 'ssanchez@llorenteycuenca.com', 'SAUL', 'SANCHEZ', '', 'LLYC', 'CONSULTOR', 'CDMX', 'MEXICO', 'OTHER', 'COMUNICACION', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(338, 'PARTICIPANTE', 'jmeraz@lunngo.mx', 'JORGE', 'MERAZ', '', 'LUNNGO', 'PROMOTOR', 'AREA METROPOLITANA DE CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(339, 'PARTICIPANTE', 'gustavocalvo@luzcapital.com', 'GUSTAVO', 'CALVO', 'IRABIEN', 'LUZ CAPITAL', 'PM', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(340, 'PARTICIPANTE', 'mgomezra@secgob.cdmx.gob.mx', 'MONTSERRAT', 'GOMEZ', 'RAMIREZ', 'MANU MAYEJ', 'INVESTIGADORA', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'TWITTER', '', 1, NULL, NULL),
(341, 'PARTICIPANTE', 'ymartine@mapfre.com.mx', 'YAIR RODOLFO', 'MARTINEZ', '', 'MAPFRE MEXICO', 'VALDES', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'CONSULTANT', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(342, 'PARTICIPANTE', 'tensia@mmaglobalinvestment.com', 'MARIA HORTENSIA', 'MARMOLEJO', '', 'MARTIN, MARMOLEJO Y ASOCIADOS, SC', 'PARTNER, CO-CIO', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(343, 'PARTICIPANTE', 'ffarca@masari.mx', 'FREDIE', 'FARCA', 'CHARABATI', 'MASARI CASA DE BOLSA SA', 'PRESIDENTE CONSEJO', 'MEXIC DF', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(344, 'PARTICIPANTE', 'joyce.cohen@masari.mx', 'JOYCE', 'SHAOOLI', 'NEHMAD', 'MASARI CASA DE BOLSA SA', 'DIRECCION INVERSIONES', 'MEXIC DF', 'MEXICO', 'EXCHANGE', '', 'WIREHOUSE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(345, 'PARTICIPANTE', 'Miriam.Gonzalez@mercermarshbeneficios.com', 'MIRIAM', 'GONZALEZ', '', 'MERCER MARSH BENEFICIOS', 'GERENTE H&B', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', 'HEALTH', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(346, 'PARTICIPANTE', 'gcopka@yahoo.com', 'GERARDO', 'COPCA', '', 'METANALISIS, S.A. DE C.V.', 'ANALISTA FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'ANALISTA INDEPENDIENTE', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(347, 'PARTICIPANTE', 'ealvarezd@gbm.com', 'ERNESTO', 'ALVAREZ', 'DE LA ROSA', 'METODICA ASESORES FINANCIEROS, S.A. DEC.V.', 'CO CEO', 'PUEBLA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGIONAL BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(348, 'PARTICIPANTE', 'abrenern@grupobmv.com.mx', 'ARON', 'BRENER', 'NEDVEDOVICH', 'MEXDER', 'SUBIDRECTOR DE OPERACIONES', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(349, 'PARTICIPANTE', 'josemd@grupobmv.com.mx', 'JOSE', 'DE', 'DIOS', 'MEXDER', 'DIRECTOR GENERAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(350, 'PARTICIPANTE', 'rosa.argueta@mgcapital.net', 'ROSA ISELA', 'ARGUETA', 'GUTIERREZ', 'MG CAPITAL', 'ACCOUNT MANAGER', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(351, 'PARTICIPANTE', 'ernesto.garcia@mifel.com.mx', 'ERNESTO', 'GARCIA', '', 'MIFEL', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(352, 'PARTICIPANTE', 'andrea.mariscal@mifel.com.mx', 'ANDREA MICHELLE', 'MARISCAL', 'SANCHEZ', 'MIFEL', 'TRAINEE', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'EMPRESA LABORAL', 1, NULL, NULL),
(353, 'PARTICIPANTE', 'maricruz.martinez@mifel.com.mx', 'MARICRUZ', 'MARTINEZ', '', 'MIFEL', 'DIRECTORA OPERADORA DE FONDOS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(354, 'PARTICIPANTE', 'jimena@miflink.com', 'JIMENA', 'COLIN', 'FERNANDEZ', 'MIFLINK ADVISORS INDEPENDIENTE S.C.', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONOCIDO', 1, NULL, NULL),
(355, 'PARTICIPANTE', 'aarteaga@mobilityado.com', 'ALEJANDRO', 'ARTEAGA', '', 'MOBILITY ADO', 'CORPORATE INVESTMENTS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(356, 'PARTICIPANTE', 'marrigunaga@monex.com.mx', 'MANUEL', 'ARRIGUNAGA', '', 'MONEX', 'DIRECTOR DE FONDOS', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'OPERADORA DE FONDOS', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(357, 'PARTICIPANTE', 'ahuitronf@monex.com.mx', 'ALAN', 'HUITRON', '', 'MONEX', 'TRADER', 'MEXICO CITY', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(358, 'PARTICIPANTE', 'brodriguezo1@monex.com.mx', 'BRIAN', 'RODRIGUEZ', '', 'MONEX', 'ANALISTA BURSATIL', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(359, 'PARTICIPANTE', 'jrsolano@monex.com.mx', 'ROBERTO', 'SOLANO', '', 'MONEX', 'ESTRATEGA GLOBAL', 'M?XICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(360, 'PARTICIPANTE', 'odincano@monex.com.mx', 'ODIN', 'CANO', 'RAMOS', 'MONEX GRUPO FINANCIERO, S.A. DE C.V.', 'PORTAFOLIO MANAGER EQUITY', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'OPERADORA DE FONDOS', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(361, 'PARTICIPANTE', 'miguel.perez@ms.com', 'MIGUEL ANGEL', 'PEREZ', 'ZAMORANO', 'MORGAN STANLEY MEXICO CASA DE BOLSA S.A. C.V.', 'DIRECTOR DE OPERACIONES', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(362, 'PARTICIPANTE', 'pablo.miller@morningstar.com', 'PABLO', 'MILLER', '', 'MORNINGSTAR', 'SALES DIRECTOR', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', 'SERVICIOS FINANCIEROS', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(363, 'PARTICIPANTE', 'elias.padilla@multiva.com.mx', 'ELIAS', 'PADILLA', '', 'MULTIVA', 'MANAGER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(364, 'PARTICIPANTE', 'angelica070871@gmail.com', 'MARIA ANGELICA', 'ROBLES', 'GONZALEZ', 'MULTIVA', 'SUBDIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(365, 'PARTICIPANTE', 'rjassor@gbm.com.mx', 'RICARDO', 'RODRIGUEZ', 'JASSO', 'NAACXXUP3YJS6FJ4  GBM', 'ASESOR FINANCIERO AFIS', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM CASA DE BOLSA', 1, NULL, NULL),
(366, 'PARTICIPANTE', 'sflores@ofnafin.com.mx', 'SANTIAGO', 'FLORES', '', 'NAFINSA', 'SOMOZA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ADMINISTRATIVO', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(367, 'PARTICIPANTE', 'mutrilla@ofnafin.com.mx', 'MARIA', 'UTRILLA', '', 'NAFINSA', 'OPERADOR JUNIOR', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(368, 'PARTICIPANTE', 'sandrine.klock@natixis.com', 'SANDRINE', 'KLOCK', '', 'NATIXIS IM MEXICO', 'HEAD OF WHOLESALE', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(369, 'PARTICIPANTE', 'bgomez@networth.mx', 'BRENDA', 'GOMEZ', '', 'NET WORTH', 'FINADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(370, 'PARTICIPANTE', 'rchavero@networth.mx', 'RICARDO MIGUEL', 'CHAVERO', 'MOYA', 'NETWORTH', 'CEO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'INDICES', 'REGISTERED INVESTMENT ADVISOR', 'ASESOR', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(371, 'PARTICIPANTE', 'gbarroso@gbm.com.mx', 'GUILLERMO', 'BARROSO', '', 'NFX', 'AFA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(372, 'PARTICIPANTE', 'jortega@gbm.com.mx', 'JULIO JAIME', 'ORTEGA', '', 'NFX', 'SOCIO', 'DF', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(373, 'PARTICIPANTE', 'rfarias@gbm.com.mx', 'RODRIGO', 'FARIAS', 'SANCHEZ', 'NFX FINANCIAL ADVISORS', 'CEO & FOUNDER', 'CD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(374, 'PARTICIPANTE', 'mjoliverc@gbm.com', 'MARIA JOSE', 'OLIVER', 'COINDREAU', 'NFX FINANCIAL ADVISORS', 'GERENTE DE DESARROLLO DE NEGOCIO', 'CD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(375, 'PARTICIPANTE', 'GIOVANNI@NOIKI.COM', 'GIOVANNI', 'DE', 'GENESSE', 'NOIKI OFC, S. A. DE C. V.', 'ABOGADO', 'QUERETARO', 'MEXICO', 'OTHER', 'EMISOR DE VALORES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(376, 'PARTICIPANTE', 'ereyes@amib.com.mx', 'ERNESTO', 'REYES', 'RETANA', 'NON CLIENT – S&P WEBSITE', 'DIRECTOR TECNICO DE COMITES', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ASOCIACION GREMIAL', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(377, 'PARTICIPANTE', 'martha@nonnaimagenpersonal.com', 'MARTHA LIDIA', 'RAMIREZ', 'URBINA', 'NONNA IMAGEN PERSONAL', 'DIRECTORA DE OPERACIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(378, 'PARTICIPANTE', 'srevuelta@nostroadvisors.com.mx', 'JOSE ANTONIO', 'PALACIO', 'JUNCO', 'NOSTRO ENERGY', 'INDEPENDIENTE', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'RECOMENDACION PERSONAL', 1, NULL, NULL),
(379, 'PARTICIPANTE', 'monicaorihuela@nscasesores.com', 'MONICA', 'ORIHUELA', '', 'NSC ASESORES', 'PLD', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(380, 'PARTICIPANTE', 'angelsolis@nscasesores.com', 'ANGEL', 'SOLIS', '', 'NSC ASESORES', 'ANALISTA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(381, 'PARTICIPANTE', 'carolinaperez@nscasesores.com', 'CAROLINA', 'PEREZ', '', 'NSC ASESORES S.C. ASESOR EN INVERSIONES INDEP', 'ANALISTA', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(382, 'PARTICIPANTE', 'gmartrod@nttdata.com', 'GISELA', 'MARTINEZ', '', 'NTTDATA', 'CONSULTANT', 'MEXICO', 'MEXICO', 'OTHER', 'MANAGEMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(383, 'PARTICIPANTE', 'oscar.garcia@nubank.com.br', 'OSCAR ABRAHAM', 'GARCIA', 'MARTINEZ', 'NUBANK', 'FINANCE DATA ANALYST', 'MEXICO CITY', 'MEXICO', 'OTHER', 'CREDITOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(384, 'PARTICIPANTE', 'mbrocado@nuclo-cio.com', 'MAURICIO', 'BROCADO', 'MARTINEZ', 'NUCLO CONSULTING S.C.', 'CHIEF INVESTMENT STRATEGIST', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION AZTLAN', 1, NULL, NULL),
(385, 'PARTICIPANTE', 'natalia.villarruel@neximo.mx', 'NATALIA', 'VILLARRUEL', 'OROZCO', 'NV INMOBILIARIA', 'DIRECTORA CORPORATIVO', 'MÈXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(386, 'PARTICIPANTE', 'dmuniz@occidentecapital.com', 'DIEGO', 'MUÑIZ', '', 'OCCIDENTE CAPITAL', 'MANAGER', 'GUADALAJARA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(387, 'PARTICIPANTE', 'paolam@ofnafin.com.mx', 'PAOLA', 'AGUILAR', '', 'OFINSA', 'OPERADOR SENIOR', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(388, 'PARTICIPANTE', 'hector.ortega@oigbase.com', 'MARCELO', 'ORTEGA', '', 'OIG', 'ANALYST ASSET MANAGEMENT', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL);
INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`, `status`, `impresion`, `checkin`) VALUES
(389, 'PARTICIPANTE', 'fernando.crisanto@covaf.com', 'FERNANDO', 'CRISANTO', 'TOMAS', 'OPERADORA COVAF S.A. DE C.V.', 'RIESGOS', 'MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(390, 'PARTICIPANTE', 'andrea.mendez.gamino@banorte.com', 'ANDREA', 'MENDEZ', 'GAMINO', 'OPERADORA DE FONDOS BANORTE, S.A. DE C.V.', 'SUBDIRECTOR ADMINISTRACION FI', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(391, 'PARTICIPANTE', 'dafne.rivera.cardenas@banorte.com', 'DAFNE MINERVA', 'RIVERA', 'CARDENAS', 'OPERADORA DE FONDOS BANORTE, S.A. DE C.V.', 'GERENTE', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(392, 'PARTICIPANTE', 'natalia.martinez@banorte.com', 'NATALIA', 'MARTINEZ', '', 'OPERADORA FONDOS BANORTE', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(393, 'PARTICIPANTE', 'smejiap@inbursa.com', 'SERGIO EFREN', 'MEJIA', 'PALAFOX', 'OPERADORA INBURSA DE FONDOS DE INVERSION, S.A', 'GERENTE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(394, 'PARTICIPANTE', 'rmendozab@inbursa.com', 'RAFAEL', 'MENDOZA', '', 'OPERADORA INBURSA DE FONDOS DE INVERSION, S.A', 'RESPONSABLE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA', 1, NULL, NULL),
(395, 'PARTICIPANTE', 'kacosta@operadoravalmex.mx', 'KIMBERLY', 'ACOSTA', 'MORIEL', 'OPERADORA VALMEX', 'DIRECTORA COMERCIAL DISTRIBUCION', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(396, 'PARTICIPANTE', 'rosamaria.cruz@operadoravalmex.mx', 'ROSA MARIA', 'CRUZ', 'GALLARDO', 'OPERADORA VALMEX', 'CONTRALORIA', 'MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(397, 'PARTICIPANTE', 'jpons@operadoravalmex.mx', 'EDUARDO', 'PONS', '', 'OPERADORA VALMEX', 'ANALISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(398, 'PARTICIPANTE', 'aalvarado@operadoravalmex.mx', 'ABRAHAM', 'ALVARADO', '', 'OPERADORA VALMEX DE FONDOS DE INVERSION', 'PORTFOLIO MANAGER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(399, 'PARTICIPANTE', 'myhuertaj@sapv.com.mx', 'MIRIAM YAMILE', 'HUERTA', 'JIMENEZ', 'PEÑA VERDE', 'ANALISTA DE INVERSIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(400, 'PARTICIPANTE', 'scornejo@pensionissste.gob.mx', 'SERGIO', 'CORNEJO', 'LORENZO', 'PENSION ISSSTE', 'EQUITY ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'OTHER', 'EMAIL BBVA', 1, NULL, NULL),
(401, 'PARTICIPANTE', 'lvelasco@pensionissste.gob.mx', 'LUIS', 'ARVIZU', '', 'PENSIONISSSTE', 'PORTFOLIO MANAGER', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO DE PENSIONES', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(402, 'PARTICIPANTE', 'dmedinaa@pensionissste.gob.mx', 'DIEGO ALESSANDRO', 'MEDINA', 'ACOSTA', 'PENSIONISSSTE', 'ANALISTA DE RENTA VARIABLE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO DE PENSIONES', '', '', '', '', '', '', 'OTHER', 'EMAIL DE SPONSOR', 1, NULL, NULL),
(403, 'PARTICIPANTE', 'liliana.ceja@pepsico.com', 'LILIANA', 'CEJA', 'URBIOLA', 'PEPSICO', 'DATA ASSOC ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FINANZAS', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(404, 'PARTICIPANTE', 'bg@perfectcircle.life', 'BRENDA', 'GONZALEZ', '', 'PERFECT CIRCLE', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(405, 'PARTICIPANTE', 'ycanales@phiinvestment.com.mx', 'YAMIL', 'CANALES', '', 'PHI INVESTMENT CAPITAL', 'ETF MANAGER', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(406, 'PARTICIPANTE', 'eyanez@phiinvestment.com.mx', 'EDGAR', 'YAÑEZ', '', 'PHI INVESTMENT CAPITAL', 'CEO', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(407, 'PARTICIPANTE', 'gaspar.mas@weareplanet.vom', 'GASPAR', 'MAA', '', 'PLANET', 'ANALISTA', 'ZAPOPAN', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(408, 'PARTICIPANTE', 'aldo.jauregui@dif.tech', 'ALDO', 'JAUREGUI', '', 'PLATA', 'DIRECTOR DE INVERSIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(409, 'PARTICIPANTE', 'info@procesoresultado.com', 'JOAQUIN', 'GASPAR', '', 'PR', 'CIO', 'PUEBLA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'AZTLAN', 1, NULL, NULL),
(410, 'PARTICIPANTE', 'juan.bazaldua@pwc.com', 'JUAN', 'BAZALDUA', '', 'PRICEWATERHOUSECOOPERS MEXICO', 'ESG MANAGER', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(411, 'PARTICIPANTE', 'Plascencia.david@principal.com', 'DAVID', 'PLASCENCIA', '', 'PRINCIPAL', 'CRO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', 'OTHER', 'AFORE', '', '', '', '', '', '', 'OTHER', 'AMAFORE', 1, NULL, NULL),
(412, 'PARTICIPANTE', 'saucedo.irving@principal.com', 'IRVING', 'SAUCEDO', '', 'PRINCIPAL', 'SUBGERENTE', 'MEXICO', 'MEXICO', 'OTHER', 'GESTION DE PRODUCTO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(413, 'PARTICIPANTE', 'develasco.santiago@principal.com', 'SANTIAGO', 'DE', 'VELASCO', 'PRINCIPAL FONDOS DE INVERSION, S.A. DE C.V.', 'INSTITUTIONAL PRODUCT DEVELOPER', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(414, 'PARTICIPANTE', 'escalante.agustin@principal.com', 'AGUSTIN', 'ESCALANTE', '', 'PRINCIPAL FONDOS DE INVERSION, S.A. DE C.V.', 'SUB DIRECTOR DE PRODUCTO', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'MAIL DE AMIB', 1, NULL, NULL),
(415, 'PARTICIPANTE', 'rodriguez.alejandro.x@principal.com', 'ALEJANDRO', 'RODRIGUEZ', 'ESPINDOLA', 'PRINCIPAL FONDOS DE INVERSION, S.A. DE C.V.', 'GERENTE DE PRODUCTO', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(416, 'PARTICIPANTE', 'phd2000@prodigy.net.mx', 'LAURA ANGELICA', 'VILLALOBOS', '', 'PRIVATE', 'CEO', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', 'CENTRAL BANK', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(417, 'PARTICIPANTE', 'martin@mmaglobalinvestment.com', 'MARTIN', 'MARMOLEJO', '', 'PRIVATE ORDER', 'SOCIO FUNDADOR', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(418, 'PARTICIPANTE', 'ledibalo@privest.com.mx', 'LEONARDO', 'DIAZ', 'BARREIRO', 'PRIVEST', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(419, 'PARTICIPANTE', 'fguerrero@privest.com.mx', 'FERNANDO', 'GUERRERO', 'ARAMBURU', 'PRIVEST', 'SOCIO DIRECTOR DE OPERACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(420, 'PARTICIPANTE', 'adelrio@privest.com.mx', 'ALFONSO', 'DEL RIO', '', 'PRIVEST SA DE CV', 'E', 'CD', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(421, 'PARTICIPANTE', 'me.sanjuan62@gmail.com', 'MACARIO ELIGIO', 'SAN JUAN', 'REYES', 'PRIVEST SA DE CV', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(422, 'PARTICIPANTE', 'pgarcia@promecap.com.mx', 'PATRICIO', 'GARCIA', 'PIMENTEL DE PALACIO', 'PROMECAP', 'INVESTMENT ANALYST', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(423, 'PARTICIPANTE', 'mario.guzman@protexa.mx', 'JORGE MARIO', 'GUZMAN', 'GUZMAN', 'PROTEXA', 'CIO', 'SAN PEDRO GARZA GARCIA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'NOTA EN PRENSA', 1, NULL, NULL),
(424, 'PARTICIPANTE', 'tramites@proyectovidayasociados.com', 'NICOLE ALEJANDRA', 'JAIME', 'GONZALEZ', 'PROYECTO DE VIDA  ACTUARIO Y ASOCIADOS', 'ASESORE', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(425, 'PARTICIPANTE', 'pchavez@prosolfi.com', 'PATRICIA', 'CHAVEZ', 'RUIZ', 'PROYECTOS Y SOLUCIONES FINANCIERAS', 'CEO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'UN AMIGO', 1, NULL, NULL),
(426, 'PARTICIPANTE', 'jose.leon@puntocasadebolsa.mx', 'JOSE LUIS', 'LEON', 'VALLE', 'PUNTO CASA DE BOLSA', 'DIRECTOR EJECUTIVO', 'MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(427, 'PARTICIPANTE', 'cristian.jaramillo@pwc.com', 'CRISTIAN', 'JARAMILLO', '', 'PWC', 'SUSTAINABILITY & RISK (ESG) DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'CONSULTING FIRM', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(428, 'PARTICIPANTE', 'angonzalez@qualitas.com.mx', 'ANDREA', 'GONZALEZ', '', 'QUALITAS', 'INVESTOR RELATIONS MANAGER', 'CDMX', 'MEXICO', 'INSURANCE', 'INDICES', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'AUTO', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(429, 'PARTICIPANTE', 'tcosio@qualitas.com.mx', 'TERESA', 'COSIO', '', 'QUALITAS', 'SOCIAL RESPONSIBILITY MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(430, 'PARTICIPANTE', 'jarvizu@qualitas.com.mx', 'JOSE ALEJANDRO', 'ARVIZU', 'FERNANDEZ', 'QUALITAS COMPAÑIA DE SEGUROS,  S.A. DE C.V.', 'SUBDIRECTOR DE INVERSIONES', 'MEXICO CITY', 'MEXICO', 'INSURANCE', '', '', '', 'OTHER', 'ASEGURADORA', '', '', 'OTHER', 'AUTOS', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(431, 'PARTICIPANTE', 'gramirez@qtc.mx', 'GABRIEL', 'RAMIREZ', '', 'QUANT CAPITAL', 'MANAGING PARTNER', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(432, 'PARTICIPANTE', 'operezv@quantashares.com', 'OSCAR', 'PEREZ-VERDIA', '', 'QUANTA SHARES', 'OPERADOR JR', 'CDMX', 'MEXICO', 'OTHER', 'EMISORA DE ETF', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(433, 'PARTICIPANTE', 'mralph@quantashares.com', 'MICHELLE', 'RALPH', 'MARTINEZ', 'QUANTA SHARES', 'SUBDIRECTORA DE OPERACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'EMISORA ETFS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(434, 'PARTICIPANTE', 'edna.real@abbott.com', 'SAUL', 'MORALES', 'PACHECO', 'RAND KIT', 'DIRECTOR CORPORATIVO EMPRESARIAL', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(435, 'PARTICIPANTE', 'humberto.calzada@rankia.mx', 'HUMBERTO', 'CALZADA', 'DIAZ', 'RANKIA', 'CHIEF ECONOMIST', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(436, 'PARTICIPANTE', 'mgachuz@bwc.com.mx', 'MICHAEL', 'GACHUZ', '', 'ROGA CAPITAL', 'SUBDIRECTOR DE MESA OPERATIVA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(437, 'PARTICIPANTE', 'jrodriguez@bwc.com.mx', 'JACOBO', 'RODRIGUEZ', '', 'ROGA CAPITAL', 'DIRECTOR DE ANALISIS', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(438, 'PARTICIPANTE', 'estefany.lira@spglobal.com', 'ESTEFANY', 'LIRA', '', 'S&P GLOBAL', 'SALES SPECIALIST', 'PUEBLA', 'MEXICO', 'OTHER', 'VENTAS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(439, 'PARTICIPANTE', 'jonathan.salazar@sagosupply.com', 'JONATHAN', 'SALAZAR', 'GARCIA', 'SAGO SUPPLY', 'ANALISIS FINANCIERO', 'CDMX', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(440, 'PARTICIPANTE', 'schagoya@s-s.mx', 'SERGIO', 'CHAGOYA', 'D.', 'SANTAMARINA & STETA', 'SOCIO', 'MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(441, 'PARTICIPANTE', 'portiz@s-s.mx', 'PABLO', 'ORTIZ', 'MONASTERIO O DOGHERTY', 'SANTAMARINA & STETA', 'ASOCIADO', 'MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA DE OTRO ABOGADO', 1, NULL, NULL),
(442, 'PARTICIPANTE', 'dostos@s-s.mx', 'DIEGO', 'OSTOS', 'GUERRESI', 'SANTAMARINA Y STETA', 'SOCIO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA DE OTRO ABOGADO', 1, NULL, NULL),
(443, 'PARTICIPANTE', 'esteban.soto@s-s.mx', 'ESTEBAN', 'SOTO', 'LOECKEN', 'SANTAMARINA Y STETA', 'ASOCIADO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA DE OTRO ABOGADO', 1, NULL, NULL),
(444, 'PARTICIPANTE', 'ezaga@s-s.mx', 'ELIAS', 'ZAGA', 'BELZER', 'SANTAMARINA Y STETA', 'ASOCIADO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERIDO POR OTRO ABOGADO', 1, NULL, NULL),
(445, 'PARTICIPANTE', 'epgorostietac@santander.com.mx', 'ELIZABETH', 'GOROSTIETA', '', 'SANTANDER', 'ASSOCIATE', 'CDMX', 'MEXICO', 'OTHER', 'ESTRUCTURACION DE DERIVADOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(446, 'PARTICIPANTE', 'sayurimagallon@hotmail.com', 'SAYURI', 'MAGALLON', '', 'SANTANDER', 'EXECUTIVE DIRECTOR', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(447, 'PARTICIPANTE', 'luis.flores@santanderam.com', 'LUIS ARTURO', 'FLORES', 'S.', 'SANTANDER ASSET MANAGEMENT', 'ECONOMISTA', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(448, 'PARTICIPANTE', 'hggarcia@scotiabank.com.mx', 'HECTOR GERARDO', 'GARCIA', 'GARDUÑO', 'SCOTIA FONDOS, S.A. DE C.V.', 'TRADER GESTION DE ACTIVOS', 'MEXICO', 'MEXICO', 'OTHER', 'TRADER GESTION DE ACTIVOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(449, 'PARTICIPANTE', 'javier.basurto@scotiabank.com', 'JAVIER', 'BASURTO', 'VERA', 'SCOTIABANK', 'DIRECTO EQUITY SALES', 'CDMX', 'MEXICO', 'OTHER', 'VTAS INSTITUCIONALES EQUITY', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(450, 'PARTICIPANTE', 'gabriel.himelfarb@scotiabank.com', 'GABRIEL', 'HIMELFARB', '', 'SCOTIABANK', 'ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(451, 'PARTICIPANTE', 'francisco.suarez@scotiabank.com', 'FRANCISCO', 'SUAREZ', 'SAVIN', 'SCOTIABANK', 'DIRECTOR EQUITY RESEARCH, GLOBAL BANKING & MA', 'BOULEVARD AVILA CAMACHO 1, PRIMER PISO LOMAS ', 'MEXICO', 'OTHER', 'SELL-SIDE ESG EQUITY ANALYST', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'ERIKA ALCANTARA, MANUEL GONZALEZ, CCFV', 1, NULL, NULL),
(452, 'PARTICIPANTE', 'fortega@scotiabank.com.mx', 'HIQUINGARI FRANCISCO', 'ORTEGA', 'ORTIZ', 'SCOTIABANK, S.A.', 'DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'BANCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(453, 'PARTICIPANTE', 'jose_estradaa@hacienda.gob.mx', 'JOSE', 'ESTRADA', 'ALAMILLA', 'SECRETARIA DE HACIENDA Y CREDITO PUBLICO', 'DIRECTOR DE ANALISIS FINANCIERO DE INTERMEDIA', 'MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(454, 'PARTICIPANTE', 'ismael_solis@hacienda.gob.mx', 'ISMAEL', 'SOLIS', '', 'SECRETARIA DE HACIENDA Y CREDITO PUBLICO', 'SUBDIRECTOR DE ANALISIS ECONOMICO Y BURSATIL', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(455, 'PARTICIPANTE', 'florida_vieyra@hacienda.gob.mx', 'FLORIDA', 'VIEYRA', '', 'SECRETARIA DE HACIENDA Y CREDITO PUBLICO', 'ANALISTA EJECUTIVO', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(456, 'PARTICIPANTE', 'aherrera@seguroll.mx', 'ALBERTO', 'HERRERA', '', 'SEGUROLL', 'INSURANCE AGENT', 'MIGUEL HIDALGO', 'MEXICO', 'BROKER/DEALER', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM', 1, NULL, NULL),
(457, 'PARTICIPANTE', 'amaldonados@sicontractor.com.mx', 'ALAN', 'MALDONADO', 'SALAS', 'SEMPRA', 'ANALISTA JR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(458, 'PARTICIPANTE', 'respindola@shf.gob.mx', 'RUBEN', 'ESPINDOLA', '', 'SHF', 'TRADER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(459, 'PARTICIPANTE', 'arturo.sanchez@scapital.mx', 'ARTURO', 'SANCHEZ', 'TORRES', 'SIGNATURE CAP', 'CIO', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(460, 'PARTICIPANTE', 'ricardo.hernandez@scapital.mx', 'RICARDO', 'HERNANDEZ', '', 'SIGNATURE CAPITAL', 'INVESTMENT ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FAMILY OFFICE', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(461, 'PARTICIPANTE', 'carlos.perez@scapital.mx', 'CARLOS', 'PEREZ', '', 'SIGNATURE CAPITAL', 'ANALISTA', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(462, 'PARTICIPANTE', 'vborrusquieta@skandia.com.mx', 'VICTOR', 'ORRUSQUIETA', '', 'SKANDIA', 'ESPECIALISTA EN RIESGOS', 'MEXICO', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(463, 'PARTICIPANTE', 'msilvaa@skandia.com.mx', 'MIGUEL', 'SILVA', '', 'SKANDIA', 'GERENTE DE RIESGOS FINANCIEROS', 'CDMX', 'MEXICO', 'OTHER', 'RIESGOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(464, 'PARTICIPANTE', 'jdalvarez@shf.gob.mx', 'JOSE DAVID', 'ALVAREZ', 'MALDONADO', 'SOCIEDAD HIPOTECARIA FEDERAL', 'DGA PLANEACION', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONSEJO MEXICANO DE FINANZAS SOSTENIBLES', 1, NULL, NULL),
(465, 'PARTICIPANTE', 'direccion.ti@solucionesti.org.mx', 'JUAN', 'ANGELES', 'MORENO', 'SOLUCIONES TI', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(466, 'PARTICIPANTE', 'direccion.ramirez@solucionesti.org.mx', 'JOSE LUIS', 'RAMIREZ', 'ORTIZ', 'SOLUCIONES TI', 'DIRECTOR COMERCIAL', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(467, 'PARTICIPANTE', 'alonso.aldama@spglobal.com', 'ALONSO', 'ALDAMA', '', 'SPGMI', 'SALES REP', 'CDMX', 'MEXICO', 'OTHER', 'MARKET INTELLIGENCE', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA', 1, NULL, NULL),
(468, 'PARTICIPANTE', 'Christian.Prugue@StoneX.com', 'CHRISTIAN', 'PRUGUE', '', 'STONEX', 'MANAGING DIRECTOR CO-HEAD LATAM SECURITIES', 'MIAMI', 'UNITED STATES', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'WISDOM TREE', 1, NULL, NULL),
(469, 'PARTICIPANTE', 'pati.torre@sumamx.com', 'PATRICIA', 'TORRE', '', 'SUMA', 'SOCIA FUNDADORA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'UNO DE MIS ASESORES ME HABLO DEL EVENTO', 1, NULL, NULL),
(470, 'PARTICIPANTE', 'a01131186@tec.mx', 'NICOLAS', 'CISNEROS', '', 'SUMMACAP', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'CORREO DE S&P', '', '', '', '', '', '', 'SPDJI EMAIL', 'MI JEFE ME INVITO', 1, NULL, NULL),
(471, 'PARTICIPANTE', 'em.velasco@tec.mx', 'RENE', 'ESPINOSA', '', 'SUMMACAP', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FAMILY OFFICE', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(472, 'PARTICIPANTE', 'A01783194@tec.mx', 'ROGELIO', 'HERNANDEZ', '', 'SUMMACAP', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'CORREO DE S&P', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(473, 'PARTICIPANTE', 'A01659785@tec.mx', 'CHRISTIAN RAFAEL', 'LAGUNES', 'MANZANO', 'SUMMACAP', 'ANALYST', 'NYC', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(474, 'PARTICIPANTE', 'edson.murguia@summacap.mx', 'EDSON', 'MURGUIA', '', 'SUMMACAP', 'MANAGING PARTNER', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'CORREO DE S&P', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(475, 'PARTICIPANTE', 'yadira.cenovio@suramexico.com', 'MARIBEL', 'CENOVIO', '', 'SURA', 'RISK MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'RISK MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(476, 'PARTICIPANTE', 'ariel.mireles@sura-im.com', 'ARIEL', 'MIRELES', '', 'SURA IM', 'HEAD FIXED INCOME MEXICO', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'MUTAL FUND', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(477, 'PARTICIPANTE', 'juan.guzman@sura-im.com', 'JUAN PABLO', 'GUZMAN', '', 'SURA INVESTMENT MANAGEMENT', 'TRADER', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'LARRAIN VIAL', 1, NULL, NULL),
(478, 'PARTICIPANTE', 'joseline.galindo@sura-im.com', 'JOSELINE', 'GALINDO', '', 'SURA INVESTMENT MANAGEMENT MEXICO', 'ASOCIADO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(479, 'PARTICIPANTE', 'alejandro.barbaa@suramexico.com', 'ALEJANDRO', 'BARBA', 'FLORES', 'SURA INVESTMENTS', 'TRADER', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(480, 'PARTICIPANTE', 'thalia.gonzalez@sura-im.com', 'THALIA', 'GONZALEZ', '', 'SURA INVESTMENTS', 'ASSOCIATE DISTRIBUTION', 'MEXICO', 'MEXICO', 'OTHER', 'ASSOCIATE DISTRIBUTION', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(481, 'PARTICIPANTE', 'rocio.hegewisch@suramexico.com', 'ROCIO DEL AMANECER', 'HEGEWISCH', 'PARTIDA', 'SURA INVESTMENTS', 'SENIOR ANALYST', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COMPAÑERO DE TRABAJO', 1, NULL, NULL),
(482, 'PARTICIPANTE', 'karla.ramirez@sura-im.com', 'KARLA', 'RAMIREZ', '', 'SURA INVESTMENTS', 'COORDINADORA VALUACION', 'MEXICO CITY', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(483, 'PARTICIPANTE', 'marcosdaniel.salas@suramexico.com', 'MARCOS', 'SALAS', '', 'SURA MEXICO', 'PORTFOLIO MANAGER', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(484, 'PARTICIPANTE', 'saulo.reachi@suramexico.com', 'SAULO', 'REACHI', 'LAREDO', 'SURA MEXICO', 'LOCAL EQUITIES ANALYST', 'COYOACAN', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(485, 'PARTICIPANTE', 'jessica.leyva@symrise.com', 'JESSICA I', 'LEYVA', 'ONTIVEROS', 'SYMRISE', 'BUSINESS CONTROLLER', 'ESTADO DE MEXICO', 'MEXICO', 'OTHER', 'QUIMICA', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(486, 'PARTICIPANTE', 'bringastiago@hotmail.com', 'SANTIAGO', 'BRINGAS', '', 'TADA', 'MANAGER', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(487, 'PARTICIPANTE', 'A01661975@tec.mx', 'ERICK URIEL', 'GONZALEZ', '', 'TEC DE MONTERREY', 'ANALYST', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(488, 'PARTICIPANTE', 'A01734600@tec.mx', 'KAREN ANALI', 'GONZALEZ', '', 'TEC DE MONTERREY', 'ANALYT', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(489, 'PARTICIPANTE', 'A01745117@tec.mx', 'EMMANUEL RENE', 'RODRIGUEZ', '', 'TEC DE MONTERREY', 'ANALYST', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(490, 'PARTICIPANTE', 'A01735233@tec.mx', 'IRIS', 'RUIZ', '', 'TEC DE MONTERREY', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(491, 'PARTICIPANTE', 'sebastiangarcia@tec.mx', 'DAVID SEBASTIAN', 'GARCIA', 'RUIZ VELAZCO', 'TECNOLOGICO DE MONTERREY', 'PROFESOR', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA', 1, NULL, NULL),
(492, 'PARTICIPANTE', 'alejandro_archundia@tec.mx', 'ALEJANDRO', 'ARCHUNDIA', '', 'TECNOLOGICO DE MONTERREY', 'PROFESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(493, 'PARTICIPANTE', 'humberto.valencia@tec.mx', 'HUMBERTO', 'VALENCIA', 'H', 'TECNOLOGICO DE MONTERREY', 'INVESTIGADOR', 'CDMX', 'MEXICO', 'OTHER', 'INVESTIGADOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(494, 'PARTICIPANTE', 'A01781934@tec.mx', 'DANIELA', 'GONZALEZ', 'ALONSO', 'TECNOLOGIOC DE MONTERREY', 'ESTUDIANTE', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(495, 'PARTICIPANTE', 'santiago.mejia@tekus.co', 'SANTIAGO', 'MEJIA', 'VILLEGAS', 'TEKUS', 'CFO', 'CDMX', 'COLOMBIA', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(496, 'PARTICIPANTE', 'smiralles@tempestcapital.com', 'SEBASTIAN', 'MIRALLES', '', 'TEMPEST CAPITAL', 'MANAGING PARTNER', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'PRIVATE EQUITY', '', '', '', '', '', '', 'OTHER', 'CFA SOCIETY OF MEXICO', 1, NULL, NULL),
(497, 'PARTICIPANTE', 'alex@thinkinmodular.com', 'ALEJANDRO', 'FERNANDEZ', 'GONZALEZ', 'THINKINMODULAR - THINKBRIGHT.MX', 'DIRECTOR GENERAL', 'HERMOSILLO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(498, 'PARTICIPANTE', 'mcortina@tigrisinvestments.com', 'MANUEL G', 'CORTINA', 'MANGINO', 'TIGRIS INVESTMENTS', 'SOCIO', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(499, 'PARTICIPANTE', 'antonio_ortiz@tokiomarine.com.mx', 'JUAN ANTONIO', 'ORTIZ', 'PEREZ', 'TOKIO MARINE', 'DEPUTY CFO AND CHIEF ACTUARY', 'CIUDAD DE MEXICO', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(500, 'PARTICIPANTE', 'edgar_vertiz@tokiomarine.com.mx', 'EDGAR I', 'VERTIZ', 'LIMA', 'TOKIO MARINE HCC MEXICO COMPAÑIA AFIANZADORA,', 'SURETY ACCOUNTANT', 'CIUDAD DE MEXICO', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'OTHER', 'MERCADO AFIANZADOR', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(501, 'PARTICIPANTE', 'hercilio_barragan@tokiomarine.com.mx', 'HERCILIO', 'BARRAGAN', '', 'TOKIO MARINE MEXICO', 'ANZURES', 'MEXICO CITY', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(502, 'PARTICIPANTE', 'soporte@tuclienteideal.com', 'DANIEL', 'HERNANDEZ', '', 'TU CLIENTE IDEAL', 'PROPIETARIO', 'PUEBLA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'TWITTER', '', 1, NULL, NULL),
(503, 'PARTICIPANTE', 'CENTRAL@TZIPORA.PAGE', 'NAYELI', 'FAJARDO', '', 'TZIPORA', 'SENIOR DIRECTOR', 'CUAUTITLAN IZCALLI', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(504, 'PARTICIPANTE', 'carlos_ef@upotzolotepec.edu.mx', 'CARLOS', 'ESPARZA', '', 'UAEM', 'SR.', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(505, 'PARTICIPANTE', 'aranza.rubio@ubs.com', 'ARANZA', 'RUBIO', 'RUIZ', 'UBS', 'CLIENT ACCOUNT MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(506, 'PARTICIPANTE', 'hac106@hormail.com', 'HUMBERTO', 'ACEVEDO', '', 'UNAM', 'ACADEMICO', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', '', 1, NULL, NULL),
(507, 'PARTICIPANTE', 'oscar.cortesp@sct.gob.mx', 'OSCAR', 'CORTES', '', 'UNAM', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(508, 'PARTICIPANTE', 'milkshake@comunidad.unam.mx', 'INGRID IRAZU', 'ESPINOSA', 'GAONA', 'UNAM', 'ESTUDIANTE', 'CIUDAD DE M?XICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(509, 'PARTICIPANTE', '305746148@comunidad.unam.mx', 'JOSE ROBERTO', 'TORRES', 'BELLO', 'UNAM', 'STUDENT', 'MEXICO CITY', 'MEXICO', 'ACADEMIC/INSTITUTE', 'PROFESSOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(510, 'PARTICIPANTE', 'amorales@fca.unam.mx', 'ARTURO', 'MORALES', 'CASTRO', 'UNIVERSIDAD NACIONAL AUTONOMA DE MEXICO', 'PROFESOR-INVESTIGADOR', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(511, 'PARTICIPANTE', '0225219@up.edu.mx', 'LUIS FERNANDO', 'REYNOSO', 'LABASTIDA', 'UP', 'ESTUDIANTE', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(512, 'PARTICIPANTE', 'jdurano@grupobmv.com.mx', 'JONATHAN RICARDO', 'DURAN', 'OLVERA', 'VALMER', 'GERENTE DE DESARROLLO DE NEGOCIOS', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(513, 'PARTICIPANTE', 'anarvaezf@grupobmv.com.mx', 'ANDREA', 'NARVAEZ', '', 'VALMER', 'ANALISTA COMERCIAL Y DESARROLLO DE NEGOCIO', 'MEXICO CITY', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO DE BOLSA DE VALORES', 1, NULL, NULL),
(514, 'PARTICIPANTE', 'aolmos@grupobmv.com.mx', 'ANA', 'OLMOS', '', 'VALMER, MEXICAN STOCK EXCHANGE', 'SUBDIRECTORA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(515, 'PARTICIPANTE', 'ssanchez@valmex.mx', 'SANDRA', 'SANCHEZ', '', 'VALORES MEXICANOS CASA DE BOLSA', 'INVESTMENT ANALYST', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(516, 'PARTICIPANTE', 'jlarrieta@grupovalue.mx', 'JOSE LUIS', 'ARRIETA', '', 'VALUE ASESORES', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGIONAL BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(517, 'PARTICIPANTE', 'andrea_castaneda@vanguard.com', 'ANDREA FERNANDA', 'CASTAÑEDA', 'ANGUIANO', 'VANGUARD', 'SALES ASSISTANT', 'CDMX', 'MEXICO', 'OTHER', 'SALES ASSISTANT', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MI EMPRESA', 1, NULL, NULL),
(518, 'PARTICIPANTE', 'pablo_garciamoreno@vanguard.com', 'PABLO', 'GARCIA', 'MORENO VILLARREAL', 'VANGUARD', 'VENTAS', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(519, 'PARTICIPANTE', 'julio_gonzalez@vanguard.com', 'JULIO', 'GONZALEZ', 'MACHORRO', 'VANGUARD', 'BUSINESS DEVELOPMENT', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'COLEGA', 1, NULL, NULL),
(520, 'PARTICIPANTE', 'pablo_morales@vanguard.com', 'PABLO', 'MORALES', 'GRAF', 'VANGUARD', 'SALES ANALYST', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(521, 'PARTICIPANTE', 'alvaro_poo@vanguard.com', 'ALVARO', 'POO', '', 'VANGUARD', 'BUSINESS DEVELOPMENT CONSULTANT', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(522, 'PARTICIPANTE', 'guillermo_vilchis@vanguard.com', 'GUILLERMO', 'VILCHIS', '', 'VANGUARD', 'VENTAS INSTITUCIONALES', 'CD MX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(523, 'PARTICIPANTE', 'FLEAL@VECTOR.COM.MX', 'FERNANDO', 'LEAL', '', 'VECTOR CASA DE BOLSA', 'ANALISTA BANCA DE INVERSION', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(524, 'PARTICIPANTE', 'sergio.arriola@verum.mx', 'SERGIO', 'ARRIOLA', '', 'VERUM CALIFICADORA DE VALORES', 'DIRECTOR DE DESARROLLO DE VALORES', 'BENITO JUAREZ', 'MEXICO', 'OTHER', 'CALIFICADORA DE VALORES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(525, 'PARTICIPANTE', 'cclave@akaancasadebolsa.com.mx', 'CATALINA', 'CLAVE', 'ALMEIDA', 'VIFARU, S.A. DE C.V., CASA DE BOLSA', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'CASA DE BOLSA', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(526, 'PARTICIPANTE', 'jose.estrada@oigbase.com', 'JOSE EDUARDO', 'ESTRADA', 'LOPEZ', 'VISION Y ENFOQUE', 'ANALISTA', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(527, 'PARTICIPANTE', 'nosaabe@gmail.com', 'ABELARDO', 'NOGUEZ', '', 'VMG PROYECTOS', 'CP', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(528, 'PARTICIPANTE', 'gustavo.espinosa@wtwco.com', 'GUSTAVO', 'ESPINOSA', '', 'WTW', 'CONSULTOR', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(529, 'PARTICIPANTE', 'delamadridbussines@proton.com', 'SALMA', 'ESCALANTE', 'HERNANDEZ', 'XTB', 'JR CHAIRMAN ANALITYC INVESTOR', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', '', 1, NULL, NULL),
(530, 'PARTICIPANTE', 'alaguilar@zumacapital.com.mx', 'ANA LORENA', 'AGUILAR', 'MARRON', 'ZUMA CAPITAL', 'DIRECTOR GENERAL', 'ALVARO OBREGON', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'AMAI', 1, NULL, NULL),
(531, 'PARTICIPANTE', 'lgcardenas@zumacapital.com.mx', 'LUIS', 'CARDENAS', 'ZURITA', 'ZUMA CAPITAL', 'PORTFOLIO MANAGER', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'AMAI', 1, NULL, NULL),
(532, 'PARTICIPANTE', 'ericka.alcantara@spglobal.com', 'ERICKA ALICIA', 'ALCANTARA', '', 'S&P DOW JONES INDICES', 'SENIOR DIRECTOR, MARKETING, LATIN AMERICA', 'CDMX', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, '2023-09-28 11:28:41', '2023-09-28 11:28:41'),
(533, 'PARTICIPANTE', 'juan.alvarez@spglobal.com', 'JUAN CAMILO', 'ALVAREZ', '', 'S&P DOW JONES INDICES', 'DIRECTOR', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(534, 'PARTICIPANTE', 'cristopher.anguiano@spglobal.com', 'CRISTOPHER', 'ANGUIANO', 'DIAZ', 'S&P DOW JONES INDICES', 'SENIOR ANALYST', 'MEXICO CITY', 'MEXICO', 'OTHER', 'PRODUCT MANAGER INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(535, 'PARTICIPANTE', 'daniel.barbosa@spglobal.com', 'DANIEL', 'BARBOSA', '', 'S&P DOW JONES INDICES', 'SR WEB SPECIALIST', 'CDMX', 'MEXICO', 'OTHER', 'S&P DOW JONES INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(536, 'PARTICIPANTE', 'oscar.carreon@spglobal.com', 'OSCAR', 'CARREON', '', 'S&P DOW JONES INDICES', 'INDEX MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INVESTMENT STRATEGY', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(537, 'PARTICIPANTE', 'luis.chapa@spglobal.com', 'LUIS', 'CHAPA', '', 'S&P DOW JONES INDICES', 'SENIOR INDEX MANAGER', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', 'OTHER', 'INDEX PROVIDER', 'OTHER', 'INDEX PROVIDER', 'OTHER', 'NONE', 'SPDJI EMAIL', '', 1, NULL, NULL),
(538, 'PARTICIPANTE', 'diego.colmenares@spglobal.com', 'DIEGO', 'COLMENARES', '', 'S&P DOW JONES INDICES', 'ASSOCIATE DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'INDEX MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(539, 'PARTICIPANTE', 'margaret.dorn@spglobal.com', 'MARGARET', 'DORN', '', 'S&P DOW JONES INDICES', 'SENIOR DIRECTOR - HEAD OF ESG INDICES, NORTH ', 'CHICAGO', 'UNITED STATES', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(540, 'PARTICIPANTE', 'deborah.draeger@spglobal.com', 'DEBORAH', 'DRAEGER', '', 'S&P DOW JONES INDICES', 'SENIOR DIRECTOR', 'CHICAGO', 'UNITED STATES', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(541, 'PARTICIPANTE', 'eduardo.gonzalez@spglobal.com', 'EDUARDO', 'GONZALEZ', '', 'S&P DOW JONES INDICES', 'RM', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'VENTAS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(542, 'PARTICIPANTE', 'diana.gutierrez@spglobal.com', 'DIANA', 'GUTIERREZ', '', 'S&P DOW JONES INDICES', 'COMMERCIAL ASSOCIATE', 'MEXICO', 'MEXICO', 'OTHER', 'PROVEEDOR INDICES', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(543, 'PARTICIPANTE', 'hector.huitzil@spglobal.com', 'HECTOR', 'HUITZIL', '', 'S&P DOW JONES INDICES', 'SENIOR ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(544, 'PARTICIPANTE', 'lucero.loera@spglobal.com', 'LUCERO', 'LOERA', '', 'S&P DOW JONES INDICES', 'DIRECTOR ASOCIADO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(545, 'PARTICIPANTE', 'stefanie.macchia@spglobal.com', 'STEFANIE', 'MACCHIA', '', 'S&P DOW JONES INDICES', 'S&P DOW JONES INDICES', 'NEW YORK', 'UNITED STATES', 'OTHER', 'INDEX PROVIDER', 'OTHER', '', '', '', 'OTHER', 'MARKETING', 'OTHER', 'INDEX PROVIDER', 'OTHER', 'MARKETING', 'SPDJI EMAIL', '', 1, NULL, NULL),
(546, 'PARTICIPANTE', 'octavio.milan@spglobal.com', 'OCTAVIO', 'MILAN', '', 'S&P DOW JONES INDICES', 'S&P', 'MEXICO', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(547, 'PARTICIPANTE', 'berenice.nares@spglobal.com', 'BERENICE', 'NARES', 'ZAVALA', 'S&P DOW JONES INDICES', 'SALES ASSOCIATE', 'CDMX', 'MEXICO', 'OTHER', 'INDEXING PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(548, 'PARTICIPANTE', 'eduardo.olazabal@spglobal.com', 'EDUARDO', 'OLAZABAL', '', 'S&P DOW JONES INDICES', 'ASSOCIATE DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(549, 'PARTICIPANTE', 'fernanda.paniagua@spglobal.com', 'FERNANDA', 'PANIAGUA', '', 'S&P DOW JONES INDICES', 'CLIENT EXPERIENCE', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', 'CLIENT EXPERIENCE', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(550, 'PARTICIPANTE', 'a.ramirez@spglobal.com', 'ANA CAROLINA', 'RAMIREZ', '', 'S&P DOW JONES INDICES', 'CLIENT SERVICES', 'CDMX', 'MEXICO', 'OTHER', 'S&P - FINANCIAL SERVICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(551, 'PARTICIPANTE', 'salomon.ramirez@spglobal.com', 'SALOMON', 'RAMIREZ', 'CONTLA', 'S&P DOW JONES INDICES', 'ANALYST', 'MEXICO', 'MEXICO', 'OTHER', 'BUSINESS ANALYST', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', '', 1, NULL, NULL),
(552, 'PARTICIPANTE', 'stephania.r@spglobal.com', 'STEPHANIA', 'RAMIREZ', 'DE ARELLANO', 'S&P DOW JONES INDICES', 'INDEX MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDEX MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(553, 'PARTICIPANTE', 'maria.ramos1@spglobal.com', 'MARIA', 'RAMOS', '', 'S&P DOW JONES INDICES', 'PRODUCT ANALYST - DECOMMISSION', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(554, 'PARTICIPANTE', 'jessica.rayon@spglobal.com', 'JESSICA LILIANA', 'RAYON', 'SOTO', 'S&P DOW JONES INDICES', 'INDEX MANAGER', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MIS COMPAÑEROS', 1, NULL, NULL),
(555, 'PARTICIPANTE', 'alejandra.rosas@spglobal.com', 'ALEJANDRA', 'ROSAS', 'SANCHEZ', 'S&P DOW JONES INDICES', 'MANAGER', 'CDMX', 'MEXICO', 'OTHER', 'S&P DOW JONES INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(556, 'PARTICIPANTE', 'maria.sanchez@spglobal.com', 'MARIA', 'SANCHEZ', '', 'S&P DOW JONES INDICES', 'DIRECTOR, SUSTAINABILITY INDICES PRODUCT MANA', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(557, 'PARTICIPANTE', 'louise.slinger@spglobal.com', 'LOUISE', 'SLINGER', '', 'S&P DOW JONES INDICES', 'GLOBAL HEAD OF MARKETING', 'NEW YORK', 'UNITED STATES', 'OTHER', 'INDEX PROVIDER', '', '', '', '', 'OTHER', 'MARKETING', 'OTHER', 'EMPLOYEE', 'OTHER', 'MARKETING', 'SPDJI EMAIL', '', 1, NULL, NULL),
(558, 'PARTICIPANTE', 'sergio.sosa@spglobal.com', 'SERGIO', 'SOSA', '', 'S&P DOW JONES INDICES', 'SR DATA ASSOCIATE, DATA STEWARDSHIP & ANALYSI', 'MEXICO', 'MEXICO', 'OTHER', 'INDEX MANAGEMENT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(559, 'PARTICIPANTE', 'carlos.torres@spglobal.com', 'CARLOS', 'TORRES', 'SALINAS', 'S&P DOW JONES INDICES', 'SENIOR QUANT ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', 'INDEX MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(560, 'PARTICIPANTE', 'juan.uvence@spglobal.com', 'JUAN DAVID', 'UVENCE', 'CHIMAL', 'S&P DOW JONES INDICES', 'SENIOR INDEX MANAGER - FACTOR INDICES', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(561, 'PARTICIPANTE', 'marco.valdes@spglobal.com', 'MARCO', 'VALDES', '', 'S&P DOW JONES INDICES', 'INDEX SR. MANAGER - COMMODITIES', 'CIUDAD DE M??XICO', 'MEXICO', 'OTHER', 'INDEX SR MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '', 1, NULL, NULL),
(562, 'CONFERENCISTAS', 'jmerinor@actinver.com.mx', 'JAIME', 'MERINO', '', 'ACTINVER', 'SUBDIRECTOR ASSET MANAGEMENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(563, 'CONFERENCISTAS', 'mdenam@inbursa.com', 'MICHEL', 'DENA', 'MARTINEZ', 'AFORE INBURSA', 'PORTAFOLIO MANAGER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(564, 'CONFERENCISTAS', 'alejandro.garza@aztlanequities.com', 'ALEJANDRO H.', 'GARZA', '', 'AZTLAN EQUITY MANAGEMENT', 'FUNDADOR Y DIRECTOR DE INVERSIONES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(565, 'CONFERENCISTAS', 'jfamiliar@worldbank.org', 'JORGE', 'FAMILIAR', '', 'BANCO MUNDIAL', 'VICEPRESIDENTE Y TESORERO/ADMINISTRADOR DE LO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(566, 'CONFERENCISTAS', 'r.jara@bbva.com', 'RAFAEL', 'JARA', 'PADILLA', 'BBVA ASSET MANAGEMENT', 'EXECUTIVE DIRECTOR, FIXED INCOME LATAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(567, 'CONFERENCISTAS', 'luisangel.rodriguez@bbva.com', 'LUIS ANGEL', 'RODRIGUEZ', 'AMESTOY', 'BBVA ASSET MANAGEMENT', 'MANAGING DIRECTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(568, 'CONFERENCISTAS', 'christian.constandse@blackrock.com', 'CHRISTIAN', 'CONSTANDSE', '', 'BLACKROCK', 'ESPECIALISTA DE ISHARES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(569, 'CONFERENCISTAS', 'fernanda.cosio@blackrock.com', 'FERNANDA', 'COSIO', '', 'BLACKROCK MEXICO', 'VICEPRESIDENTA, WEALTH MANAGEMENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(570, 'CONFERENCISTAS', 'jose.segarra@setgo.com.mx', 'JOSE', 'SEGARRA', '', 'CFA SOCIETY MEXICO', 'PRESIDENTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(571, 'CONFERENCISTAS', 'salvador.gomez@dws.com', 'SALVADOR', 'GOMEZ', '', 'DWS INVESTMENT MANAGEMENT AMERICAS', 'MANAGING DIRECTOR HEAD OF LATIN AMERICA AND U', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(572, 'CONFERENCISTAS', 'eduardo.carrillo@finamex.com.mx', 'EDUARDO ARTURO', 'CARRILLO', 'MADERO', 'FINAMEX', 'PRESIDENTE Y DIRECTOR GENERAL DE CASA DE BOLS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(573, 'CONFERENCISTAS', 'jorge.marmolejo@franklintempleton.com', 'JORGE', 'MARMOLEJO', '', 'FRANKLIN TEMPLETON MEXICO', 'VP Y GESTOR DE PORTAFOLIO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(574, 'CONFERENCISTAS', 'aaariasg@gbm.com', 'ALICIA', 'ARIAS', '', 'GBM', 'DIRECTORA DE ADQUISICION DE ASESORES/COFUNDAD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(575, 'CONFERENCISTAS', 'ppalandrani@globalxetfs.com', 'PEDRO', 'PALANDRANI', '', 'GLOBAL X ETFS', 'DIRECTOR DE INVESTIGACION', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(576, 'CONFERENCISTAS', 'obosch@grupobmv.com.mx', 'JOSE ORIOL', 'BOSCH', 'PAR', 'GRUPO BOLSA MEXICANA DE VALORES', 'CEO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(577, 'CONFERENCISTAS', 'joseph.omalley@invesco.com', 'JOE', 'O’MALLEY', '', 'INVESCO MANAGEMENT GROUP', 'ESTRATEGA DE PRODUCTOS TEMATICOS Y ESPECIALIZ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(578, 'CONFERENCISTAS', 'tim.brennan@spglobal.com', 'TIM', 'BRENNAN', '', 'S&P DOW JONES INDICES', 'DIRECTOR DE ESTRATEGIA DE MERCADOS DE CAPITAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(579, 'CONFERENCISTAS', 'antonio.deazpiazu@spglobal.com', 'ANTONIO', 'DE AZPIAZU', 'ARMADA', 'S&P DOW JONES INDICES', 'HEAD OF EMEA & LATAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(580, 'CONFERENCISTAS', 'manuel.gonzalez2@spglobal.com', 'MANUEL A.', 'GONZALEZ', 'ZAVALA', 'S&P DOW JONES INDICES', 'DIRECTOR SENIOR, AMERICA LATINA, CONO NORTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(581, 'CONFERENCISTAS', 'srineel.jalagani@spglobal.com', 'SRINEEL', 'JALAGANI', '', 'S&P DOW JONES INDICES', 'DIRECTOR SENIOR, INDICES DE ESTRATEGIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(582, 'CONFERENCISTAS', 'joseph.nelesen@spglobal.com', 'JOSEPH', 'NELESEN', '', 'S&P DOW JONES INDICES', 'DIRECTOR SENIOR, ESTRATEGIA DE INVERSION EN I', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(583, 'CONFERENCISTAS', 'elena.zota@spglobal.com', 'CATALINA', 'ZOTA', '', 'S&P DOW JONES INDICES', 'DIRECTORA ASOCIADA DE GESTION DE PRODUCTOS DE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(584, 'CONFERENCISTAS', 'rramirezwebster@sherpacapital.com.mx', 'RICHARD', 'RAMIREZ-WEBSTER', '', 'SHERPA CAPITAL', 'FUNDADOR Y DIRECTOR DE INVERSIONES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL);
INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`, `status`, `impresion`, `checkin`) VALUES
(585, 'CONFERENCISTAS', 'juan_hernandez@vanguard.com', 'JUAN', 'HERNANDEZ', '', 'VANGUARD', 'DIRECTOR GENERAL PARA AMERICA LATINA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(586, 'CONFERENCISTAS', 'adriana_rangel@vanguard.com', 'ADRIANA', 'RANGEL', '', 'VANGUARD', 'HEAD OF INSTITUTIONAL SALES LATIN AMERICA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(587, 'CONFERENCISTAS', 'grodriguez@wisdomtree.com', 'GUILLERMO', 'RODRIGUEZ', '', 'WISDOMTREE INVESTMENTS', 'DIRECTOR DE AMERICA LATINA Y U.S. OFFSHORE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(588, 'PRENSA', 'eder.cruz@financierossincorbata.com', 'EDER', 'CRUZ', '', 'FINANCIEROS SIN CORBATA', 'EDITOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(589, 'PRENSA', '', 'JUDITH', 'SANTIAGO', '', 'EL ECONOMISTA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(590, 'PRENSA', '', 'LEONOR', 'FLORES', '', 'EL UNIVERSAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(591, 'PRENSA', '', 'ESTEPHANIE', 'SUAREZ', '', 'BLOOMBERG EN LINEA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(592, 'PRENSA', '', 'ARELY', 'SANCHEZ', '', 'REFORMA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(593, 'PRENSA', '', 'FERNANDA', 'ANTUNEZ', '', 'EL FINANCIERO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(594, 'PRENSA', '', 'ROBERTO', 'NOGUEZ', '', 'FORBES MEXICO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(595, 'PRENSA', '', 'CLARA', 'ZEPEDA', '', 'LA JORNADA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(596, 'PRENSA', '', 'VERONICA', 'REYNOLD', '', 'EL HERALDO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(597, 'PRENSA', '', 'RAFAEL', 'MEJIA', '', 'EXPANSION DE MEXICO ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(598, 'PRENSA', '', 'ERENDIRA', 'ESPINOSA', '', 'EXCELSIOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(599, 'PRENSA', '', 'MARIO', 'GAMEZ', '', 'EL CEO ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(600, 'PRENSA', '', 'FRANCISCO', 'DELGADO', '', 'INFOSEL-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(601, 'PRENSA', '', 'VICTOR ', 'PIZ', '', 'EL FINANCIERO BLOOMBERG', 'CONDUCTOR ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(602, 'PRENSA', '', 'EDGAR A.', 'TORRES', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(603, 'PRENSA', '', 'JORGE', 'SOBRIO', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(604, 'PRENSA', '', 'LUIS', 'CASTRO', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(605, 'PRENSA', '', 'DIEGO', 'OSMAR', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(609, 'PARTICIPANTE', 'kike@hotmail.com', 'ENRIQUE ALONSO', 'ACOSTA', '', 'DDS', 'Supervisor ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-28 09:14:50', '2023-09-28 09:14:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_accion`
--

CREATE TABLE `seg_accion` (
  `id` int(11) NOT NULL,
  `seg_modulo_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `url` varchar(80) DEFAULT NULL,
  `id_html` varchar(25) NOT NULL,
  `icono` varchar(40) NOT NULL DEFAULT '',
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_accion`
--

INSERT INTO `seg_accion` (`id`, `seg_modulo_id`, `nombre`, `url`, `id_html`, `icono`, `fecha_modificacion`, `estado`) VALUES
(1, 1, 'Ver Usuarios', NULL, '', '', NULL, 1),
(2, 1, 'Agregar Usuario', NULL, '', '', NULL, 1),
(3, 1, 'Modificar Usuario', NULL, '', '', NULL, 1),
(4, 1, 'Asignar Permisos', NULL, '', '', NULL, 1),
(5, 1, 'Eliminar Usuario', NULL, '', '', NULL, 1),
(6, 1, 'Alta/Baja Usuario', NULL, '', '', NULL, 1),
(7, 1, 'No bloquear inactividad', NULL, '', '', NULL, 0),
(8, 2, 'Ver Registros', NULL, '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_log`
--

CREATE TABLE `seg_log` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `seg_sesion_id` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `tabla` varchar(40) DEFAULT NULL,
  `registro` int(11) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `mostrar` tinyint(1) NOT NULL DEFAULT '0',
  `estado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_log`
--

INSERT INTO `seg_log` (`id`, `usuario_id`, `seg_sesion_id`, `descripcion`, `tabla`, `registro`, `fecha_modificacion`, `mostrar`, `estado`) VALUES
(0, 1, 1, 'Cierra sesión', 'seg_usuario', NULL, '2023-09-28 11:02:08', 0, 1),
(0, 1, 1, 'Cierra sesión', 'seg_usuario', NULL, '2023-09-28 11:15:05', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_modulo`
--

CREATE TABLE `seg_modulo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `id_html` varchar(15) DEFAULT NULL,
  `icono` varchar(40) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(1) DEFAULT '1',
  `orden` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_modulo`
--

INSERT INTO `seg_modulo` (`id`, `nombre`, `url`, `id_html`, `icono`, `fecha_modificacion`, `estado`, `orden`) VALUES
(1, 'Usuarios', '/usuarios', 'usu', 'mdi mdi-account-multiple', '2023-03-02 11:24:15', 1, 1),
(2, 'Registros', '/registros', NULL, 'mdi mdi-list', '2023-03-02 11:24:15', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_permiso`
--

CREATE TABLE `seg_permiso` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `seg_accion_id` int(11) NOT NULL,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_permiso`
--

INSERT INTO `seg_permiso` (`id`, `usuario_id`, `seg_accion_id`, `fecha_modificacion`, `estado`) VALUES
(1, 1, 1, NULL, 1),
(2, 1, 7, NULL, 1),
(3, 2, 1, NULL, 1),
(4, 2, 2, NULL, 1),
(5, 2, 3, NULL, 1),
(6, 2, 4, NULL, 1),
(7, 2, 5, NULL, 1),
(8, 2, 6, NULL, 1),
(9, 2, 7, NULL, 1),
(10, 3, 1, '2023-03-07 11:18:33', 1),
(11, 3, 2, '2023-03-07 11:18:33', 1),
(12, 3, 3, '2023-03-07 11:18:33', 1),
(13, 3, 4, '2023-03-07 11:18:33', 1),
(14, 3, 5, '2023-03-07 11:18:33', 1),
(15, 3, 6, '2023-03-07 11:18:33', 1),
(16, 4, 1, '2023-03-07 11:25:06', 1),
(17, 3, 1, '2023-09-27 18:19:12', 1),
(18, 3, 2, '2023-09-27 18:19:48', 1),
(19, 3, 3, '2023-09-27 18:19:48', 1),
(20, 3, 4, '2023-09-27 18:19:48', 1),
(21, 3, 5, '2023-09-27 18:19:48', 1),
(22, 3, 6, '2023-09-27 18:19:48', 1),
(23, 3, 7, '2023-09-27 18:19:48', 1),
(24, 5, 1, '2023-09-27 19:12:06', 1),
(25, 5, 2, '2023-09-27 19:12:06', 1),
(26, 5, 3, '2023-09-27 19:12:06', 1),
(27, 5, 4, '2023-09-27 19:12:06', 1),
(28, 5, 5, '2023-09-27 19:12:06', 1),
(29, 5, 6, '2023-09-27 19:12:06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_sesion`
--

CREATE TABLE `seg_sesion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `iniciada` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finalizada` datetime DEFAULT NULL,
  `token` mediumtext,
  `fecha_modificacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_sesion`
--

INSERT INTO `seg_sesion` (`id`, `usuario_id`, `ip_address`, `user_agent`, `iniciada`, `finalizada`, `token`, `fecha_modificacion`, `estado`) VALUES
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 17:46:15', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.5_v9boKn3F_fbcRr_fExyNRgYef1ojQRn2IQttzumPZP--qSLqS5F236YxALCMJ5QAozvuyw5ZZv_3o0k-rPSOWWIHUnx6_I.Xe7aK-CuJKLr__24yAg1hw.-a7M7me1v2XQNjKJt-5ILytOPBhTocOJEhTm-cpFULM9mYbCO4w6Ru2CicwN9wZ7YRofNDLfElmg1QzJ9iUQ_IkLvdCawuAFRvBTJu06eHPs8fE8HS2eKt7gJz-2nWzv.IBZzaDoud7a4LuH4y2m4dAHVvZSj-yp5HlJzqH8pSX0', '2023-09-27 17:46:15', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 17:47:09', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.E9luIQW3pKCP5-cENA89UStfQkV4RwxUPwkFgmk86mjRkme-9Ggpx_imVu8RTI51_gtFSKgc2z949ZDu0J5nSfEflA6nixrU.4uYQfJ-m9Prl2LjKPc6JQw.KF96_lCx1REYLAfErB-TJp0OWYCJTHnlHGL-wQdbpDhqGxXAagjWO7cObMLxsu4Jumb90ju3MOU8AUWe03GZgP8CKct_Z7xTIufVgPYPZ2I5QNLna5zlYBwL4EoGsKIG.FCRllpRG_dnP0uh8_TUZGflC9WUSgehzllGT2GjtEJg', '2023-09-27 17:47:09', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-27 18:06:07', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.7zFN7rG37r9UzIXn0FrbdPiSRuIiHtwciq8yo-AHmti3SCA_RmlwoYyjCtH6CU79gdLmVAV5TjKZ4MNL3_x792H_vYTFoTDc.EvfiWTE12Jx6RaTHVu9Vnw.DtqgaqVGWCeEz3wBcZt5_UXev36kX9UrowZ7kvaUzdRiVS0xUldtZFw7Ep_9btaVfauVaxX6Zq3mHLE0caf1P93cszC4D6xawvAJD6kuWKoM-wldtmywEaCBVQONp1CI.rJX7zX7vVoPhbkD5DH3m76OAnidSIMpJSLCqQNSooq0', '2023-09-27 18:06:07', 1),
(0, 0, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 18:16:51', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.hCZS8WnBU_9dN7jpR7iAtGKLe4mgf5P0FRJwJ5HnhN9eduDQuG1xmHs2jcr_NyZ5MpmGqXjat7BP5_xWET0nl7AzxrFvuz-H.6hw8bJhyoWuTd1BLKxWZQg.qG398C8pvl2RguNxjUzG8OxrChfbyZ-hSUGoc7uS_74rrUOU9YVfXZGVip9ihzLQDecGaRhTBmmIQWj5RGMXcF5sMVt65bm0ERo4wnznr4yiZKF7M8TZpc3U05FhfqNz.6w7x_rZdACd8jT7tBIp4DBPTAmFq21-TxZYVEZ7zr0k', '2023-09-27 18:16:51', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 18:17:50', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.SiiO5H3hpb-jvq8p_Komf8ee1GNKoVU8xyvvIZKqmvJorQSaLdw-pfRipgN12oGsM3lFsidNsONHCpHv5F2hXNv73-Hwe0cE.EHt0c8mwdGXQr3m_b4AcwQ.vobohYCzsgE7lXJ3__3wxjo5wVuk36Yn6l1S6UpHQ1RittGggRU_3Bc9QiMO0hNIIS5oOnL0DiZ2EYQi2Ub_30nqc3c2RV6Ft-ZkKbdVTH1Kw2lbzltzE9mq2okyOaVr.Hcoskm6JEHkf8yYSQ9xV7JAiZ0cfS2Qu1XI6BNcp_64', '2023-09-27 18:17:50', 1),
(0, 0, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-27 18:17:51', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.XlzMIOk9RZX1Swk5w9Wuna3WI52DFSKYwhVqij1or1AfjX6F1gYdysMwOZOsp2AXtDG9FC0c4V_QQuliHhlUcqgPGc7OPw2M.evCRXfgMYFk7Qq6dmkFpeg.l9Nw0YuNK9JTTqDxe93seOWuKLs-u2EXUXdbBMOmz2ovPUlmv7enYxh_okCZimyZYFXyK2U9w6xVR1cjbnP3c_SctEwRRTOnlBk0Z2rtrdD0SUmkMJw8XFWFYl0gg8Ji.fMpogCoS-bYt4fIp-smvGKRszY7-o74uGGyItv-zRvk', '2023-09-27 18:17:51', 1),
(0, 3, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 18:20:00', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.hwO2f_kW8MPsDDKhbimdhWjDOAqaH5w2sDcOeAq7c0dS1Arsgq-76dc3BByjEbvYkjvZnVE0U6igqVSZhH2GwZ5mGjjFY8Fc.7T4kk6dcPxjWwyfrz5fC6A.ypuiyJLfntVgCTcFDv9by04jPYMVm02DiuYjBThOcitBes31id0xwbL_QYVJfSalflk099DoMrX2GCGFyWIYq-saUYr-jIwNepSfXiJ7gtPnQr43-KA4wFji5GDcrKJr.NZzapMGtS7gmZPFh5g7uxzFqbeUSrRaPCv92emq5mTE', '2023-09-27 18:20:00', 1),
(0, 3, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-27 18:20:17', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.hPQzsuA10NJaC1vx7hlVE3PnEU_Nue9Yu3EmqCERhRh-nYvuCcKHpeEw5wFPu5RCsd7u0qZjDB1dttaujZ06N-P57a8gYMwg.rPAMSd20mu2gTWYvQU7snQ.mXxDPH5lCFjYsvLLBvlQuDRs_JtWqT-SuWG1Zx60HCi7Bqs0fQUXJINwa4zGkJyRHAmzLyCOqwf2Zks48g_OwGyhlHkQXgzhEL0fB9kflKWChnXMursOBV2cZmtt1iLG.SRtXze47MXCp5HJgpYn2ixi4o4T05ojQ-c66TAqVHcw', '2023-09-27 18:20:17', 1),
(0, 3, '187.251.245.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-27 18:21:46', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.k2aTUuU-A0u4Sp6LL4rhlZrHXlood-Cdh51f1QBPgoIeQZMyky0bXLGax1IcfZ38wqMIm9L_jqWOn42wk1cEOYdHU_vxQ52W.2XpyepscUtXsoh7Xkpq1BA.SJF-uOKCImZr13jpWlp58tUZEwyHPeg0Jj6rj71RpiD_I0xfs9GL-CWt3cxDQyys3z3QLmEr9GlxOJuavqxHMYR3eZSJvYnaIzQTzDv6NPOyuk_a4LD2rBjKBV13eLfb.I4Wqsy-sHaevzCB16mUmvZqh1MBRWq3dmkjf1aUZ4G8', '2023-09-27 18:21:46', 1),
(0, 3, '187.251.245.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-27 18:26:13', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.7qMqTE6NQ5BfzYOgZW9CGnr_N7C7Mi9DBZhsnhb0fXY7KVA0Z0EbRZ-SDpvlFTC56LtovojEEm46hbPqI6I6T0QuRsbnRJif.Jeg4Vh2d3hUAxytYWOAdBQ.vTkDHZkMSQKwjNNR2z8EA9q0ejRddWGP-9c5lhAep6jD2zjE7L6KlFTFJGKN2xECDyJaenv8fqjaidamYxaLIWKXl9Ce99Kolaan8JjA-lThqXFyhtpR6eQeRROYd70F.DeK-vk8XllVkCQLsk5-tj3b5orYivLAm6ur4aY75Y9w', '2023-09-27 18:26:13', 1),
(0, 3, '201.137.28.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 OPR/102.0.0.0', '2023-09-27 18:27:18', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.cNSHrFHUFtTJp4403vEjC2YQ6jgWQJzeVtDpCWyF1QsMBIRErpAWXc573kUVGnlTQjTWS9ZyyTxmYPkYscpuOXKcZobDnD2o.7LCaN7VGIJRU5pqOziubjw.YnCR6-9TEDmVp6VI2OXx9ix5bxnb6HeWOgJsxzJDsT54amQEvIcKfEKs_RFMk0n_7z69WhNLI6-HtH-DXY2afG9SfPskKw_2bzc8jK7GqZ-BRbNoytF8EWppHIIrjZvw.io2V4UI9if7vzNhEAuNwVSg-2S789dgMiISnrTohSAY', '2023-09-27 18:27:18', 1),
(0, 3, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-27 18:27:39', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.j6BgHxod7uPWJDQ6VNkGVlUrb0veMLzh99RkeCxIDnMVN9nuBCiKf3dtTroYNwyn6q-e9gWKQD08N0kp3f7K0sPZ7q-SxT6T.GrDdAp_KmOEDBfFcjkxEug.W8s7RNe4ksDyH0RD4vRkjkihCBfCse0dec9a0q8wkxDP4OJLjbmBMTFmtqIg1CN-blbsebM9UFUon-iC7N7Acs4quAsfwMaMxhhVLAjBQ3kULM_7DnjgvyHzbzqGrZVG.N1gAH6JIGKTAIs4ifnWhoUsilA3iEyyh7GL8naEypTY', '2023-09-27 18:27:39', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 18:28:42', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.uxV6GEkSDlwhxf9l4BPO4P7v9vjTIeQYKKnc97g1Gl1-61p9mfW1a4R53IohxJ48mzBXGGeEik1I0oh0UTGbfF-k9oJcgd-q.2bvbrga9FSPt5pOLsFIuOA.-u8qwymzDylO8Lt_Jqj0Xa8ATLT8Kc4fWPQY-PefnZMwQTy2aUobGkCkPyuMCA6GjCZ8-LM3ENPUClG2duDRIy44lskcxDOLBrVrzF6JywvNLbZcdo4n0_N0vQAppl6_.bdaigkSJjQ4VEXO4S05WmGU5NN9gQUCgGwH5rhUnyJs', '2023-09-27 18:28:42', 1),
(0, 3, '201.137.28.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 18:30:08', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.l5ZokOTseS7gpDyjOL1cgJm1RjOQfEPRXONLqhSRwqvk8nPZEawRsgPVTbb3dNq-woh7Qo2nwjgxamDoQ75H5R4iG69PUbIg.TXkX-yjwv-V7KDD-1ZB-lg.iNtBO27HDjGM0f9gVJ7y5Fbs_cm8eJ2JxO21UpVbh0FaHax5lj-qeTkLNY4NosibMEc23JraF4H61Y_BBGwQUaPeYw443kua1zzoY1SYFs8Ph5kBVKlWBzebkWe3NSZL.TNt-hifJlfmct9mpfwgtR-Xl_YF_73qNm0yr7XXZd_E', '2023-09-27 18:30:08', 1),
(0, 3, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-27 18:31:55', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.aryrxpAzG4qkMy6-RafdJTGr44ZOr7sd2DMhxRzsJIG9pc-mwvwsENSF9SmkUnnT3Na5p2nuWxukMK2Fd9QhPVqsc5GOBNXY.4L7iNZrNEm1hS1uZ2KF1Ow.5guca7UfzBzsckojTHtKLK6KmGg6bNjS0sYbaTS7gx7DnR325a-HXqrhUbX4yMaREL-D3TdS4pkFGAgCXA7FmmCD6g9ygM0TeZ_ZTc4Uh4CU46n_885nNCcGZJPLKZ4C.bTcLNPSlGqwPgF35j_Vu_KBdz4mYuVxhNSyNPs1ZbLw', '2023-09-27 18:31:55', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 18:32:28', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.uXg45UXEwkjj_DEciFZfpAAS8HpAdeL0SY8xl4bEkJeVfcbTI7T8JyiFoRsjfOpgoJ45IQxSXdvZzvPKQQZAzBLzkrgWlEBI.-e6UewKnveisRBTfw0Zs7w.WA_gwv82m5hBM56Jh420Ew7zEwPHn99hP6OYvCw3-XrDQyh4yteegyOacBNWr8ARBJKV4UsEk9iYDyj1QExTLtqcjPrvzqMyShQTVUB5MjCMD3Y0U9c6u-VmdBytbTni.seaELPhZFUNm0l-yELQeTf9CjIZzkPdmzgWJY7cT8JE', '2023-09-27 18:32:28', 1),
(0, 3, '77.111.246.5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 OPR/101.0.0.0', '2023-09-27 18:33:18', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.FPbGLoeES82oOjjkibchSqC2Zq_l46NTEmANgQTBN9elhHdIuqrjh0DBKUM0xYH66CsXP7RaAfWf0dAMC_rCiYj10ChkmYPr.qVIakDjzxOy9hnHCPO_ONA.mM0IKYhkDYCZvJk-ePY2_d7ilWAE291ZuY0Fl3bEGt7uO8GehHiMwuxmC2YcjE8e2dMEOc6gHqI2czr12eQbw-O_Nedk1DpJPkZCNwFAcs3tax4G4j6nnszR6e1EVkBy.kSGZo77SYQ7wHepXiVGVJQCrRowQOhz4D2M3i1K-Qsg', '2023-09-27 18:33:18', 1),
(0, 3, '77.111.246.5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 OPR/101.0.0.0', '2023-09-27 18:41:46', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.rhm8Kh-PzMjPqB3xeCHgpKG-wvGlNh9-f7akZZ-W2LT2yLF3uxNMIZLY2nD_xqlLUlo2yodz2XEQOJldqNwn2AamSiLSizvl.JiaCgBa3Djo94Rdnufg4oA.Ps2Mi1EZUrL6ViOe1qITn1792CryXoN3RpOWInfoTFvCr8jBtRecqTeRKhtiNghZcEybz_ufNyl9FAl1YFxWDWrftqzMq7yJ6jPbysw2BlgHT0G9wzmc8EqhvTkCIshZ.Z5YPFhjgcvf_EFlezM54IpKeiteuYKpEzPmYwJXxLyE', '2023-09-27 18:41:46', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 18:43:25', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.1axPetatH1ElBjrDCY7vArThU4aMaZiwEYLNcQpTow6zZnB6iDMRXZ0BX24mIsPVug-nqJv5ccwlgzKwq_Lg1p_LqVdSGEU1.jIxOp7tYrJ9WS3eXdSNlAw.ZjgwhU8SEeK5wpLwVR5u4511Z0b_R9wfEpRidQQ8x_WZaYj0yk2TX6XauDcySM2EIkVF4rw9K-PEWfBsld-gHFe4-nsceV8Euvz66mt0KKeNKDfOlLWDN7Bvh8d4pZiX.1GKG4F0VBeVeO5_Sdb5kGRFep6urHuSA61YR5mIYqx8', '2023-09-27 18:43:25', 1),
(0, 3, '77.111.246.5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 OPR/101.0.0.0', '2023-09-27 18:49:53', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.cIQc_FfjfJTatJvHmjK_iAz4cyjfMIkr42ATHgOjUw4XTqJwH3c1hPrbZ7RtDXY90FzDBd_rNxwZJWpt_qSdKE3mOtnwWo0-.TPM99AQ2NQL-RjYEQvH3lA.Xgo1hEdg-8OqscUJfzoT10OvCpNSwn_i5AFSLgzJoXuMN_oKof3MUi6_g3m-SNGEMS9K4SHkrNzxRCXXsuEnNIvXfWuOlvizNhMoHW0Bp9A7mnvWghaeJm-QOK5ntcHD.9dkDLYuMAMD9zQgIftRDOx7k6ojLcgUwqyPGuZIRmlU', '2023-09-27 18:49:53', 1),
(0, 3, '187.251.245.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-27 19:01:09', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.TonymQ-Qwrs1CHPmWHltV0EW9Ugl0mf4EIr8E-yeA_yEPF6LkAuruIxwvAuKfYy_T6B_CEz4BNvJ9ilVCWBNuP1Ily5i0Ijb.zPdMguZf3W5y_urckK-XmQ.nPtiBzETKWwfidRm7R5mcsN3n_n95gl_gZwQjAu7rku8A3Bz1u_nIhwOkDVvms0kc2bzqWyWXE8sMVo2eZGcS5AwF1KY1Up3vKOUG2TkfBW85qr5jCAljfGfxBVvUaXp.DYm_bqBFOQBXQoSQywfKRJ2yA1H4u1S3tt1ZquOwT5U', '2023-09-27 19:01:09', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 19:09:59', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.QHfBLgLDeOx0wyVLWWyA7FLw61fIA5auJNs9bbGbnCd1QOiCoZQ5H0XxEHG3HlKcvdn0sIAzXsrgxKSaoSQCl7bwuGEt4RHs.mG1qA0vjRX6eEt0RyOll7g._htbz2ono-A0z4WKOR_2mhqFMaTdtD3HbVuNodu6qswsQsN9hJ6IJh68FYqmj5ViQvFCR6-dk8DTBQZUcSjlKzpUIkjkYngN0SnuFjHeH-0ly7NLnrjkLZykgIqHqio1.LWAzXwvf84fkyne8e-3s1M2xVV0b_R-TSN72Tz1LHzc', '2023-09-27 19:09:59', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 19:17:09', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.XmzEPLajZJlTD0VUsn5WAPosboMu_gY1fpWE1a2emQMbupw86qUT9EBL-XjgPaAuj0z0AttsCfAnwKgYjbIRJjyXv-LC_LrD.GGlEAXmFQOiuDO3QAvdGBA.ZzkV0JqWNVLhiBUvD7oe6vSn3QRvWjAmisUlEHPuOAwKdy6p3-z-fqJO_AyQ0r8feFz5e_r2q8MflO5kN6Fi1YemVqDdvs3B9krs8eiv6A_kPuaCI8bYtUYtGIzMQVG4.4pIxxqOaXdUGU1i6KAHqW0Y31kFGhrPS5SXXJg8peD8', '2023-09-27 19:17:09', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 19:18:16', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.MeFtxbYLP64lFo31a81Ld59s6Page051ToylhtviWA83rGcgz95AfeJ3j1zgkJh2lHtxzkUSyZtBhf1H8hpEQlMNOrbHjzmc.HCq2s-0_KqoREB5uM-vDPw.0r5Cf-H_64S07O7PH7p2mfDPJM046eEV-03mt6fATfweA4dIvVvc3j2yLfaYQ6kATbzXRVIYcABiQpuBF8UnnHZyxA5A8aW1wEVa65rorxK-F4T3C5sg3HJ-uvpZeASB.X8cEKqJIxK0sRs4R5fACeb8yDlaWoouFTVLk5-Sn2IU', '2023-09-27 19:18:16', 1),
(0, 3, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-27 19:22:17', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.OlebK6igUwpFW8zzsN-5Jgq1XTUFXpNhb0bpmTdYyMnr0bTSaHYcUsiclA3Y1lBdi9l4odYjlF7IzrmOW6ufGmwwToYcJlw8.hQBymeXQ-sV0-G69hBR7NQ.eniHwbH7roTEXRiUgKxwVjO8VGn-cjonq9bMLZ4i-64jjb4KBt_mBMIRjCaeINABqabRvo4ogu7kifsHTLvZkZmisDPUQeQeQER6Ie6pa3dxf-nAI9Z9_tfrErq_IZAl.YGJMiBsGy_hxab1ugtUxkmAs1CMyGUKTMKihP2knWA4', '2023-09-27 19:22:17', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 19:27:03', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.g8glukOUOGjjp7WUxbBsvJ1gLtIiSjYnqczq__53RiYeJIioAAM6RqDnRu9O8I5ybjIjmopl0kCzOgVVAFq-wyFTjfLUbFCI.NF0nQnyIK2qfByxIRU8IQQ.NKFqRLw4Yc7LBFTL6NOX1w8qYce_gQvqBUo7Lqm97oiGyKaVQIew7phcPrtHQlmf9A43wmM5eb7PjUagvUGjb3KvuJgOQApI4s0vKbPGkvkhkxkr0FfZoG7ag2njmhGl.xFPNq0JlfBknmULVOxsqkXQ7NPaPYPIDR3VillE7Ycc', '2023-09-27 19:27:03', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 19:37:52', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.-6mKEbPMz49zk8YEfn5fABcf0aqm3uPGFs_xNJil81hvqIGYLgtC_6zyNKt2n4zh78-NzM-ysSxiNtWPX4Y7v6XRdapE5ZEu.pJR1E7bQpiRUmh48nPRIqQ.4CdgApQS8qUBdzGpesml4dnFbxnm-eyQJ__h_2A9gKhKME8G-yLjsGJRVoYIUHg6Hp3nDLl3bGl6OWGVw2gRTSEhnMpaCq-XBf9nRBODUMC5PJYG3cO7GetuH2hCVv37.T09-P9-c_xrnUR_aLRarZwR9dd23eF1oEdnEUvRt-qo', '2023-09-27 19:37:52', 1),
(0, 4, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 OPR/101.0.0.0', '2023-09-27 19:42:45', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.YSVi2Ue43D_wM1mIGsY68stJl5Q5BZSIcyb2wK9_NG11bZwyOUoEcMim1dfDTHV5AvweQE0-Lxqu5AkamLQkb7WZpBWaGG6r.FFtp1Xy8NzbswEkrSzcxEg.lyYExCL4TDDIBob8hLEV_vKwDzyLI_GggJj_qq9Y9BKBgPUIy9KbqLqTl7aPIyiMa1UxWW2Uqb22GQUqEAXPP9pZVkeS2AadJgnuDhwqxt1PnQ1DqW2bC4uCwV_qpGoq.qkkF15xb_DZt_s9hI32bBqT9Ks_PM5-b5VvQ0TgP_Pg', '2023-09-27 19:42:45', 1),
(0, 3, '200.68.128.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 19:53:54', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.rgE5hMMycExhNxXQP0i57ezvY3nyusc76CZBkZTxorXp-YGK_CdutD5ZL6BDaz7Him9MNftJRRtRsZFJV-vIGWGsKPHhWQOW.gumXg2JTPDOFR814i3M9yg.UWYFNmTm5HPVNFGftfz8hmOtqfn_njHI2KTVkXXUn70ELsnYeOLxmJrmemAmNWkbMM0hlxSuihaKTp0VjOdeobllJL9tW-pRJYBrK94-i4w-pF2jq4yDTG074roghkHV.HVZwURPwncuOW4j-pa6PurGClzzh10AhN7ftS8_FSNE', '2023-09-27 19:53:54', 1),
(0, 3, '200.68.128.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 19:54:57', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.KNcWSx-0i09FNCew--j28ozgUvE3MMQq4hmVZvc8SUKjueLSyqeb8O2G-rm8ye2XH9Wc9ECy5bOn_bU15WErK0HPy0tnfBcQ.9NNdlRtelxNlXSzCtX3mRw.zXRn-esI6svu9UgR1UjeTYBkGvMbMP9_Dgj-YyqGg7U02ly05rs7SxMUScDq0a5eLSFeb0Difysz7WURO-34ccr7-Anm3j53vwQMR5yBHFy9WDfQ1t7vo4zzSmlCloLI.9RjlCHNmP_sSwKLNS6aSCP8CCUEYDMKVj-qtDHfwTmk', '2023-09-27 19:54:57', 1),
(0, 3, '200.68.128.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 19:58:32', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.Ft7CceZcD6Ri8AIip4X18zOimvPjeShWTVsadq5oukcPJ-2JR3SiH-BTtLm0oTpsEyD0L3XQNXeVMo3SbsLFS7e-0yWnBd5h.sT3sqC2e_zm36s9YDgLYbA.c_yjbdhL6iZv8jJOsQQ91-ntZUmrbu2YLsyCeFCjAwUD2AFd6k76QDpKOs4pxbeOiv9UU84Mi8kPkgtnhNFoz_yX4hclkB_22eUdJCGFa4NEJc1VwprRLJtvD4bDbIYD.GUPxm31OWZkKMJc6IdmWMq_IC7eAf1v_E9L3zIvecaI', '2023-09-27 19:58:32', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-27 20:02:13', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.0Y4hRaPYbeRxoo4z5t3d8eoT_FQ0YZf_4RUJNRXJGKiLeuYes9SDS8ylyMeVj3wSdJfrLmh3dVCHrDSbvbdOlE3Hgdbll2b6.O9DTMWCD_Gn2SPBLHJ_wEg.kHcpdZ41-Y0BanRK5vRwe6qyh-1qciiSoWxdYuIG8vYEQxgt3287LyylT8lwaiMm_ugaoXpjHKHJ91yhjPMtuY4GqqMb4_a48aHPEOEXlHiMn_ZMNoGDe6g_ovQVzyvK.ydr3JfgeAQSSsW3rPvQ_yay7o8skx1kNkwnyzbO6JhY', '2023-09-27 20:02:13', 1),
(0, 4, '200.68.128.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 20:31:21', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.yiIOR7tqC8UDfbO4p6x9Yia5jbPWUFbgabhvBSfWX9tD4AxoGG4wIEazVJWL4VQRcnkWxuwHtCiUXcnozfPz03jw-hEd6jhQ.K3REaTr1LcuBmymEnfmjxA.ac0QUWdUpOIyTc-ikMBlrLayq9gwQHLMjAc2M8B47r7Xy9NSnA4YH-_VwIm11-PGODrK8ZfPgjsHTBStINfeH6uN6vX4V1I6RnWE22EmyYzkQPNnUGWw4Ip-Z9E9C3wS.O1ufn4nFK87kuePLos7IPKKBO3Kn9IkxYShEVec_wtk', '2023-09-27 20:31:21', 1),
(0, 4, '200.68.128.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-27 20:40:59', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.LvCpV5Tm1YxtRVn2PcmHoP-BEsV5PS65NYa3qyS7i5AbNtVu2G2nCwU_iMZNECTqL_iegSoF_Ke31E6w0LmnuDm-EGuZg1fQ.ztaz-8za1K7J28x6Ai2ddg.5lSXj1IzlUwJ_XykUctI23bRTqKWZoOW-WAM3XRVxFLiIvmEX9AeMZPV9LBkTvm1776cX53-8AFGgaGMViV6zQLgi38dwgg-SZ-FNEyWfh0o8aGBpr66kBbnD1ON7blR.4PyTIw2Nr6jntNv1EFHDX609qNbi5agmZtnPwzkGjvU', '2023-09-27 20:40:59', 1),
(0, 3, '189.234.149.231', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-28 06:15:52', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.Q3WhuWtus0S1XBU6DB5tCxBu3KgFX6VPsJ9WemEsXymMmEEAMnT5HIKvwnmMFAOO3IfL3gSKgMUXFQgRUZIIGXXVQtnpfYnc.tSd7QWDZn-yNN_aZfrDmnw.QT-O9ADc2Q32ipBoqda6P5iu3lXBvtpCw4pmW1XpRB8dOvaDlAui-QbRU2PDe_Xy4p4LoJYSIWwBLZdyYDTT9NOvqrdez70WavUJEt6XmLAUTZH2MfCrRD7LEceBo8Cm.r69FfDF8zkJnt6NnnKFExuiKbs-ITRFvyxVZjdVfmwA', '2023-09-28 06:15:52', 1),
(0, 4, '189.142.18.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '2023-09-28 07:55:22', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.Pp3w_PA_fyQmQ_TueJRMBe0ED7RJKhNATvNwbdL-AdYR8OpGzCan58TEbIyn6UdUO3rvA4rzcFgPXEMz_7D_xQvLdAqtrbE2.sbcxGAvnMacKYjFwAJmI0w.3fsj7GsNAoLMn4vVq0CgqF30aTChbPboY0rXfn0tOThdxYDMzB2eg0fBJ1tQGq_89rcfOCq4LFjuu332XBN7LloIvALBYKDaDdLnJ4oSfN4wI9A0mROTLZFsW4RlLPe1.XTo9ktbri9i39EipfLGgmCHzE8q9ma3zcQhH-D4hVao', '2023-09-28 07:55:22', 1),
(0, 3, '189.139.31.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-28 08:19:22', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.NyGIfrVsMawgyDWe5th_03MemkKqxxWI9ToylBfrPqdUBWo0IeDxYihdLc2n8nNu4xb2f07wuW9xrHjOo-rlB0QQniE9LYiE.Z8Y5gA8P3CaXOXP8suaYRg.pSYZRZvOGqNjJMcA2WX-_yolXoyprBdsfq0obM53-v6n0uGxc6o0i_e-ymqTRCdWF34BXnGLjMJa-iW93_jcHI8DXKFhXtosgAcm8goMfdJnhdduwL9CVfE3B_i1Il89.kHITuVIrh6d_H5whV0BcZDAlJmNclWGfDgpMRfiSbEg', '2023-09-28 08:19:22', 1),
(0, 3, '189.139.31.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-28 08:43:07', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.GbwucupsAebaGF-v06w0s5BiA6CQfNy4UEdL4yeCLrSX4OA2neL8ylsIhqMr9JFBpDWKFleDhJTKGrjsKaSVRi888boTFBDG.sPCCdbWi7_nIWioSMLCFDA.si8k5p02PNdv8CUtTvOgwoBjOBYlDq8vYFPk6n1ArC70ej_jENRi6lE6PCB9rdqyUcoMIBbrZjaeAFLTMMnU3M2oFT2DutXkM_7cCCdpuFy-xEnG-wuzlEHxu43rPn8c.z92wIlUO6poOvTQuWfMpioJmUv1e8XgeNDgru46BK7o', '2023-09-28 08:43:07', 1),
(0, 2, '189.142.18.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', '2023-09-28 08:55:30', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.KBJ2Y6SRQfjacIty7O1Zwf3g8l3GMf8upPgjablOleyUMlzqUbveeCSHs2Jl7qnCExloFekpXODKMPOujpg3JKE2fO_MCwS5.h8JLknzDtg2xrjXD-NFxug.HBhVhn8OL3P9gEwI25mBkDm2MDPccMbZT1ucWdIxc8NT-HQ7gHxHk4mDoK69x-S5OBAX2rkzceq3twRLoWsg_c8fXI331ciVKFuNiawiJir8bTaHuk53XnV7ibAWScLE.iMz68rVKCc1o12TtTPRHdzmmBlYHIt9g6a88KhoGvLU', '2023-09-28 08:55:30', 1),
(0, 3, '187.190.227.68', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-28 09:04:26', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.UBnNx9_oIRzeYX3Du6y5DgoGVUOdOAGZhweDltvKnXVSZqbPXX0q9hTT4qVxfiGGaS5ZEjRCJiqk256uAR7bQGkBJ-g0ovOL.W4XfQQZwzrA4VcanT73pcQ.YalU-L20ut6dNIT33449GhvIOQoqd-6HlxLY84wy8A5SsESQK0cjvE9KKna5Dhj5dwpEqtk92kwcfORM4164SS0t334PsSGgbaV80AdSm0yJII1eRdQ0VG_ICI3kAAh5.Yc_DApf8o2pd9glwr_XD7LbhBTRtCL4_UbEHrmWGgwk', '2023-09-28 09:04:26', 1),
(0, 3, '187.190.227.68', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-28 09:20:45', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.BA01MGao_GZpLW-9aViLD1L534Ssvafj6yf3vMhW0ZTepcLwqvbI77kzPIWCOp8qsSRnxE3V0oHym2w-nFKP555_qJww-AQT.HfZXSYjT5O6nJpQD663mLg.aViRPBO7xxfUPCnaoLMn6jCh4EhOB34aUsD7crC2cc2MrQJrTHRRYM_5Oogf6GMwQXU4o7yhuzpxFXB9Li_KpAKRHDYZSs9QX969HxeIpwEX5laeubC7V0Ht1IdRfSrc.MrMlM_WYBaCDi2_g5tW9ZRooUIy22dOMhiWqucMF19s', '2023-09-28 09:20:45', 1),
(0, 4, '200.68.183.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 09:30:00', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.YWZFoXvf_7ZeSKeUDcZBqMw5qXY9VhbKvnm6rNtnqycGlB1r-1H2UdvG_XYQNGPc0ptgmZtct9AhpIxzEkCTPWmR5RoqStqu._hEBFaJqv-v1oFKvAx9EGg.w2ti2RUxsGjn0tkg4_Ugrib-k1_R_VDcVPmJY80T4l-5R9i-0S6-EuuXOa17ldBYjFDI0sjjL3nl8EoLvJRamgdfNXMIZUU_wdFmlU2pYhT0ddrOB7q1_-VIN2-Pclpg.FQXt9AQNpLEoj2tG3NRyopgEIN5s7kTJYfFcSn559JQ', '2023-09-28 09:30:00', 1),
(0, 4, '200.68.183.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 09:35:28', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.UliTTLGaOLtbdK0X6qvLMEOmcNHEQXllz-Ce7AxmbwiwuVgJS59nsR3AxLxfL9GD3yN1AVIm_C1oOwRFj7rnqTpvzPOs2JCu.9o0l-54wGNv_QYax8MmDSg.WoYnqNB2qTjSosEXIJbfznWhubc9Tyb4hFR2uMLGuIqe3Q2RKTd6vdDcJKbctJ7YnbxzOaIZmQId-jFmukEOGE26UW2UQKNS8u0yBReplRlxzNlV-q3BO0TzyRiTVXp6.j2mrea1qLFDvHa1yyOm7C--yMKm_3InweTcEwzCGUTU', '2023-09-28 09:35:28', 1),
(0, 4, '200.68.183.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 09:40:56', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.dv5B_hclJdvwg6LxlIjZ6T1TCx1QOP5niP9WjlBcOo1JvJg4kkMwX-wUr0Rko0wHFSxfvRHAUNlmq_2EavnTlR_C_0iZPMiy.bZxewRi3OoKCU8xdR9pXLA.3pwdB4itja7EenepIzEIjbI9IolKrO7zRrWwuDcHwOfKQuR_38ySHqqY09ziHMzGZuqPHBnoP_4yKhetDx06dYBSywzlA6QSagmFtnfWzJlA7bMbBEPtbMUOhys0-jrw.zt_aBgnohGKyTLkqg4uNCBJoW5Q2koPaHvFPtKLwFWQ', '2023-09-28 09:40:56', 1),
(0, 4, '200.68.183.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 09:51:01', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.JJaKbX-iCqVCnbQO1u6YK7tyu0SgGFPkfozJXEMWe9Du38jCb3pxKBnyM81lSyKFCAezdJZW1hmvlcoAICm4pmfFsUVdQqIl.KkOydhXNxrrsKazJ_FxLgw.O0AYnqTTuujmb_CtpaFzovM8b0A7Y8aTfiw9qkv06oYwDrgUU40BBTnEFxo9y7NF1B5uvo428j81YyOLL2Ukn4xCoO-fvaxGtELAmAT_T-lLkjQ0-o5BlJ8rGIz0aoBR.RPR9o8yXOIZtVSY0JF1bcHbNL8flTy_X75PCU6oW6yo', '2023-09-28 09:51:01', 1),
(0, 3, '189.234.149.231', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '2023-09-28 10:00:10', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.KCQKewsL6PmgVfojZjefB065lcTDFe3F3yvWaoSuMA0gHQYoU9K3FqnyFBlgj-v_UGnqKS0ec61c3uVUBF8X4_0s2twXUmDc.4TuXXGLvqx3a4kfhnHwUYg.oyL3vBC2vESlEz3dwvn034fq-u-zGK1mDM_zyy3VZTN1L7JKMui3BqNCBE4hjQeSZzmufPE5j-Xa7IXt8yKvRF1k6ichCAWMUjW3UwNUgipsWGJyS9Etk5Ep1GRU0S2q.DDFLurOZp2VdPwZnmfwEa72IrJ630-KsR-Js_BeIPVc', '2023-09-28 10:00:10', 1),
(0, 4, '201.124.243.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 10:20:02', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.9k4vn6fgAivScYSXcm7TP8rLDokbDjUjLPGeAs2I82BqJ22MsfstpanWAgRtLrLXWF8FdKzeGXD6GySIUdhI-MmNFMmRR1Tr.O2S_cNzAuZKNfI_wacjv1w.WAjSkIVtlPVOKnY3RVx1C0iZ-X-xPwJDU_SEBo9QgaLwCCw9bWjy2dY41NSDvfe185MR-pIMorTsuRLiCzZgFqny_r9j53F_E6IvxZpHvOgk6K2ZjMitE5A2YhppLQEO.3eUAzm3ZQGTFD8QEcS6l8AWO6gySLN5J9QyQjsvMRL0', '2023-09-28 10:20:02', 1),
(0, 4, '45.166.102.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 10:37:27', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.mIIvS6Y2fZFzUrf8I_bX8bqjmD8j54ur7EoWiX5dDnZxUEaEYXdNwcFoKrPRKcvoQyBu4n8asFixgPCcSvk0MB6AAv1uJM4b.yC5IovQnbKQaaKi2fazwsQ.OivS0jqI7jIZNHk-UFqCznRMIoi2zMDBk8mezwaQKv-4jnUVV46jb9sw01Cdhqi2-m863WGZNtgJ5kRdsPJp16DZrxy_plvf8xcNLGJrwRICle_nLvW6ue55IQN95voR.jramhgxbCgHZq7vLa2UxKzADsifIqpY9igeUezWNxGQ', '2023-09-28 10:37:27', 1),
(0, 4, '45.166.102.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 11:17:26', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.676YEhwO0_6Q-Nup6enYsnxB2eYsst3I8Zd2LrmikwMMQFHUm4rjlwtpclw3KjCCsGKOmQEbqlmd6UTl-gmWewSon51powFE.aI7oD1KlTDEzugJ4ZrJoDA.Va_1YVJksJmQGlDeQsm7XsjAU-Vw74t-ttt40Z2a9GMDtAjxOiso9Str3hfqj5pA0YQ9QdfFKZjQ-Qtc85riqwgrC7FNQynhltPhqiZkqmk9OmuPn0PRTZL_Gk2yGp_4.MMO1eP9cHkuCnByMbM6lXeibqAjHo3mDqd4iWZxycLI', '2023-09-28 11:17:26', 1),
(0, 4, '45.166.102.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 11:20:23', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.Bmc1OYB_iWu_j7DinPV_-yqpvIOjqPzgMT7VA2GfaysidVkThVv5HbvbhTRR1_9RXfxoJSZf288HvoAbRsQRB9XReKbOIsTm.eGkUyV-b2LNI8UjY-1j0bg.4dwrfxe779I2LeU8HC_5hzt2W8Fv6CWHXVSHL6V9A77xKMf7_QCIBvzlfbj9Sw91JxmhWlpBT4GwqHgNcV0LpHmGzO_cwYPETDbbZvOoKjJJ1wISw8dFUasuXMtY9e9H.bXFT-nlTuyUUZTxfUn7BEwcAeWWYsJNi8OOFB9Y9kPU', '2023-09-28 11:20:23', 1),
(0, 4, '200.68.183.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2023-09-28 11:24:54', NULL, 'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.vs3F39SNDXl1wOspQvzoZj5_puCuWBq7D_SIvezxsU4gozQNL46fi4_5xthUKOZz4IDN2x-e-5lixx7imACSwmoOd6gpN6pD.3H4HRGAGQu0V9wT4OA1Lyw.LaAN40CsUr37gAlg6rgx1h321WjUTp2eymf5dHV6GJbcNMZgu757O1rJsbtAp0WIGfID6AYqHf1lF_wwfDaDpLrcB6qee6V06mdIdNpPLMRcl5VBDEIh58-m-xvFJcdB.O9JCmnXdqscp5z2KpzwZPcefzOn-nBum2jW15I1dItg', '2023-09-28 11:24:54', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_usuario`
--

CREATE TABLE `seg_usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT '',
  `telefono` varchar(15) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `estado` tinyint(3) UNSIGNED DEFAULT '1',
  `ultimo_acceso` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_usuario`
--

INSERT INTO `seg_usuario` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `username`, `password`, `estado`, `ultimo_acceso`, `fecha_modificacion`) VALUES
(1, 'Daniels', 'Guerrero Mtz', 'danielguerreromtz1998@gmail.com', '7714444444', 'daniel', '19e443c9d171d2f0d3ad1157fed5a39d', 1, '2023-03-07 17:44:32', '2023-03-07 16:21:59'),
(2, 'Ivan', 'Santos Pérez', 'isantos@ddsmedia.net', '7711111111', 'isantosp', '19e443c9d171d2f0d3ad1157fed5a39d', 1, '2023-09-28 08:55:30', NULL),
(3, 'Administrador', NULL, 'eperez@tecnoregistro.com.mx', '', '', '19e443c9d171d2f0d3ad1157fed5a39d', 1, '2023-09-28 10:00:10', NULL),
(4, 'Kike', 'Kamarena', 'kike@hotmail.com', '5545255555', '', '19e443c9d171d2f0d3ad1157fed5a39d', 1, '2023-09-28 11:24:54', '2023-09-27 19:04:33'),
(5, 'QWERTT', 'QWERTY', 'corrego@gmail.com', '7777777777', '', '19e443c9d171d2f0d3ad1157fed5a39d', 0, NULL, '2023-09-27 19:12:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seg_accion`
--
ALTER TABLE `seg_accion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seg_modulo`
--
ALTER TABLE `seg_modulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seg_permiso`
--
ALTER TABLE `seg_permiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT de la tabla `seg_accion`
--
ALTER TABLE `seg_accion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `seg_modulo`
--
ALTER TABLE `seg_modulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seg_permiso`
--
ALTER TABLE `seg_permiso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
