-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2023 a las 22:29:27
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `vcard`
--

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
  `fecha_modificacion` datetime DEFAULT current_timestamp(),
  `estado` tinyint(1) NOT NULL DEFAULT 1
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
(7, 1, 'No bloquear inactividad', NULL, '', '', NULL, 0);

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
  `fecha_modificacion` datetime DEFAULT current_timestamp(),
  `mostrar` tinyint(1) NOT NULL DEFAULT 0,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `fecha_modificacion` datetime DEFAULT current_timestamp(),
  `estado` tinyint(1) DEFAULT 1,
  `orden` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_modulo`
--

INSERT INTO `seg_modulo` (`id`, `nombre`, `url`, `id_html`, `icono`, `fecha_modificacion`, `estado`, `orden`) VALUES
(1, 'Usuarios', '/usuarios', 'usu', 'mdi mdi-account-multiple', '2023-03-02 11:24:15', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_permiso`
--

CREATE TABLE `seg_permiso` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `seg_accion_id` int(11) NOT NULL,
  `fecha_modificacion` datetime DEFAULT current_timestamp(),
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_permiso`
--

INSERT INTO `seg_permiso` (`id`, `usuario_id`, `seg_accion_id`, `fecha_modificacion`, `estado`) VALUES
(1, 1, 1, NULL, 1),
(7, 1, 7, NULL, 1),
(8, 2, 1, NULL, 1),
(9, 2, 2, NULL, 1),
(10, 2, 3, NULL, 1),
(11, 2, 4, NULL, 1),
(12, 2, 5, NULL, 1),
(13, 2, 6, NULL, 1),
(14, 2, 7, NULL, 1),
(15, 3, 1, '2023-03-07 11:18:33', 1),
(16, 3, 2, '2023-03-07 11:18:33', 1),
(17, 3, 3, '2023-03-07 11:18:33', 1),
(18, 3, 4, '2023-03-07 11:18:33', 1),
(19, 3, 5, '2023-03-07 11:18:33', 1),
(20, 3, 6, '2023-03-07 11:18:33', 1),
(21, 4, 1, '2023-03-07 11:25:06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seg_sesion`
--

CREATE TABLE `seg_sesion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `iniciada` datetime NOT NULL DEFAULT current_timestamp(),
  `finalizada` datetime DEFAULT NULL,
  `token` mediumtext DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT current_timestamp(),
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `estado` tinyint(3) UNSIGNED DEFAULT 1,
  `ultimo_acceso` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seg_usuario`
--

INSERT INTO `seg_usuario` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `username`, `password`, `estado`, `ultimo_acceso`, `fecha_modificacion`) VALUES
(1, 'Daniels', 'Guerrero Mtz', 'danielguerreromtz1998@gmail.com', '7714444444', 'daniel', '19e443c9d171d2f0d3ad1157fed5a39d', 1, '2023-03-07 17:44:32', '2023-03-07 16:21:59'),
(2, 'Ivan', 'Santos Pérez', 'isantos@ddsmedia.net', '7711111111', 'isantosp', '19e443c9d171d2f0d3ad1157fed5a39d', 1, '2023-03-07 17:44:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
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
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`) VALUES
(1, 'PARTICIPANTE', 'sbecerril@bursanet.com.mx', 'YAEL', 'BECERRIL', 'BARRAGAN', 'ACTINVER', 'MANAGER / BURSANET', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(2, 'PARTICIPANTE', 'mariocarrillo@ardetti.com', 'MARIO ALBERTO', 'CARRILLO', 'JIMENEZ', 'ACTINVER', 'MEMBER', 'MEXICO CITY METROPOLITAN AREA', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(3, 'PARTICIPANTE', 'sperezv@actinver.com.mx', 'SAMUEL', 'PEREZ', 'VEGA', 'ACTINVER', 'BANQUERO PRIVADO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(4, 'PARTICIPANTE', 'lpimienta@actinver.com.mx', 'LEOPOLDO', 'PIMIENTA', 'SANCHEZ', 'ACTINVER', 'VP EQUITY SALES', 'CIUDAD DE MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(5, 'PARTICIPANTE', 'hreyes@actinver.com.mx', 'HECTOR JAVIER', 'REYES', 'ARGOTE', 'ACTINVER', 'ANALISTA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(6, 'PARTICIPANTE', 'treyes@actinver.com.mx', 'TANIA', 'REYES', 'FLORES', 'ACTINVER', 'ASESOR PATRIMONIAL', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'ASESOR', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(7, 'PARTICIPANTE', 'asuarezs@actinver.com.mx', 'ANGEL', 'SUAREZ', '', 'ACTINVER', 'PM', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'UN COMPAÑERO ES PANELISTA'),
(8, 'PARTICIPANTE', 'reportefinanciero@prodigy.net.mx', 'ALEJANDRO', 'GUERRERO', '', 'ACTINVER.', 'ESTRATEGA BURSATIL INDEPENDIENTE.', 'CIUDAD DE MEXICO.', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO'),
(9, 'PARTICIPANTE', 'jesustovar@aditiconstructora.com', 'JESUS', 'TOVAR', '', 'ADITI CONSTRUCTORA', 'DESARROLLADOR', 'LEON', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(10, 'PARTICIPANTE', 'jmontiell@elektra.com.mx', 'JORGE', 'MONTIEL', '', 'AFORE AZTECA', 'GERENTE RIESGOS FINANCIEROS', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(11, 'PARTICIPANTE', 'francisco.vargasg@aforecoppel.com', 'FRANCISCO JAVIER', 'VARGAS', 'GARCIA', 'AFORE COPPEL', 'EQUITY TRADER', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'AFORE', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(12, 'PARTICIPANTE', 'horacio.coutino.mx@gmail.com', 'HORACIO', 'COUTIÑO', '', 'AFORE COPPEL SA DE CV', 'SENIOR EQUITY RESEARCH ANALYST', '', 'MEXICO', 'ASSET OWNER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'PARTICIPANTE', 'MMONTESINOS@PENSIONISSSTE.GOB.MX', 'MAXIMILIANO', 'MONTESINOS', 'CORDOVA', 'AFORE PENSIONISSSTE', 'JEFE DE DEPARTAMENTO C', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'OTHER', 'CORREO DE BBVA'),
(14, 'PARTICIPANTE', 'daniel.badillo@suramexico.com', 'DANIEL', 'BADILLO', 'CASTRO', 'AFORE SURA', 'ALTERNATIVE INVESTMENTS ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(15, 'PARTICIPANTE', 'juan.arce@aforecoppel.com', 'JUAN CARLOS', 'ARCE', 'LIMON', 'AFORECOPPEL', 'ANALISTA MIDDLE OFFICE', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(16, 'PARTICIPANTE', 'guillermo.morales@uno.cl', 'GUILLERMO', 'MORALES', '', 'AFP UNO', 'ANALISTA DE INVERSIONES DE RENTA VARIABLE INT', 'SANTIAGO', 'CHILE', 'ASSET OWNER', '', '', '', 'OTHER', 'ADMINISTRADORA DE FONDO DE PENSIONES', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(17, 'PARTICIPANTE', 'galo.legorreta@ag2solutions.com', 'GALO', 'LEGORRETA', '', 'AG2 SOLUTIONS', 'DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'SERVICIOS DE BACKOFFICE Y ADMINISTRATIVOS PAR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(18, 'PARTICIPANTE', 'karen.gallo@ag2solutions.com', 'KAREN', 'SALINAS', '', 'AG2 SOLUTIONS', 'LIDER', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'EMPRESARIAL', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(19, 'PARTICIPANTE', 'fernanda.vivia@ag2solutions.com', 'FERNANDA', 'VIVIA', '', 'AG2 SOLUTIONS', 'SUBDIRECTORA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'SERVICIOS DE BACKOFFICE Y ADMINISTRATIVOS PAR', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'RECOMENDACION'),
(20, 'PARTICIPANTE', 'rgonzalez@aiu.edu', 'RICARDO', 'GONZALEZ', '', 'AIU', 'PROVOST', 'SUNNY ISLES BEACH', 'UNITED STATES', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(21, 'PARTICIPANTE', 'gabriel.albores@cbimultiassets.com', 'GABRIEL', 'ALBORES', 'GARCIA', 'ALBORES COACH', 'DIRECTOR', 'OAXACA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(22, 'PARTICIPANTE', 'ventas.multimodal@grupoamigo.com', 'LAURA', 'CALVILLO', '', 'ALLIANZ', 'ASESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONOCIDOS'),
(23, 'PARTICIPANTE', 'jorge@primerotuseguro.com', 'JORGE', 'ESCANDON', '', 'ALLIANZ', 'ASESOR PATRIMONIAL', 'AREA METROPOLITANA DE PUEBLA', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'CONSULTANT', '', '', '', 'SPDJI EMAIL', ''),
(24, 'PARTICIPANTE', 'acontreras@alstec.mx', 'ALEJANDRO', 'CONTRERAS', 'BELMONTE', 'ALSTEC CONSULTING', 'RISK & INVESTMENT CONSULTANT', 'MONTERREY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FAMILY OFFICE', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(25, 'PARTICIPANTE', 'mauricio.iracheta@altorcb.com', 'MAURICIO', 'IRACHETA', '', 'ALTOR CASA DE BOLSA', 'OPERADOR DE BOLSA', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(26, 'PARTICIPANTE', 'mccarranza@amafore.org', 'MARIA CRISTINA', 'CARRANZA', 'BUENO', 'AMAFORE', 'GERENTE', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'REFERENCIA INTERNA'),
(27, 'PARTICIPANTE', 'mcruz@amafore.org', 'MAURICIO', 'CRUZ', '', 'AMAFORE', 'ANALISTA DE INVERSIONES Y RIESGOS', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ASOCIACION'),
(28, 'PARTICIPANTE', 'rmendoza@amafore.org', 'ROBERTO', 'MENDOZA', '', 'AMAFORE', 'DIRECTOR DE INVERSIONES', 'MEXICO CITY', 'MEXICO', 'GOVERNMENT/NGO', 'ASSOCIATION', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(29, 'PARTICIPANTE', 'atafoya@amafore.org', 'ALDO DANIEL', 'TAFOYA', 'CARRILLO', 'AMAFORE', 'ANALISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(30, 'PARTICIPANTE', 'edelcastillo@asociacionamai.com', 'ERIKA', 'DEL CASTILLO', 'OTERO', 'AMAI', 'DIRECTORA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', '.', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(31, 'PARTICIPANTE', 'mbordas@amubi.com.mx', 'MAURICIO', 'BORDAS', 'CHIAS', 'AMUBI FUTURUM SEGUROS Y CIBERSEGURIDAD', 'DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(32, 'PARTICIPANTE', 'emaldonado@apatrimonial.com.mx', 'ELIZABETH', 'MALDONADO', 'CAMARENA', 'ASEGURADORA PATRIMONIAL DAÑOS, S.A.', 'SUBDIRECTORA DE ADMINISTRACION Y FINANZAS', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'OTHER', 'DAÑOS', '', '', 'SPDJI EMAIL', ''),
(33, 'PARTICIPANTE', 'hectorct@asepriv.com', 'HECTOR', 'CISNEROS', 'TORRES', 'ASEPRIV ASESORES INDEPENDIENTES', 'DIRECTOR DE OPERACIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(34, 'PARTICIPANTE', 'abours@aserta.com', 'ANTONIO', 'R', 'BOURS', 'ASERTA', 'ANALISTA SR INVERSIONES', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(35, 'PARTICIPANTE', 'edibarrar@asesorfinanciero.vip', 'ENRIQUE DAVID', 'IBARRA', 'RAMIREZ', 'ASESOR FINANCIERO VIP', 'DIRECTOR', 'MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(36, 'PARTICIPANTE', 'samuela@grupobmv.com.mx', 'SAMUEL AARON', 'ARCHUNDIA', 'PEREZ', 'ASIGNA Y CCV', 'GERENTE', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(37, 'PARTICIPANTE', 'elizabeth.puente@axa-im.com', 'ELIZABETH', 'PUENTE', '', 'AXA IM', 'PORTFOLIO MANAGER', 'MEXICO', 'MEXICO', 'OTHER', 'PORTFOLIO MANAGER', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(38, 'PARTICIPANTE', 'pablo@axsmexico.com', 'PABLO', 'HURTADO', '', 'AXS MEXICO S.C.', 'MANAGING PARTNER & FOUNDER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(39, 'PARTICIPANTE', 'andres@aztlanequities.com', 'ANDRES', 'VIEDMA', '', 'AZTLAN', 'ANALISTA DE EQUITIES', 'MONTERREY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO DE INVERSION', '', '', '', '', '', '', 'OTHER', 'EMAIL AZTLAN EQUITY'),
(40, 'PARTICIPANTE', 'fabiola@aztlanequities.com', 'FABIOLA', 'PASTRAN', '', 'AZTLAN EQUITIES', 'ANALYST', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(41, 'PARTICIPANTE', 'carlos.valenci@comunidad.unam.mx', 'CARLOS EDUARDO', 'VALENCIA', 'MONTIEL', 'AZUCAR CAFE', 'EMPRENDEDOR', 'ESTADO DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'COMPAÑERO DE AMI'),
(42, 'PARTICIPANTE', 'jesus.mondragon@b4u.mx', 'JESUS', 'MONDRAGON', '', 'B4U', 'ANALISTA ACTUARIAL', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ACTUARIO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(43, 'PARTICIPANTE', 'jessica.reyess@elektra.com.mx', 'JESSICA', 'REYES', '', 'BANCO AZTECA', 'ANALISTA RIESGOS FINANCIEROS', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(44, 'PARTICIPANTE', 'marcos.neumann@bbva.com', 'MARCOS', 'NEUMANN', '', 'BANCO BBVA ARGENTINA S.A.', 'VP CS', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(45, 'PARTICIPANTE', 'irannuga@outlook.com', 'IRMA', 'NUÑEZ', 'GALICIA', 'BANCO COVALTO', 'DIRECTOR OF OPERATIONS', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'BANCA', '', '', '', '', '', '', 'OTHER', 'OTRO'),
(46, 'PARTICIPANTE', 'jjleon@banxico.org.mx', 'JOSE DE JESUS', 'LEON', 'ASTORGA', 'BANCO DE MEXICO', 'JEFE DE OFICINA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'RIESGOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'BMV'),
(47, 'PARTICIPANTE', 'dcabrera@bancomext.gob.mx', 'DIANA LIZETH', 'CABRERA', 'PLIEGO', 'BANCO NACIONAL DE COMERCIO EXTERIOR', 'ESPECIALISTA DERIVADOS', 'MEXICO CITY', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO VALMER'),
(48, 'PARTICIPANTE', 'ynava@bancomext.gob.mx', 'YARLIN AZUCENA', 'NAVA', 'GARCIA', 'BANCO NACIONAL DE COMERCIO EXTERIOR, S.N.C. (', 'ESPECIALISTA AUXILIAR DE ADMINISTRACION DE RI', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(49, 'PARTICIPANTE', 'cbasurto@santander.com.mx', 'CAMILA', 'BASURTO', '', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE ', 'ASSOCIATE', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'BANCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(50, 'PARTICIPANTE', 'elopezp@vepormas.com', 'EDUARDO', 'LOPEZ', 'PONCE', 'BANCO VE POR MAS', 'EQUITY RESEARCH ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(51, 'PARTICIPANTE', 'marsol_h@yahoo.com', 'MARISOL', 'HUERTA', '', 'BANCO VE POR MAS BX+', 'ANALISTA SENIOR CORPORATIVO', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(52, 'PARTICIPANTE', 'damarisgezabel@hotmail.com', 'DAMARIS GEZABEL', 'CASTILLO', '', 'BANCOPPEL SA', 'ECONOMISTA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GERENTE ZONA SERVICIOS FINANCIEROS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(53, 'PARTICIPANTE', 'sandra.arreola.monroy@banorte.com', 'SANDRA', 'ARREOLA', '', 'BANORTE', 'GERENTE', 'CIUDAD MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(54, 'PARTICIPANTE', 'jessica.grajales.lara@banorte.com', 'JESSICA MARIANA', 'GRAJALES', 'LARA', 'BANORTE', 'DIRECTORA DE RIESGO DE BALANCE', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', 'BANCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(55, 'PARTICIPANTE', 'carlos.hernandez.garcia@banorte.com', 'CARLOS', 'HERNANDEZ', 'GARCIA', 'BANORTE', 'SUBDIRECTOR ANALISIS BURSATIL', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', 'CORREO DE SPDR'),
(56, 'PARTICIPANTE', 'mauricio.santos.alonso@banorte.com', 'MAURICIO', 'SANTOS', 'ALONSO DEL MONTE', 'BANORTE', 'SUBDIRECTOR PROMOCION ADMINISTRACION DE ACTIV', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(57, 'PARTICIPANTE', 'orlando.zelaya.molina@banorte.com', 'ORLANDO ERNESTO', 'ZELAYA', 'MOLINA', 'BANORTE ASSET MANAGEMENT', 'DIRECTOR DE ESTRATEGIA / PM FONDOS MULTIACTIV', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'VANGUARD'),
(58, 'PARTICIPANTE', 'wendipaola.acevedo@bbva.com', 'WENDI', 'ACEVEDO', '', 'BBVA', 'MANAGER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'BBVA'),
(59, 'PARTICIPANTE', 'martha.angulo@bbva.com', 'MARTHA', 'ANGULO', '', 'BBVA', 'DIRECTORA RIESGO FIDUCIARIO', 'CDMX', 'MEXICO', 'REGULATORY/COMPLIANCE', 'RIESGO FIDUCIARIO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(60, 'PARTICIPANTE', 'jafetezequiel.bello@bbva.com', 'JAFET EZEQUIEL', 'BELLO', 'CISNEROS', 'BBVA', 'ESTRUCTURADOR', 'CDMX', 'MEXICO', 'OTHER', 'ESTRUCTURADOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(61, 'PARTICIPANTE', 'sergioenrique.gutierrez@bbva.com', 'SERGIO', 'CEJA', '', 'BBVA', 'RISK MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ASESOR DE RIESGOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(62, 'PARTICIPANTE', 'Marco.espinosa@bbva.com', 'MARCO ANTONIO', 'ESPINOSA', 'MELENDEZ', 'BBVA', 'ED LIQUIDITY MANAGEMENT', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(63, 'PARTICIPANTE', 'ivanarturo.flores@bbva.com', 'IVAN', 'FLORES', 'VELAZQUEZ', 'BBVA', 'NORMATIVIDAD CONTABLE', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(64, 'PARTICIPANTE', 'jesushoracio.garcia@bbva.com', 'JESUS HORACIO', 'GARCIA', 'BRAVO', 'BBVA', 'VP', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(65, 'PARTICIPANTE', 'JOSEMARIA.GL@BBVA.COM', 'JOSE MARIA', 'GOMEZ', 'LASTRA', 'BBVA', 'INVESTMET CONSEOUR DIRECCION DE ESTRATEGIA DE', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', 'BANK-OWNED BROKER/DEALER', 'VENTAS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'RECOMENDACION'),
(66, 'PARTICIPANTE', 'diego.miranda@bbva.com', 'DIEGO', 'MIRANDA', '', 'BBVA', 'ASSOCIATE AM', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(67, 'PARTICIPANTE', 'monica.palacios@bbva.com', 'MONICA', 'PALACIOS', '', 'BBVA', 'SENIOR RISK MANAGER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'ASESOR DE RIESGOS', 'OTHER', 'BANK', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(68, 'PARTICIPANTE', 'ci.rios@bbva.com', 'CRISTINA', 'RIOS', '', 'BBVA', 'ASSOCIATE BUSSINES EXECUTION', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FONDOS DE INVERSION', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MEDIO DE BBVA'),
(69, 'PARTICIPANTE', 'javierivan.rodriguez.dejesus@bbva.com', 'JAVIER IVAN', 'RODRIGUEZ', '', 'BBVA', 'BANQUERO PATRIMONIAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(70, 'PARTICIPANTE', 'victordaniel.rodriguez@bbva.com', 'VICTOR', 'RODRIGUEZ', '', 'BBVA', 'MR.', 'MEXICO CITY', 'MEXICO', 'REGULATORY/COMPLIANCE', 'PROJECT MANAGER', 'OTHER', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(71, 'PARTICIPANTE', 'elena.rodriguez.1@bbva.com', 'ELENA MARGARITA', 'RODRIGUEZ', 'ESCALONA', 'BBVA', 'ASSOCIATE PRODUCTO & MARKET INTELLIGENCE', 'TLALNEPANTLA DE BAZ', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', 'BBVA OPERADORA MEXICO, S.A. DE C.V.', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO'),
(72, 'PARTICIPANTE', 'mauricio.rubio@bbva.com', 'MAURICIO', 'RUBIO', '', 'BBVA', 'MD I&CS ASSET MANAGEMENT', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(73, 'PARTICIPANTE', 'channialaialexis.sanchez@bbva.com', 'CHANNI ALAI ALEXIS', 'SANCHEZ', 'SOUVERVIELLE', 'BBVA', 'RIESGO MERCADO', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'MI EMPRESA'),
(74, 'PARTICIPANTE', 'elmer.solano@bbva.com', 'ELMER', 'SOLANO', '', 'BBVA', 'SENIOR MANAGER PRODUCTOS DE AHORRO E INVERSIO', 'CDMX', 'MEXICO', 'OTHER', 'VENTAS DIGITALES', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(75, 'PARTICIPANTE', 'deliacarolina.soto@bbva.com', 'DELIA', 'SOTO', '', 'BBVA', 'DIRECTOR EJECUTIVO', 'CIUDAD DE MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', 'OTHER', 'BBVA', '', '', '', '', '', '', 'SPDJI EMAIL', 'PARTICIPACION EN EL EVENTO, PERO, TAMBIEN LLE'),
(76, 'PARTICIPANTE', 'miriampamela.soto@bbva.com', 'MIRIAM', 'SOTO', 'SOTO', 'BBVA', 'ASESOR DE ESTRUCTURACION DE CREDITO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ANALISTA FINANCIERO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(77, 'PARTICIPANTE', 'ederjair.vazquez@bbva.com', 'EDER JAIR', 'VAZQUEZ', 'HERNANDEZ', 'BBVA', 'ASSET MANAGEMENT', 'MEXICO', 'MEXICO', 'OTHER', 'QUANT MODELS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'TRABAJO'),
(78, 'PARTICIPANTE', 'dkilian@bbva.com', 'DANIELA', 'KILIAN', '', 'BBVA ASSET MANAGEMENT', 'CONTROL INTERNO', 'MEXICO CITY', 'MEXICO', 'REGULATORY/COMPLIANCE', 'FINANCIERO PRIVADO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'BBVA'),
(79, 'PARTICIPANTE', 'xavier.macias@bbva.com', 'XAVIER', 'MACIAS', 'RUBIO', 'BBVA ASSET MANAGEMENT', 'PM ACTIVOS TRADICIONALES & QUANT MODELS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'MIDDLE OFFICE', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'TRABAJO'),
(80, 'PARTICIPANTE', 'adrianna.morales@bbva.com', 'ADRIANNA EDYAMIN', 'MORALES', 'GONZALEZ', 'BBVA ASSET MANAGEMENT', 'ASSOCIATE', 'MEXICO', 'MEXICO', 'OTHER', 'DESARROLLO DE PRODUCTOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(81, 'PARTICIPANTE', 'martin.neumann@bbva.com', 'MARTIN', 'NEUMANN', '', 'BBVA ASSET MANAGEMENT', 'EJECUCION ASSET MANAGEMENT', 'CDMX', 'MEXICO', 'ASSET OWNER', 'BUY SIDE TRADER', '', '', 'OTHER', 'BBVA', '', '', '', '', '', '', 'OTHER', 'INVITE BBVA AM'),
(82, 'PARTICIPANTE', 'la.raygoza@bbva.com', 'LUIS', 'RAYGOZA', '', 'BBVA ASSET MANAGEMENT', 'VP GOVERNANCE', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', 'OTHER', 'ASSET MANAGEMENT', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(83, 'PARTICIPANTE', 'alvaronoel.solares@bbva.com', 'ALVARO', 'SOLARES', '', 'BBVA ASSET MANAGEMENT', 'VP PRODUCTO', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(84, 'PARTICIPANTE', 'lk.herrera@bbva.com', 'LIZETH KAREM', 'HERRERA', 'CEJA', 'BBVA MEXICO', 'VP RIESGOS FINANCIEROS', 'CDMX', 'MEXICO', 'OTHER', 'RIESGOS FINANCIEROS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(85, 'PARTICIPANTE', 'josejesusruben.lopez@bbva.com', 'RUBEN', 'LOPEZ', 'MARTINEZ', 'BBVA MEXICO', 'ASSOCIATE BUSINESS EXECUTION II', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'EMPLEADO BBVA', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(86, 'PARTICIPANTE', 'josemguel.ortega@bbva.com', 'JOSE MIGUEL', 'ORTEGA', '', 'BBVA MEXICO', 'BANQUERO PRIVADO UHN', 'GUADALAJARA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(87, 'PARTICIPANTE', 'aremymelissa.sanchez@bbva.com', 'AREMY MELISSA', 'SANCHEZ', 'CARDENAS', 'BBVA MEXICO', 'FIXED INCOME ANALYST', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(88, 'PARTICIPANTE', 'anakarenguadalupe.narvaez@bbva.com', 'ANA KAREN', 'NARVAEZ', '', 'BBVA SEGUROS', 'CONSULTOR RIESGOS FINANCIEROS', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(89, 'PARTICIPANTE', 'ediez@bdric.com', 'ERNESTO', 'DIEZ', '', 'BDR INVESTMENT CAPITAL', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(90, 'PARTICIPANTE', 'ubm1511@gmail.com', 'URIEL', 'BARRON', 'MONTAÑO', 'BE BLOCK', 'WEALTH MANAGEMENT ANALYST SR.', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(91, 'PARTICIPANTE', 'cadillac7056@hotmail.com', 'ELISA', 'GONZALEZ', 'SALDAÑA', 'BE BLOCK', 'WEALTH MANAGEMENT ANALYST SR.', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(92, 'PARTICIPANTE', 'abetancourt@finamex.com.mx', 'ALEJANDRO', 'BETANCOURT', 'GAONA', 'BEGA771118HDFTNL02', 'HEAD OF MARKET MAKING', 'CD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(93, 'PARTICIPANTE', 'fernanda.cosio@blackrock.com', 'FERNANDA', 'COSIO', '', 'BLACKROCK MEXICO', 'VICEPRESIDENTA, WEALTH MANAGEMENT', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(94, 'PARTICIPANTE', 'elsa.nunez@blackrock.com', 'ELSA', 'NUÑEZ', 'TOSCANO', 'BLACKROCK, INC.', 'DIRECTOR, RIESGOS', 'CDMX', 'MEXICO', 'OTHER', 'ASSET MANAGER', 'OTHER', 'OPERADORA DE FONDOS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(95, 'PARTICIPANTE', 'johanna.serna@blackrock.com', 'JOHANNA', 'SERNA', '', 'BLACKROCK, INC.', 'MARKETING ASSOCIATE', 'CDMX', 'MEXICO', 'OTHER', 'MARKETING', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'COMUNIDAD MEF'),
(96, 'PARTICIPANTE', 'acaballeroga@bloomberg.net', 'ANDRES', 'CABALLERO', '', 'BLOOMBERG', 'GERENTE COMERCIAL', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(97, 'PARTICIPANTE', 'malfaro@tecnoxia.com', 'MIRIAM', 'ALFATO', '', 'BMV', 'STAFF BMV', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(98, 'PARTICIPANTE', 'eamaro@tecnoxia.com', 'ERNESTO', 'AMARO', '', 'BMV', 'STAFF TECNOXIA', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(99, 'PARTICIPANTE', 'ngonzalez@grupobmv.com.mx', 'NAYELI', 'GONZALEZ', '', 'BMV', 'GERENTE DE CAPITALES', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(100, 'PARTICIPANTE', 'egonzalez@grupobmv.com.mx', 'EDGARDO', 'GONZALEZ', 'ENRIQUEZ', 'BMV', 'GERENTE', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(101, 'PARTICIPANTE', 'alopezp@grupobmv.com.mx', 'ADRIANA', 'LOPEZ', 'PEREZ', 'BMV', 'ESPECIALISTA EN SOPORTE A PRODUCTOS DE INFORM', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(102, 'PARTICIPANTE', 'amarin@grupobmv.com.mx', 'ABIMAEL', 'MARIN', 'ESCALANTE', 'BMV', 'SUBDIRECTOR DE VALUACION', 'MEXICO DF', 'MEXICO', 'OTHER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(103, 'PARTICIPANTE', 'smartinezm@grupobmv.com.mx', 'STEPHANI', 'MARTINEZ', '', 'BMV', 'ESPECIALISTA', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(104, 'PARTICIPANTE', 'amaya@grupobmv.com.mx', 'ALBERTO', 'MAYA', '', 'BMV', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'OTHER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'DIRECTAMENTE CON S&P'),
(105, 'PARTICIPANTE', 'emorales@tecnoxia.com', 'EDUARDO', 'MORALES', '', 'BMV', 'STAFF BMV', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(106, 'PARTICIPANTE', 'jolivo@grupobmv.com.mx', 'JUAN MANUEL', 'OLIVO', '', 'BMV', 'DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO'),
(107, 'PARTICIPANTE', 'vramirezp@grupobmv.com.mx', 'VERONICA', 'RAMIREZ', 'PASCUAL', 'BMV', 'MANAGER THE FIXED INCOME', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(108, 'PARTICIPANTE', 'crivera@grupobmv.com.mx', 'CYNTHIA', 'RIVERA', 'CANO', 'BMV', 'COMMUNITY MANAGER', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(109, 'PARTICIPANTE', 'orosas@tecnoxia.com', 'OSVALDO', 'ROSAS', '', 'BMV', 'STAFF BMV', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(110, 'PARTICIPANTE', 'matorres@grupobmv.com.mx', 'MIGUEL ANGEL', 'TORRES', '', 'BMV', 'DIRECTOR DE OPERACIONES', 'MEXICO DF', 'MEXICO', 'OTHER', 'DIRECTOR DE OPERACIONES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(111, 'PARTICIPANTE', 'rtunon@grupobmv.com.mx', 'ROCIO', 'TUÑON', '', 'BMV', 'SUBDIRECTORA DE PRODUCTOS DE INFORMACION', 'MEXICO CITY', 'MEXICO', 'OTHER', 'MARKET DATA', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(112, 'PARTICIPANTE', 'hsalas@bncr.fi.cr', 'HAZEL', 'SALAS', '', 'BN VITAL', 'GESTOR', 'NA', 'COSTA RICA', 'ASSET OWNER', '', '', '', 'OTHER', 'OPERADORA DE PENSIONES', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(113, 'PARTICIPANTE', 'karla.lopeztronco@bnpparibas.com', 'KARLA', 'LOPEZ', '', 'BNP AM', 'HEAD OF CREDIT', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(114, 'PARTICIPANTE', 'jovanny-hb@hotmail.com', 'JOVANNY', 'HERNANDEZ', '', 'BNP PARIBAS', 'FUND ACCOUNTING AND TAX ANALYST', 'HIDALGO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(115, 'PARTICIPANTE', 'ebalcells@grupobmv.com.mx', 'EDUARDO', 'BALCELLS', '', 'BOLSA DE MEXICANA DE VALORES (BMV)', 'GERENTE', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(116, 'PARTICIPANTE', 'slagunilla@grupobmv.com.mx', 'SAMUEL SAUL', 'LAGUNILLA', 'SALAS', 'BOLSA DE MEXICANA DE VALORES (BMV)', 'ESPECIALISTA RIESGOS', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(117, 'PARTICIPANTE', 'erodriguez@grupobmv.com.mx', 'EDUARDO', 'RODRIGUEZ', '', 'BOLSA DE MEXICANA DE VALORES (BMV)', 'SURVEILLANCE MANAGER', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(118, 'PARTICIPANTE', 'armandoacciones@gmail.com', 'ARMANDO', 'ECHEGOLLEN', '', 'BOLSA DESDE CERO', 'PROJECT LEADER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'ME COMPARTIERON LA INFORMACION'),
(119, 'PARTICIPANTE', 'adfernandez@grupobmv.com.mx', 'ANGELICA DANIELA', 'FERNANDEZ', 'GARZA', 'BOLSA MEXICANA DE VALORES', 'ESPECIALISTA MERCADO GLOBAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(120, 'PARTICIPANTE', 'alflores@grupobmv.com.mx', 'LEONARDO', 'FLORES', '', 'BOLSA MEXICANA DE VALORES', 'ANALISTA DE COMUNICACION CORPORATIVA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(121, 'PARTICIPANTE', 'cocampo@grupobmv.com.mx', 'CARLOS JESUS', 'OCAMPO', 'VARGAS', 'BOLSA MEXICANA DE VALORES', 'GERENTE EN COMUNICACION', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ORGANIZADOR'),
(122, 'PARTICIPANTE', 'xsanchez@grupobmv.com.mx', 'XIMENA', 'SANCHEZ', 'KEHR', 'BOLSA MEXICANA DE VALORES', 'GERENTE MERCADO GLOBAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(123, 'PARTICIPANTE', 'amartinezo@grupobmv.com.mx', 'JOSE ALEJANDRO', 'MARTINEZ', 'OROZCO', 'BOLSA MEXICANA DE VALORES SAB DE CV', 'ESPECIALISTA ASG', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(124, 'PARTICIPANTE', 'sgonzalezt@grupobmv.com.mx', 'SANTIAGO', 'GONZALEZ', 'TRILLO', 'BOLSA MEXICANA DE VALORES, S.A.B DE C.V', 'MARKET DATA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(125, 'PARTICIPANTE', 'asolis@grupobmv.com.mx', 'ALI', 'SOLIS', 'LUNA', 'BOLSA MEXICANA DE VALORES, S.A.B. DE C.V.', 'MARKET DATA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(126, 'PARTICIPANTE', 'mcastaneda@boltonbridgecapital.com', 'MARTIN', 'CASTAÑEDA', '', 'BOLTONBRIDGE CAPITAL', 'MP INVESTMENT BANKING / PRIVATE EQUITY', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'BANCA DE INVERSION', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(127, 'PARTICIPANTE', 'guillermo.delafuente@btgpactual.com', 'GUILLERMO', 'DE LA FUENTE', '', 'BTG PACTUAL GESTORA DE FONDOS S.A. DE C.V.', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(128, 'PARTICIPANTE', 'arfin.rsalas@gmail.com', 'ALDAIR', 'ROJAS', 'SALAS', 'CAMPEONES FINANCIEROS', 'ANALISTA FINANCIERO', 'COACALCO DE BERRIOZABAL', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(129, 'PARTICIPANTE', 'victorh.cortes@banorte.com', 'VICTOR', 'CORTES', '', 'CASA DE BOLSA BANORTE', 'ANALISTA TECNICO', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(130, 'PARTICIPANTE', 'jorge.lagunas.cortes@banorte.com', 'JORGE', 'LAGUNAS', 'CORTES', 'CASA DE BOLSA BANORTE', 'DIRECTOR PROMOCI?N CAPITALES', 'M?XICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(131, 'PARTICIPANTE', 'pablo.carrera.lopez@banorte.com', 'PABLO', 'CARRERA', 'LOPEZ', 'CASA DE BOLSA BANORTE, S.A. DE C.V.', 'DIRECTOR DE BANCA DE INVERSION', 'CIUDAD DE MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(132, 'PARTICIPANTE', 'mherrerag@finamex.com.mx', 'MARIANO', 'HERRERA', 'GUZMA', 'CASA DE BOLSA FINAMEX SAB DE CV', 'EQUITY SALES TRADER', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'MI ECONOMISTA PRINCIPAL NOS LO ENVIO A LA MES'),
(133, 'PARTICIPANTE', 'rreal@santander.com.mx', 'RICARDO', 'REAL', '', 'CASA DE BOLSA SANTANDER, S.A. DE C.V.', 'DIRECTOR FISCAL', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(134, 'PARTICIPANTE', 'ghernandezo@vepormas.com', 'GUSTAVO', 'HERNANDEZ', 'OCADIZ', 'CASA DE BOLSA VE POR MAS, S.A. DE C.V., RESEA', 'ANALISTA', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ANALISTA DE DATOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(135, 'PARTICIPANTE', 'francisco.esteva@cat.com', 'FRANCISCO', 'ESTEVA', '', 'CATERPILLAR', 'OFICIAL DE CUMPLIMIENTO', 'MONTERREY', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(136, 'PARTICIPANTE', 'dcjtorres@grupobmv.com.mx', 'DIEGO', 'JUAREZ', '', 'CCV', 'ANALISTA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COMPAÑERO DE TRABAJO'),
(137, 'PARTICIPANTE', 'prisma.yadira.huertascastillo@citibanamex.com', 'PRISMA', 'HUERTAS', '', 'CFA CHALLENGE 2016 MEXICO', 'ANALYST', 'MEXICO CITY', 'MEXICO', 'OTHER', 'ANALYST', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(138, 'PARTICIPANTE', 'adela.hernandez@chubb.com', 'ADELA', 'HERNANDEZ', 'GARCIA', 'CHUBB', 'CRO', 'CDMX', 'MEXICO', 'INSURANCE', 'SEGUROS', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'RISK', '', '', 'SPDJI EMAIL', ''),
(139, 'PARTICIPANTE', 'mocancino@cibolsa.com', 'MONICA', 'CANCINO', '', 'CI CASA DE BOLSA', 'INVERSIONES INSTITUCIONALES', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(140, 'PARTICIPANTE', 'opetrilli@cism.mx', 'OMAR', 'PETRILLI', 'MENA', 'CI CASA DE BOLSA', 'ASESOR EN ESTRATEGIAS DE INVERSION', 'PUEBLA', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(141, 'PARTICIPANTE', 'armendez@cibanco.com', 'ARIEL', 'MENDEZ', '', 'CIBANCO', 'ANALISTA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'ANALISTA BURSATIL', 'OTHER', 'ANALISTA BURSATIL', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(142, 'PARTICIPANTE', 'fegarcia@cimgroup.com', 'FERNANDO', 'GARCIA', '', 'CIM GROUP', 'AVP - LATAM INVESTOR RELATIONS', 'CA', 'UNITED STATES', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA'),
(143, 'PARTICIPANTE', 'ckulish@cima.com.ar', 'CAROLINA', 'KULISH', '', 'CIMA', 'FINANCIAL ADVISOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(144, 'PARTICIPANTE', 'jose.ramon.rojas@citibanamex.com', 'JOSE RAMON', 'ROJAS', '', 'CITI', 'INVESTMENT LAB', 'MEXICO CITY', 'MEXICO', 'INSURANCE', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', 'LIFE & ANNUITY', '', '', '', 'SPDJI EMAIL', ''),
(145, 'PARTICIPANTE', 'jose.ramon.depedroabascal@citi.com', 'JOSE RAMON', 'DE', 'PEDRO', 'CITIBANAMEX', 'INVESTMENT COUNSELOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(146, 'PARTICIPANTE', 'ricardo.lopez@citi.com', 'RICARDO', 'LOPEZ', '', 'CITIBANAMEX', 'INVESTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGIONAL BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVESCO'),
(147, 'PARTICIPANTE', 'jesus.manzanorubio@citi.com', 'JESUS', 'MANZANO', '', 'CITIBANAMEX', 'ADMINISTRADOR FIDUCIARIO', 'MEXICO', 'MEXICO', 'OTHER', 'CAPITAL MARKETS TRUST ADMIN', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(148, 'PARTICIPANTE', 'martin.manzoturegano@citi.com', 'MARTIN', 'MANZO', 'TUREGANO', 'CITIBANAMEX', 'ESPECIALISTA DE INVERSIONES Y PRODUCTO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(149, 'PARTICIPANTE', 'alberto.matamoros@citi.com', 'ALBERTO', 'MATAMOROS', '', 'CITIBANAMEX', 'OPS SPECIALIST', ' -CIUDAD DE MEXICO, D.F.', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(150, 'PARTICIPANTE', 'lidia.padilla@citibanamex.com', 'LIDIA', 'PADILLA', '', 'CITIBANAMEX', 'ANALYST', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', 'OTHER', 'BANCA PRIVADA Y PATRIMONIAL', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(151, 'PARTICIPANTE', 'cesar.rodrigo.sanchezrodriguez@citi.com', 'CESAR', 'SANCHEZ', '', 'CITIBANAMEX', 'ANALISTA DE INVERSIONES', 'CIUDAD DE MEXCO', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(152, 'PARTICIPANTE', 'salvador.vallejo@citibanamex.com', 'SALVADOR', 'VALLEJO', 'CALDERON', 'CITIBANAMEX', 'BANQUERO PRIVADO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(153, 'PARTICIPANTE', 'cortes@cmderivados.com', 'IRVING', 'CORTES', '', 'CMD', 'DG', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(154, 'PARTICIPANTE', 'cesarcote@cmdtrader.mx', 'CESAR DAVID', 'COTE', 'LOPEZ', 'CMD', 'DERIVATIVES TRADER', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(155, 'PARTICIPANTE', 'ljacobi@cmderivados.com', 'LEONARDO', 'JACOBI', 'ZARCO', 'CMD', 'DIRECTOR ASOCIADO', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(156, 'PARTICIPANTE', 'arobles@cmdtrader.mx', 'ALAN', 'ROBLES', '', 'CMD', 'HEAD OF TRADERS', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(157, 'PARTICIPANTE', 'derek.rod.bri@gmail.com', 'DEREK', 'RODRIGUEZ', '', 'CMD TRADER', 'BECARIO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'COMPAÑEROS QUE ASISTIRAN'),
(158, 'PARTICIPANTE', 'jorge.alegria@cmegroup.com', 'JORGE', 'ALEGRIA', '', 'CME GROUP', 'INTERNATIONAL MARKETS DEVELOPMENT - LATAM', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(159, 'PARTICIPANTE', 'cesar.alejandre@kof.com.mx', 'CESAR', 'ALEJANDRE', '', 'COCA COLA FEMSA', 'PORTOFOLIO MANAGER', 'CDMX', 'MEXICO', 'OTHER', 'ALIMENTOS Y BEBIDAS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(160, 'PARTICIPANTE', 'produccion@cocomkt.com', 'JUAN FRANCISCO', 'LECONA', 'ALONSO', 'COCOMKT', 'STAFF', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(161, 'PARTICIPANTE', 'laura.gonzalez1@coface.com', 'LAURA', 'GONZALEZ', '', 'COFACE', 'RISK OFFICER MEXICO', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', '', '', '', 'SPDJI EMAIL', ''),
(162, 'PARTICIPANTE', 'hcabello@columbus.mx', 'HECTOR', 'CABELLO', '', 'COLUMBUS', 'AFI', 'MEXICO DF', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(163, 'PARTICIPANTE', 'arivera@columbus.mx', 'ALEJANDRA', 'RIVERA', '', 'COLUMBUS', 'ANALISTA DE CREDITO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(164, 'PARTICIPANTE', 'jvarela@columbus.mx', 'JESSICA', 'VARELA', '', 'COLUMBUS', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'AMAI'),
(165, 'PARTICIPANTE', 'mralarcon@columbus.mx', 'MARIA ROSA', 'ALARCON', '', 'COLUMBUS DE MEXICO', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(166, 'PARTICIPANTE', 'dmaya@columbus.mx', 'DANIEL', 'MAYA', 'GARCIA', 'COLUMBUS DE MEXICO', 'ANALYST', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(167, 'PARTICIPANTE', 'drosendo@columbus.mx', 'LOLA', 'ROSENDO', '', 'COLUMBUS DE MEXICO S.A. DE C.V.', 'PROMOTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(168, 'PARTICIPANTE', 'eaguilar@cnbv.gob.mx', 'ERNESTO', 'AGUILAR', 'CAYETANO', 'COMISION NACIONAL BANCARIA Y DE VALORES', 'LICENCIADO', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(169, 'PARTICIPANTE', 'malu@sumamx.com', 'LUZ MARIA', 'LOPEZ', 'PORTILLO', 'CONCIENCIA FINANCIERA', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(170, 'PARTICIPANTE', 'ALE_AMADOR@YAHOO.COM', 'ALEJANDRA', 'AMADOR', '', 'CONECTA PENSION', 'DIRECCION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'WEB'),
(171, 'PARTICIPANTE', 'luis@congrexpo.mx', 'LUIS', 'LOPEZ', '', 'CONGREXPO', 'DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'PRODUCTOR DE EVENTOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'MARKETING'),
(172, 'PARTICIPANTE', 'valvis@cpcerano.com.mx', 'VERONICA', 'ALVIS', '', 'CP CERANO', 'RIESGO', 'CERANO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(173, 'PARTICIPANTE', 'valentina.villa@creel.mx', 'VALENTINA', 'VILLA', '', 'CREEL, GARCIA-CUELLAR, AIZA Y ENRIQUEZ', 'COUNSEL', 'CDMX', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'NEWSLETTER CMFS'),
(174, 'PARTICIPANTE', 'giovanni.garrido@creel.mx', 'GIOVANNI', 'RAMIREZ', 'GARRIDO', 'CREEL, GARCIA-CUELLAR, AIZA Y ENRIQUEZ', 'SOCIO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'LEGAL', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(175, 'PARTICIPANTE', 's.vielma@dannumcapital.com', 'SEBASTIAN', 'VIELMA', '', 'DANNUM CAPITAL', 'PORTFOLIO MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(176, 'PARTICIPANTE', 'aortegav@dentegramx.com', 'ANA BERTHA', 'ORTEGA', 'VEGA', 'DENTEGRA SEGUROS DENTALES, S.A.', 'GERENTE', 'HACIENDA DE SANTA CECILIA NO. 192 COL. VILLA ', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'HEALTH', '', '', '', 'SPDJI EMAIL', ''),
(177, 'PARTICIPANTE', 'isa65@ifastnet1.com', 'MAUD JACOBS', 'BAKKER', '', 'DIJK BV', 'INDUSTRIAL', 'VEENHOEK', 'FRENCH GUIANA', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(178, 'PARTICIPANTE', 'mmauleon@inverso.mx', 'MAURO', 'MAULEON', '', 'DIRECTOR DE INVERSIONES', 'SENIOR PORTFOLIO MANAGER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(179, 'PARTICIPANTE', 'jr@julioruelas.com', 'JULIO', 'RUELAS', '', 'DIRG SC', 'GESTOR DE ACTIVOS', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(180, 'PARTICIPANTE', 'cmartinezc@gbm.com.mx', 'CESAR', 'MARTINEZ', 'CONSTANTINO', 'DISTRITO FINANCIERO', 'ASESOR FINANCIERO AFILIADO', 'PUEBLA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'A TRAVES DE GBM'),
(181, 'PARTICIPANTE', 'gmolina@inversores.com.mx', 'GERARDO', 'MOLINA', '', 'DMOS INVERSORES', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(182, 'PARTICIPANTE', 'jcramirez@inversores.com.mx', 'JUAN CARLOS', 'RAMIREZ', '', 'DMOS INVERSORES', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE INVESCO'),
(183, 'PARTICIPANTE', 'fer.3.fernandez.l@gmail.com', 'MARIA FERNANDA', 'FERNANDEZ', 'LOPEZ', 'DSM3 CONTROL AND AUTOMATION ADVANCED ENGINEER', 'DIRECTORA GENERAL', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR UN CONOCIDO QUE TRABAJA EN LA BMV'),
(184, 'PARTICIPANTE', 'luisa@ecovalores.org', 'LUISA', 'MONTES', '', 'ECOVALORES', 'CEO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'ESG ANALISYS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(185, 'PARTICIPANTE', 'roberto.barrera@tec.mx', 'ROBERTO R.', 'BARRERA', '', 'EGADE BUSINESS SCHOOL', 'GRADUATE PROFESSOR', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', 'INVESTIGADOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(186, 'PARTICIPANTE', 'cntct@mpwrd.com.mx', 'FABIAN', 'MUNGUIA', 'GARCIA', 'EMPOWERED MEXICO', 'DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(187, 'PARTICIPANTE', 'ptiburcio@crecimientoexponencial.com', 'PEDRO', 'TIBURCIO', '', 'ESCUELA DE INVERSIONES', 'ANALISTA', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(188, 'PARTICIPANTE', 'junioralfredomartinezhernandez@gmail.com', 'JUNIOR ALFREDO', 'MARTINEZ', 'HERNANDEZ', 'ESTRATEGIA BASADA EN EVIDENCIA, S.A.S.', 'INVESTIGADOR', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(189, 'PARTICIPANTE', 'diana.guerrero@eticayestrategia.mx', 'DIANA', 'GUERRERO', '', 'ETICA Y ESTRATEGIA CONSULTORES SC', 'COO', 'CHIHUAHUA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(190, 'PARTICIPANTE', 'milleroeduardo@gmail.com', 'EDUARDO', 'MILLER', '', 'EXI OPERADORA QUANTUM', 'INFRASTRUCTURE', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(191, 'PARTICIPANTE', 'ramon.leal@eztellum.com', 'RAMON', 'LEAL', '', 'EZTELLUM', 'SOCIO', 'MONTERREY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(192, 'PARTICIPANTE', 'egiraltd@gbm.com.mx', 'EDUARDO', 'GIRALT', '', 'FACE / GBM', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(193, 'PARTICIPANTE', 'contacto@ferreconexiones.com', 'ARNULFO JOSUE', 'GANTE', 'ORROSTIETA', 'FERRECONEXIONES', 'ASESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(194, 'PARTICIPANTE', 'rec2@fianscapital.com.mx', 'MARIA EUGENIA', 'SIDAOUI', '', 'FIANS CAPITAL', 'SOCIO DIRECOTR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(195, 'PARTICIPANTE', 'gabriel.flores@fianzasatlas.com', 'GABRIEL', 'FLORES', '', 'FIANZAS Y CAUCIONES ATLAS', 'TESORERIA', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'OTHER', 'ASEGURADORA', '', '', 'SPDJI EMAIL', ''),
(196, 'PARTICIPANTE', 'kmora@fibrauno.mx', 'KAREN', 'MORA', '', 'FIBRA UNO', 'SUSTAINABILITY DIRECTOR', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(197, 'PARTICIPANTE', 'areyesv@fiduoccidente.com.co', 'ANA', 'REYES', '', 'FIDUCIARIA OCCIDENTE', 'ANALISTA DE PORTAFOLIO', 'BOGOTA', 'COLOMBIA', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(198, 'PARTICIPANTE', 'ocorzod@finamex.com.mx', 'OSMAR', 'CORZO', 'DIAZ', 'FINAMEX', 'EQUITY SALES TRADER', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(199, 'PARTICIPANTE', 'oroldan@acercate.org.mx', 'OLIVER', 'ROLDAN', '', 'FINANCIERA ACERCATE', 'DIRECTOR', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'PERIODICO'),
(200, 'PARTICIPANTE', 'cfernandez@finantech.com.mx', 'CARLOS', 'FERNANDEZ', '', 'FINANTECH', 'ANALYST', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(201, 'PARTICIPANTE', 'cmeneses@finantech.com.mx', 'CARLOS CESAR', 'MENESES', 'TEROBA', 'FINANTECH', 'ANALISTA DE MERCADO DE CAPITALES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(202, 'PARTICIPANTE', 'fgutierrez@finarq.mx', 'FRANCISCO JAVIER', 'GUTIERREZ', 'ALVAREZ', 'FINARQ SC', 'CEO', 'GUADALAJARA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'TWITTER', ''),
(203, 'PARTICIPANTE', 'CECILIA.BARRERA@MULTIVA.COM.MX', 'CECILIA', 'BARRERA', '', 'FONDOS DE INVERSION MULTIVA S.A. DE C.V.', 'PRODUCTOS FONDOS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(204, 'PARTICIPANTE', 'georgina.ruiz@multiva.com.mx', 'GEORGINA', 'RUIZ', '', 'FONDOS DE INVERSION MULTIVA S.A. DE C.V.', 'SUBDIRECTOR DE ESTRATEGIA', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(205, 'PARTICIPANTE', 'marco.garcia@franklintempleton.com', 'MARCO', 'GARCIA', '', 'FRANKLIN TEMPLETON', 'IW', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(206, 'PARTICIPANTE', 'aline.wright@franklintempleton.com', 'ALINE', 'WRIGHT', '', 'FRANKLIN TEMPLETON', 'MKT', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'MKT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(207, 'PARTICIPANTE', 'alinewrighttrejo@gmail.com', 'ALINE', 'WRIGHT', 'TREJO', 'FRANKLIN TEMPLETON', 'MKT MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'MKT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '');
INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`) VALUES
(208, 'PARTICIPANTE', 'juancarlos.leyva@franklintempleton.com', 'JUAN', 'LEYVA', '', 'FRANKLIN TEMPLETON INVESTMENTS CORP.', 'SALES EXEC', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ERIKA ME INVITO PERSONALMENTE Y ME PROMETIO E'),
(209, 'PARTICIPANTE', 'veytia@teleton.org.mx', 'MARCO', 'VEYTIA', '', 'FUNDACION TELETON MEXICO', 'SUBDIRECTOR DE INVERSIONES', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(210, 'PARTICIPANTE', 'jmucino@gaf.com.mx', 'JOSE ANTONIO', 'MUCIÑO', 'SANCHEZ', 'GAF OPERADORA, S.A. DE C.V.', 'DIRECTOR DE CONTROL OPERATIVO', 'MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(211, 'PARTICIPANTE', 'palducin@gbm.com.mx', 'AMANDO', 'ALDUCIN', '', 'GBM', 'ASESOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(212, 'PARTICIPANTE', 'cwoodworth@gbm.com.mx', 'CARLOS', 'ANDRADE', 'PRADILLO', 'GBM', 'DIRECTOR', 'CD MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'FWOD', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(213, 'PARTICIPANTE', 'mbalcazar@gbm.com.mx', 'MA ELENA', 'BALCAZAR', 'REGALADO', 'GBM', 'ASESOR FINANCIERO AFILIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(214, 'PARTICIPANTE', 'sbarrera@gbm.com.mx', 'SONIA', 'BARRERA', 'LOPEZ', 'GBM', 'SUBDIRECTOR IS', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GBM', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(215, 'PARTICIPANTE', 'labecerrilm@gbm.com.mx', 'LUIS ANGEL', 'BECERRIL', 'MUÑOZ', 'GBM', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO DE TERCERO'),
(216, 'PARTICIPANTE', 'efcardenasb@gbm.com.mx', 'EDGAR', 'CARDENAS', 'BELTRAN', 'GBM', 'EXECUTIVE RELATIONSHIP', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE GBM'),
(217, 'PARTICIPANTE', 'ecelorio@gbm.com', 'ENRIQUE', 'CELORIO', 'BALMORI', 'GBM', 'ASESOR FINANCIERO A.', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(218, 'PARTICIPANTE', 'rchavezv@gbm.com.mx', 'RODRIGO', 'CHAVEZ', 'VELAZQUEZ', 'GBM', 'PORTFOLIO MANAGER', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(219, 'PARTICIPANTE', 'rifernandezg@gbm.com.mx', 'RODOLFO', 'FERNANDEZ', '', 'GBM', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(220, 'PARTICIPANTE', 'aferruscag@gbm.com', 'ALBERTO', 'FERRUSCA', 'GARCIA', 'GBM', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(221, 'PARTICIPANTE', 'jfigueroas@gbm.com', 'JOEL', 'FIGUEROA', '', 'GBM', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(222, 'PARTICIPANTE', 'egomezd@gbm.com.mx', 'EDUARDO', 'GOMEZ', 'DE LA GARZA', 'GBM', 'ASESOR FINANCIERO ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MEDIO DE GBM ADVISORS'),
(223, 'PARTICIPANTE', 'magongorar@gbm.com', 'MARIO ALEJANDRO', 'GONGORA', 'RIVERA', 'GBM', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(224, 'PARTICIPANTE', 'idgonzalez@gbm.com.mx', 'IVAN', 'GONZALEZ', '', 'GBM', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', 'INVITACION', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(225, 'PARTICIPANTE', 'ragonzalezv@gbm.com', 'RAMON ALEJANDRO', 'GONZALEZ', 'VEGA', 'GBM', 'ASESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(226, 'PARTICIPANTE', 'ajgutierrez@gbm.com.mx', 'JORGE', 'GUTIERREZ', '', 'GBM', 'GERENTE', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(227, 'PARTICIPANTE', 'jamartinez@gbm.com.mx', 'JUAN', 'MARTINEZ', '', 'GBM', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GBM', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(228, 'PARTICIPANTE', 'hsmartinez@gbm.com', 'HUGO', 'MARTINEZ', 'CAMPOS', 'GBM', 'AFAS SUCCESS ASSOCIATE', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'GESTOR DE ASESORES', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION INTERNA GBM'),
(229, 'PARTICIPANTE', 'jmonroy@gbm.com.mx', 'JESUS', 'MONROY', 'LARRAURI', 'GBM', 'ASESOR FINANCIERO SR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'GBM', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(230, 'PARTICIPANTE', 'laramirezo@gbm.com.mx', 'LUIS ADRIAN', 'RAMIREZ', 'ORTIZ', 'GBM', 'ADVISOR', 'HUIXQUILUCAN', 'MEXICO', 'EXCHANGE', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(231, 'PARTICIPANTE', 'lsantiagor@gbm.com.mx', 'LUIS', 'SANTIAGO', 'ROMERO', 'GBM', 'ASESOR ESPECIALIZADO EN INVERSIONES', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(232, 'PARTICIPANTE', 'esoto@efin.com.mx', 'ASESORES PROFESIONALES EN', 'SC', '', 'GBM', 'ASESOR FINANCIERO', 'BENITO JUAREZ', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'GBM', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(233, 'PARTICIPANTE', 'jasomozag@gbm.com.mx', 'JOSE ANGEL', 'SOMOZA', '', 'GBM', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GLOBAL X'),
(234, 'PARTICIPANTE', 'iesosa@gbm.com.mx', 'IGNACIO ENRIQUE', 'SOSA', '', 'GBM', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION GBM'),
(235, 'PARTICIPANTE', 'esotoagu@gbm.com.mx', 'ELIZABETH', 'SOTO', 'A.', 'GBM', 'ASESOR', 'COYOACAN', 'MEXICO', 'OTHER', 'ASESOR FINANCIERO', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ALICIA ARIAS   EN  GBM'),
(236, 'PARTICIPANTE', 'rtinajero@gbm.com.mx', 'RICARDO', 'TINAJERO', 'POZOS', 'GBM', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(237, 'PARTICIPANTE', 'rvillazevallosr@gbm.com.mx', 'RODOLFO', 'VILLA', 'ZEVALLOS RODRIGUEZ', 'GBM', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'EN MI EMPRESA'),
(238, 'PARTICIPANTE', 'evillalobos@gbm.com.mx', 'ERICK', 'VILLALOBOS', '', 'GBM', 'DIRECTOR GBM ADVISORY', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(239, 'PARTICIPANTE', 'avillarruel@gbm.com', 'ARACELI', 'VILLARRUEL', 'ARANA', 'GBM', 'AFAS', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE ALICIA ARIAS'),
(240, 'PARTICIPANTE', 'aarguellesg@gbm.com.mx', 'ALEJANDRO', 'ARGÜELLES', 'GONZALEZ', 'GBM / FACE FINANCIAL ADVISORS', 'ASESOR FINANCIERO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(241, 'PARTICIPANTE', 'mamendezch@gbm.com', 'MIGUEL ANGEL', 'MENDEZ', 'CHAVERO', 'GBM CASA DE BOLSA', 'FINANCIAL ADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE GBM CASA DE BOLSA'),
(242, 'PARTICIPANTE', 'jdaldanac@gbm.com.mx', 'JESUS DAVID', 'ALDANA', '', 'GBM GRUPO BURSATIL MEXICANO', 'AFA', 'CULIACAN', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(243, 'PARTICIPANTE', 'econtrerasl@gbm.com.mx', 'EDUARDO', 'CONTRERAS', '', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO AFILIADO', 'LEON', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(244, 'PARTICIPANTE', 'ogonzalezp@gbm.com.mx', 'OSCAR', 'GONZALEZ', '', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO ASOCIADO', 'QUERETARO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(245, 'PARTICIPANTE', 'jclopez@gbm.com.mx', 'JORGE CARLOS', 'LOPEZ', 'CRUZ', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(246, 'PARTICIPANTE', 'laolivase@gbm.com.mx', 'LUIS ALEJANDRO', 'OLIVAS', 'ENRIQUEZ', 'GBM GRUPO BURSATIL MEXICANO', 'SOCIO FUNDADOR NOVA GBM', 'CHIHUAHUA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(247, 'PARTICIPANTE', 'rtinajero@gbm.com', 'RICARDO', 'TINAJERO', '', 'GBM GRUPO BURSATIL MEXICANO', 'ASESOR FINANCIERO', 'MEXICO', 'MEXICO', 'EXCHANGE', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(248, 'PARTICIPANTE', 'daniel.suarez@genommalab.com', 'DANIEL', 'SUAREZ', '', 'GENOMMA LAB INTERNACIONAL SAB DE CV', 'RELACION CON INVERSIONISTAS', 'NAUCALPAN DE JUAREZ', 'MEXICO', 'INDIVIDUAL INVESTOR', 'COMPANY EMPLOYEE', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(249, 'PARTICIPANTE', 'dguiza@globalxetfs.com', 'DIANA', 'GUIZA', '', 'GLOBAL X', 'PRODUCT SPECIALIST', 'NEW YORK', 'UNITED STATES', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'ESTAMOS PARTICIPANDO COMO COLABORADORES'),
(250, 'PARTICIPANTE', 'sgallo@globalxetfs.com', 'SEBASTIAN', 'GALLO', '', 'GLOBAL X ETFS', 'INVESTMENT CONSULTANT', 'BOGOTA', 'COLOMBIA', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'GLOBAL X ETFS FORMA PARTE DEL EVENTO.'),
(251, 'PARTICIPANTE', 'ftorres@globalxetfs.com', 'FEDERICO', 'TORRES', 'GRAJALES', 'GLOBAL X ETFS', 'SVP, HEAD OF LATINAMERICAN SALES.', 'BOGOTA', 'COLOMBIA', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(252, 'PARTICIPANTE', 'diego.gonzalezg@gs.com', 'DIEGO', 'GONZALEZ', '', 'GOLDMAN SACHS CASA DE BOLSA S.A. DE C.V.', 'SALES ASSOCIATE', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'GOLDMAN SACHS', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(253, 'PARTICIPANTE', 'jpartida@good-grip.com', 'JORGE', 'PARTIDA', 'REYES', 'GOOD GRIP EXECUTIVE TRAINING', 'FOUNDER', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONOCIDO'),
(254, 'PARTICIPANTE', 'diej4cob@duystars.com.mx', 'JUAN DIEGO', 'JACOBO', 'HERNANDEZ', 'GOOGLE LLC', 'DEVERLOPER', 'LEON', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(255, 'PARTICIPANTE', 'kzhurtador@sapv.com.mx', 'KAREN', 'HURTADO', 'ROMERO', 'GPV', 'ANALISTA DE FINANZAS CORPORATIVAS Y RI', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', 'COMPAÑERO DE TRABAJO'),
(256, 'PARTICIPANTE', 'crosales@mobilityado.com', 'CARLOS', 'GUTIERREZ', '', 'GRUPO ADO', 'CIO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', 'OTHER', 'CORPORACION', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(257, 'PARTICIPANTE', 'jose@ainbinder.com.mx', 'JOSE', 'AINBINDER', '', 'GRUPO AINBINDER AGENTE DE SEGUROS SA DE CV', 'CEO', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', 'FINANCIAL ADVISOR', '', 'LIFE & ANNUITY', '', '', '', 'SPDJI EMAIL', ''),
(258, 'PARTICIPANTE', 'pdiez@grupobmv.com.mx', 'PEDRO', 'DIEZ', '', 'GRUPO BMV', 'VIGILANCIA DE MERCADOS', 'MEXICO CITY', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(259, 'PARTICIPANTE', 'gesquivel@grupobmv.com.mx', 'PAVEL', 'ESQUIVEL', '', 'GRUPO BMV', 'VP INDICES & STATISTICS', 'MEXICO CITY', 'MEXICO', 'EXCHANGE', '', 'OTHER', 'FINANCE', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(260, 'PARTICIPANTE', 'ammoreno@grupobmv.com.mx', 'ADRIANA', 'MARTINEZ', 'MORENO', 'GRUPO BMV', 'GERENTE DE SOPORTE', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(261, 'PARTICIPANTE', 'nrayo@grupobmv.com.mx', 'NANCY', 'RAYO', '', 'GRUPO BMV', 'ESPECIALISTA MARKET DATA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'DIRECTO BMV'),
(262, 'PARTICIPANTE', 'emadero@grupobmv.com.mx', 'SANTIAGO', 'MADERO', '', 'GRUPO BOLSA MEXICANA', 'ANALISTA MERCADO GLOBAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(263, 'PARTICIPANTE', 'rcarinoc@grupobmv.com.mx', 'ROSALINDA', 'CONTRERAS', 'CARIÑO', 'GRUPO BOLSA MEXICANA DE VALORES', 'MARKET DATA SPECIALIST AT MEXICAN STOCK EXCHA', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(264, 'PARTICIPANTE', 'argomezs@gbm.com', 'ROMINA', 'GOMEZ', 'SILVA', 'GRUPO BURSATIL MEXICANO', 'VP EXPANSION ASESORES AFILIADOS', 'MEXICO CITY', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DIRECTA S&P'),
(265, 'PARTICIPANTE', 'jmarceod@gbm.com', 'JOSE MARIANO', 'ARCEO', 'DIAZ', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(266, 'PARTICIPANTE', 'arturo.dorantes.chavez@gmail.com', 'ARTURO', 'DORANTES', 'CHAVEZ', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(267, 'PARTICIPANTE', 'pgutierreza@gbm.com', 'PIERO', 'GUTIERREZ', '', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(268, 'PARTICIPANTE', 'aramirezpaulin@gmail.com', 'ALEJANDRO', 'RAMIREZ', '', 'GRUPO BURSATIL MEXICANO GBM', 'FINANCIAL ADVISOR', 'HUIXQUILUCAN', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(269, 'PARTICIPANTE', 'mmhernandezi@gbm.com.mx', 'MONICA', 'HERNANDEZ', '', 'GRUPO BURSATIL MEXICANO, S.A. DE C.V., CASA D', 'ASESOR EN ESTRATEGIAS DE INVERSION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(270, 'PARTICIPANTE', 'iaceves@gbm.com.mx', 'ISRAEL', 'ACEVES', '', 'GRUPO CARIM', 'AFA', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(271, 'PARTICIPANTE', 'smiramontes@corde.com.mx', 'SALVADOR', 'MIRAMONTES', '', 'GRUPO CORDE ASESORES', 'PM', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(272, 'PARTICIPANTE', 'fcampos@aserta.com', 'MARIA FERNANDA', 'CAMPOS', 'MORENO', 'GRUPO FINANCIERO ASERTA', 'ANALISTA TESORERIA', 'PERIFERICO SUR 4829', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(273, 'PARTICIPANTE', 'alrodriguez@aserta.com', 'ALEJANDRO', 'RODRIGUEZ', '', 'GRUPO FINANCIERO ASERTA', 'DIRECTOR DE INVERSIONES', 'PERIFERICO SUR 4829', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(274, 'PARTICIPANTE', 'hgonzaleza@inbursa.com', 'HECTOR CLEMENTE', 'GONZALEZ', 'ARREDONDO', 'GRUPO FINANCIERO INBURSA', 'GERENTE FISCAL', 'MEXICO CITY', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(275, 'PARTICIPANTE', 'eizurietam@inbursa.com', 'MAURICIO', 'IZURIETA', 'MARTINEZ', 'GRUPO FINANCIERO INBURSA, S.A.B. DE C.V.', 'ANALISTA SR BURS?TIL', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(276, 'PARTICIPANTE', 'arodriguez@mvalores.fi.cr', 'ADRIAN', 'RODRIGUEZ', '', 'GRUPO FINANCIERO MERCADO DE VALORES DE COSTA ', 'ANALISTA DE INVERSIONES RESPONSABLES', 'SAN JOSE', 'COSTA RICA', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(277, 'PARTICIPANTE', 'hjasso83@gmail.com', 'HUGO', 'JASSO', '', 'GRUPO GMI OFICIAL', 'HEAD OF FP&A', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(278, 'PARTICIPANTE', 'bochoa@igs.com.mx', 'BARBARA', 'OCHOA', 'WOODWORTH', 'GRUPO IGS', 'CEO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(279, 'PARTICIPANTE', 'usalas@ginversion.com', 'ULISES', 'SALAS', '', 'GRUPO INVERSION', 'GERENTE DE ADMINISTRACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(280, 'PARTICIPANTE', 'eportillo@mrp.com.mx', 'EDUARDO', 'PORTILLO', '', 'GRUPO MRP', 'GERENTE COMPLIANCE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(281, 'PARTICIPANTE', 'pcarrancom@sapv.com.mx', 'PEDRO', 'CARRANCO', 'MARTINEZ', 'GRUPO PEÑA VERDE', 'ESPECIALISTA DE INVERSIONES', 'CDMX', 'MEXICO', 'INSURANCE', 'INDICES', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', ''),
(282, 'PARTICIPANTE', 'emorenob@sapv.com.mx', 'ELLIS', 'MORENO', '', 'GRUPO PEÑA VERDE', 'ANALISTA DE INVERSIONES', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', ''),
(283, 'PARTICIPANTE', 'avillalobosj@gseguros.com.mx', 'ABRAHAM', 'VILLALOBOS', '', 'GRUPO PEÑA VERDE', 'ANALISTA ACTIVOS ALTERNATIVOS', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(284, 'PARTICIPANTE', 'mslater@vepormas.com', 'MARIAN', 'SLATER', '', 'GRUPO VE POR MAS', 'GERENTE DE ADMINISTRACION DE PORTAFOLIOS', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(285, 'PARTICIPANTE', 'jonathan.saucedo@hdi.com.mx', 'JONAHTAN', 'SAUCEDO', '', 'HDI SEGUROS', 'INVESTMENT MANAGER', 'LEON', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'AMIS', '', '', 'SPDJI EMAIL', ''),
(286, 'PARTICIPANTE', 'marilu.rodriguez@hdi.com.mx', 'MARILU', 'RODRIGUEZ', '', 'HDI SEGUROS SA DE CV', 'COORDINADORA DE INVERSIONES', 'LEON', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'DAÑOS', '', '', 'SPDJI EMAIL', ''),
(287, 'PARTICIPANTE', 'salvador@hidalgoconsultores.net', 'SALVADOR', 'HIDALGO', '', 'HIDALGO CONSULTORES, S.A. DE C.V.', 'CEO', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'CONSULTANT', 'CONSEJERO', '', '', 'SPDJI EMAIL', ''),
(288, 'PARTICIPANTE', 'A01378063@tec.mx', 'PAULINA', 'CALVILLO', '', 'HSBC', 'SENIOR ANALYST', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR UN GRUPO DE FINANZAS'),
(289, 'PARTICIPANTE', 'alberto1.gonzalez@hsbc.com.mx', 'ALBERTO', 'GONZALEZ', 'LUNA', 'HSBC', 'BANQUERO PRIVADO', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DE UN AMIGO DEL BANCO'),
(290, 'PARTICIPANTE', 'jaime.saborio@hsbc.com.mx', 'JAIME', 'SABORIO', '', 'HSBC', 'HEAD OF MEXICO ETF & INDEXING SALES', 'CDMX', 'MEXICO', 'OTHER', 'ETF PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(291, 'PARTICIPANTE', 'jesus.zamudio@hsbc.com.mx', 'JESUS', 'ZAMUDIO', '', 'HSBC', 'RM', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION DIRECTA'),
(292, 'PARTICIPANTE', 'maria.garciaz@hsbc.com.mx', 'MARIA DEL CARMEN', 'GARCIA', 'ZOBERANI', 'HSBC ASSET MANAGEMENT', 'HEAD VENTAS INSTITUCIONALES', 'CDMX', 'MEXICO', 'OTHER', 'GESTION DE INVERSIONES', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(293, 'PARTICIPANTE', 'ana.paula.montano@hsbc.com.mx', 'ANA PAULA', 'MONTAÑO', 'MEDINA MORA', 'HSBC ASSET MANAGEMENT GLOBAL', 'LAM CHIEF RISK OFFICER', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'ASSET MANAGER', '', '', '', '', '', '', 'OTHER', 'INVITACION DE EQUIPO INTERNO'),
(294, 'PARTICIPANTE', 'mayte.rico@hsbc.com.mx', 'MAYTE', 'RICO', '', 'HSBC ASSET MANAGEMENT MEXICO', 'CHIEF INVESTOR OFFICER', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA'),
(295, 'PARTICIPANTE', 'adriana@estrategiasustentable.com.mx', 'ADRIANA', 'PULIDO', 'SANDOVAL', 'ILUNKA, ESTRATEGIA SUSTENTABLE', 'FUNDADORA', 'CDMX', 'MEXICO', 'OTHER', 'CONSEJERA', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(296, 'PARTICIPANTE', 'hsandoval@hsoinversiones.com', 'HERIBERTO', 'SANDOVAL', 'OLMEDO', 'INCREASE KAPITAL', 'ASESOR EN INVERSIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(297, 'PARTICIPANTE', 'rodriguez_26089@univdep.edu.mx', 'JOSE MAURICIO', 'RODRIGUEZ', 'ANDRADE', 'INDEPENDIENTE', 'INDEPENDIENTE', 'CDMX', 'MEXICO', 'OTHER', 'ESTUDIANTE', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(298, 'PARTICIPANTE', 'gabriela_soriano@ciencias.unam.mx', 'GABRIELA', 'SORIANO', 'SERRANO', 'INDEPENDIENTE', 'INVERSIONISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(299, 'PARTICIPANTE', 'jessica.soriano@comunidad.unam.mx', 'JESSICA', 'SORIANO', 'SERRANO', 'INDEPENDIENTE', 'INVERSIONISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(300, 'PARTICIPANTE', 'joelsotof@pacifico.com.pe', 'JOEL', 'SOTO', 'FLORES', 'INDEPENDIENTE', 'CONSULTOR', 'LIMA', 'PERU', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(301, 'PARTICIPANTE', 'agarza@grupobmv.com.mx', 'ALEJANDRO', 'GARZA', '', 'INDEVAL GRUPO BMV', 'DIRCTOR COMERCIAL Y PRODUCTO', 'CDMX', 'MEXICO', 'OTHER', 'DEPOSITARIO CSD', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(302, 'PARTICIPANTE', 'hibarra@profi-mex.com', 'ARMANDO', 'IBARRA', '', 'INDIVIDUAL', 'PUBLICO', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'EL UNIVERSAL'),
(303, 'PARTICIPANTE', 'roberto_urena@penoles.com.mx', 'ROBERTO', 'URENA', '', 'INDUSTRIAS PEÑOLES, S.A.B. DE C.V.', 'ESPECIALISTA DE ESTRUCTURACION FINANCIERA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ANALISTA FINANCIERO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(304, 'PARTICIPANTE', 'ogonzalez@infonavit.org.mx', 'OMAR', 'GONZALEZ', 'MOTA', 'INFONAVIT', 'CONSULTOR', 'CDMX', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(305, 'PARTICIPANTE', 'ucastro@infonavit.org.mx', 'ULISES', 'CASTRO', '', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'PORTFOLIO MANAGER EQUITY', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(306, 'PARTICIPANTE', 'SDELGADO@infonavit.org.mx', 'SAMANTHA', 'DELGADO', 'NAVARRETE', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'CONSULTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ACTUARIO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'OTRO'),
(307, 'PARTICIPANTE', 'rhernandezc@infonavit.org.mx', 'RAYMUNDO JESUS', 'HERNANDEZ', 'CRUZ', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'GERENTE DE RIESGO DE MERCADO', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET OWNER', 'ADMINISTRACION DE RIESGOS', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(308, 'PARTICIPANTE', 'mvictoria@infonavit.org.mx', 'MANUEL', 'VICTORIA', '', 'INSTITUTO DEL FONDO NACIONAL DE LA VIVIENDA P', 'CIO', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'SAR', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(309, 'PARTICIPANTE', 'osorianol1600@alumno.ipn.mx', 'OSCAR ALEXANDER', 'SORIANO', 'LOPEZ', 'INSTITUTO POLITECNICO NACIONAL', 'STUDENT', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(310, 'PARTICIPANTE', 'dvillav1900@alumno.ipn.mx', 'DAVID', 'VILLA', '', 'INSTITUTO POLITECNICO NACIONAL', 'ESTUDIANTE', 'ESTADO DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(311, 'PARTICIPANTE', 'alvahernandezg@intercam.com.mx', 'ALVARO', 'HERNANDEZ', 'GUTIERREZ', 'INTERCAM', 'EQUITY RESEARCH ANALYST', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(312, 'PARTICIPANTE', 'roperezdiaz@hotmail.com', 'ROBERTO ULISES', 'PEREZ', 'DIAZ DE LEON', 'INTERCAM', 'HOMEMAKER', 'SAN LUIS POTOSI', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(313, 'PARTICIPANTE', 'mtolentino@intercam.com.mx', 'MAURICIO', 'TOLENTINO', 'GONZALEZ', 'INTERCAM', 'EJECUTIVO DE RELACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(314, 'PARTICIPANTE', 'asanbarbara@gmail.com', 'ALEJANDRO', 'SANCHEZ', 'BARBARA', 'INTERCAM CASA DE BOLSA, S.A. DE C.V.', 'DIRECTOR DE BANCA PRIVADA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(315, 'PARTICIPANTE', 'cchairez@interesse.com.mx', 'CAROLINA', 'CHAIREZ', '', 'INTERESSE', 'INVESTMENT FUNDS MANAGER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'REFERENCIADOR', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(316, 'PARTICIPANTE', 'a.amaya@inverente.com', 'ALEJANDRO', 'AMAYA', '', 'INVERENTE', 'GESTOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(317, 'PARTICIPANTE', 'lpalacio@invex.com', 'LUIS', 'PALACIO', '', 'INVEX', 'DIR VENTAS INSTITUCIONALES', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'SALES ASSET MANAGEMENT', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(318, 'PARTICIPANTE', 'pingu66648@invex.com', 'ROCIO ISABEL', 'VALENCIA', 'LOPEZ', 'INVEX BANCO', 'ESPECIALISTA DE PLANEACION FINANCIERA', 'TLALPAN CENTRO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(319, 'PARTICIPANTE', 'rbenavidezr1300@alumno.ipn.mx', 'RODRIGO', 'BENAVIDEZ', 'RODRIGUEZ', 'IPN', 'ESTUDIANTE', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'TWITTER', ''),
(320, 'PARTICIPANTE', 'jcantur1400@alumno.ipn.mx', 'JOHAN ALEXIS', 'CANTU', 'RUIZ', 'IPN', 'INVERSIONISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(321, 'PARTICIPANTE', 'jaime.escamilla@iqsec.com.mx', 'JAIME', 'ESCAMILLA', '', 'IQSEC', 'DIRECTOR ALIANZAS', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'WHATSAPP'),
(322, 'PARTICIPANTE', 'carlos.brito@jpmorgan.com', 'CARLOS', 'BRITO', '', 'J.P. MORGAN ASSET MANAGEMENT', 'ED', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(323, 'PARTICIPANTE', 'juan.p.medina-mora@jpmorgan.com', 'JUAN PABLO', 'MEDINA-MORA', '', 'J.P. MORGAN ASSET MANAGEMENT', 'MANAGING DIRECTOR', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(324, 'PARTICIPANTE', 'jbeltran@jaroscapital.net', 'JUAN CARLOS', 'BELTRAN', 'LUCIO', 'JAROS CAPITAL ASESOR INDEPENDIENTE', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(325, 'PARTICIPANTE', 'brenda.ramirezrodriguez@jpmchase.com', 'BRENDA MARIANA', 'RAMIREZ', '', 'JP MORGAN ASSET MANAGEMENT', 'CLIENT ADVISOR', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(326, 'PARTICIPANTE', 'Fernando.pino@juliusbaer.com', 'FERNANDO', 'PINO', '', 'JULIUS BÄR', 'DIRECTOR GENERAL ADJUNTO', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'AZTLAN'),
(327, 'PARTICIPANTE', 'ernesto.velasco@kcc.com', 'ERNESTO', 'VELASCO', '', 'KIMBERLY CLARK DE MEXICO', 'SUPERVISOR CORPORATIVO DE CONTABILIDAD', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(328, 'PARTICIPANTE', 'edgaralonso.amezcua@kcc.com', 'EDGAR ALONSO', 'AMEZCUA', 'VERGARA', 'KIMBERLY-CLARK DE MEXICO, S.A.B. DE C.V.', 'INFORMACION FINANCIERA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION'),
(329, 'PARTICIPANTE', 'carlos.hernandez-rios@kcc.com', 'CARLOS', 'HERNANDEZ', 'RIOS', 'KIMBERLY-CLARK DE MEXICO, S.A.B. DE C.V.', 'GERENTE DE INFORMACION FINANCIERA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(330, 'PARTICIPANTE', 'mmontesinos@larrainvial.com', 'MACARENA', 'MONTESINOS', '', 'LARRAINVIAL', 'ACTIVOS ALTERNATIVOS - DISTRIBUCION INSTITUCI', 'SANTIAGO', 'CHILE', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVESCO'),
(331, 'PARTICIPANTE', 'mramirezc@larrainvial.com', 'MARIA FERNANDA', 'RAMIREZ', '', 'LARRAINVIAL', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', 'ORGANIZADOR'),
(332, 'PARTICIPANTE', 'asaldias@larrainvial.com', 'ALEJANDRA', 'SALDIAS', '', 'LARRAINVIAL', 'HEAD SALES LATAM', 'LAS CONDES', 'CHILE', 'OTHER', 'DISTRIBUIDOR EFT INVESCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(333, 'PARTICIPANTE', 'berenicerangel@latinamericainvest.com', 'BERENICE', 'RANGEL', '', 'LATIN AMERICA INVEST', 'DIRECTORA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'WEALTH MANAGEMENT', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(334, 'PARTICIPANTE', 'ricardo@llamainvest.com', 'RICARDO', 'LATOURNERIE', '', 'LLAMA', 'CEO', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(335, 'PARTICIPANTE', 'rrivera@llorenteycuenca.com', 'RUBEN', 'RIVERA', '', 'LLYC', 'CONSULTOR SENIOR', 'CDMX', 'MEXICO', 'OTHER', 'COMUNICACION', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', 'LLYC'),
(336, 'PARTICIPANTE', 'asampedrol@llorenteycuenca.com', 'ALEJANDRO', 'SAMPEDRO', '', 'LLYC', 'DIRECTOR COMUNICACION FINANCIERA', 'CDMX', 'MEXICO', 'OTHER', 'COMUNICACION', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(337, 'PARTICIPANTE', 'ssanchez@llorenteycuenca.com', 'SAUL', 'SANCHEZ', '', 'LLYC', 'CONSULTOR', 'CDMX', 'MEXICO', 'OTHER', 'COMUNICACION', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(338, 'PARTICIPANTE', 'jmeraz@lunngo.mx', 'JORGE', 'MERAZ', '', 'LUNNGO', 'PROMOTOR', 'AREA METROPOLITANA DE CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(339, 'PARTICIPANTE', 'gustavocalvo@luzcapital.com', 'GUSTAVO', 'CALVO', 'IRABIEN', 'LUZ CAPITAL', 'PM', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(340, 'PARTICIPANTE', 'mgomezra@secgob.cdmx.gob.mx', 'MONTSERRAT', 'GOMEZ', 'RAMIREZ', 'MANU MAYEJ', 'INVESTIGADORA', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'TWITTER', ''),
(341, 'PARTICIPANTE', 'ymartine@mapfre.com.mx', 'YAIR RODOLFO', 'MARTINEZ', '', 'MAPFRE MEXICO', 'VALDES', 'CDMX', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'CONSULTANT', '', '', '', 'SPDJI EMAIL', ''),
(342, 'PARTICIPANTE', 'tensia@mmaglobalinvestment.com', 'MARIA HORTENSIA', 'MARMOLEJO', '', 'MARTIN, MARMOLEJO Y ASOCIADOS, SC', 'PARTNER, CO-CIO', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(343, 'PARTICIPANTE', 'ffarca@masari.mx', 'FREDIE', 'FARCA', 'CHARABATI', 'MASARI CASA DE BOLSA SA', 'PRESIDENTE CONSEJO', 'MEXIC DF', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(344, 'PARTICIPANTE', 'joyce.cohen@masari.mx', 'JOYCE', 'SHAOOLI', 'NEHMAD', 'MASARI CASA DE BOLSA SA', 'DIRECCION INVERSIONES', 'MEXIC DF', 'MEXICO', 'EXCHANGE', '', 'WIREHOUSE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(345, 'PARTICIPANTE', 'Miriam.Gonzalez@mercermarshbeneficios.com', 'MIRIAM', 'GONZALEZ', '', 'MERCER MARSH BENEFICIOS', 'GERENTE H&B', 'MEXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', 'HEALTH', '', '', '', 'SPDJI EMAIL', ''),
(346, 'PARTICIPANTE', 'gcopka@yahoo.com', 'GERARDO', 'COPCA', '', 'METANALISIS, S.A. DE C.V.', 'ANALISTA FINANCIERO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'ANALISTA INDEPENDIENTE', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(347, 'PARTICIPANTE', 'ealvarezd@gbm.com', 'ERNESTO', 'ALVAREZ', 'DE LA ROSA', 'METODICA ASESORES FINANCIEROS, S.A. DEC.V.', 'CO CEO', 'PUEBLA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGIONAL BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(348, 'PARTICIPANTE', 'abrenern@grupobmv.com.mx', 'ARON', 'BRENER', 'NEDVEDOVICH', 'MEXDER', 'SUBIDRECTOR DE OPERACIONES', 'CDMX', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(349, 'PARTICIPANTE', 'josemd@grupobmv.com.mx', 'JOSE', 'DE', 'DIOS', 'MEXDER', 'DIRECTOR GENERAL', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(350, 'PARTICIPANTE', 'rosa.argueta@mgcapital.net', 'ROSA ISELA', 'ARGUETA', 'GUTIERREZ', 'MG CAPITAL', 'ACCOUNT MANAGER', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(351, 'PARTICIPANTE', 'ernesto.garcia@mifel.com.mx', 'ERNESTO', 'GARCIA', '', 'MIFEL', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(352, 'PARTICIPANTE', 'andrea.mariscal@mifel.com.mx', 'ANDREA MICHELLE', 'MARISCAL', 'SANCHEZ', 'MIFEL', 'TRAINEE', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'EMPRESA LABORAL'),
(353, 'PARTICIPANTE', 'maricruz.martinez@mifel.com.mx', 'MARICRUZ', 'MARTINEZ', '', 'MIFEL', 'DIRECTORA OPERADORA DE FONDOS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(354, 'PARTICIPANTE', 'jimena@miflink.com', 'JIMENA', 'COLIN', 'FERNANDEZ', 'MIFLINK ADVISORS INDEPENDIENTE S.C.', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONOCIDO'),
(355, 'PARTICIPANTE', 'aarteaga@mobilityado.com', 'ALEJANDRO', 'ARTEAGA', '', 'MOBILITY ADO', 'CORPORATE INVESTMENTS', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(356, 'PARTICIPANTE', 'marrigunaga@monex.com.mx', 'MANUEL', 'ARRIGUNAGA', '', 'MONEX', 'DIRECTOR DE FONDOS', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'OPERADORA DE FONDOS', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(357, 'PARTICIPANTE', 'ahuitronf@monex.com.mx', 'ALAN', 'HUITRON', '', 'MONEX', 'TRADER', 'MEXICO CITY', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(358, 'PARTICIPANTE', 'brodriguezo1@monex.com.mx', 'BRIAN', 'RODRIGUEZ', '', 'MONEX', 'ANALISTA BURSATIL', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(359, 'PARTICIPANTE', 'jrsolano@monex.com.mx', 'ROBERTO', 'SOLANO', '', 'MONEX', 'ESTRATEGA GLOBAL', 'M?XICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(360, 'PARTICIPANTE', 'odincano@monex.com.mx', 'ODIN', 'CANO', 'RAMOS', 'MONEX GRUPO FINANCIERO, S.A. DE C.V.', 'PORTAFOLIO MANAGER EQUITY', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'OPERADORA DE FONDOS', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(361, 'PARTICIPANTE', 'miguel.perez@ms.com', 'MIGUEL ANGEL', 'PEREZ', 'ZAMORANO', 'MORGAN STANLEY MEXICO CASA DE BOLSA S.A. C.V.', 'DIRECTOR DE OPERACIONES', 'CDMX', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(362, 'PARTICIPANTE', 'pablo.miller@morningstar.com', 'PABLO', 'MILLER', '', 'MORNINGSTAR', 'SALES DIRECTOR', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', 'SERVICIOS FINANCIEROS', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(363, 'PARTICIPANTE', 'elias.padilla@multiva.com.mx', 'ELIAS', 'PADILLA', '', 'MULTIVA', 'MANAGER', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(364, 'PARTICIPANTE', 'angelica070871@gmail.com', 'MARIA ANGELICA', 'ROBLES', 'GONZALEZ', 'MULTIVA', 'SUBDIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(365, 'PARTICIPANTE', 'rjassor@gbm.com.mx', 'RICARDO', 'RODRIGUEZ', 'JASSO', 'NAACXXUP3YJS6FJ4  GBM', 'ASESOR FINANCIERO AFIS', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM CASA DE BOLSA'),
(366, 'PARTICIPANTE', 'sflores@ofnafin.com.mx', 'SANTIAGO', 'FLORES', '', 'NAFINSA', 'SOMOZA', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ADMINISTRATIVO', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(367, 'PARTICIPANTE', 'mutrilla@ofnafin.com.mx', 'MARIA', 'UTRILLA', '', 'NAFINSA', 'OPERADOR JUNIOR', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(368, 'PARTICIPANTE', 'sandrine.klock@natixis.com', 'SANDRINE', 'KLOCK', '', 'NATIXIS IM MEXICO', 'HEAD OF WHOLESALE', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(369, 'PARTICIPANTE', 'bgomez@networth.mx', 'BRENDA', 'GOMEZ', '', 'NET WORTH', 'FINADVISOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(370, 'PARTICIPANTE', 'rchavero@networth.mx', 'RICARDO MIGUEL', 'CHAVERO', 'MOYA', 'NETWORTH', 'CEO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', 'INDICES', 'REGISTERED INVESTMENT ADVISOR', 'ASESOR', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(371, 'PARTICIPANTE', 'gbarroso@gbm.com.mx', 'GUILLERMO', 'BARROSO', '', 'NFX', 'AFA', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(372, 'PARTICIPANTE', 'jortega@gbm.com.mx', 'JULIO JAIME', 'ORTEGA', '', 'NFX', 'SOCIO', 'DF', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(373, 'PARTICIPANTE', 'rfarias@gbm.com.mx', 'RODRIGO', 'FARIAS', 'SANCHEZ', 'NFX FINANCIAL ADVISORS', 'CEO & FOUNDER', 'CD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(374, 'PARTICIPANTE', 'mjoliverc@gbm.com', 'MARIA JOSE', 'OLIVER', 'COINDREAU', 'NFX FINANCIAL ADVISORS', 'GERENTE DE DESARROLLO DE NEGOCIO', 'CD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(375, 'PARTICIPANTE', 'GIOVANNI@NOIKI.COM', 'GIOVANNI', 'DE', 'GENESSE', 'NOIKI OFC, S. A. DE C. V.', 'ABOGADO', 'QUERETARO', 'MEXICO', 'OTHER', 'EMISOR DE VALORES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(376, 'PARTICIPANTE', 'ereyes@amib.com.mx', 'ERNESTO', 'REYES', 'RETANA', 'NON CLIENT – S&P WEBSITE', 'DIRECTOR TECNICO DE COMITES', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'ASOCIACION GREMIAL', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(377, 'PARTICIPANTE', 'martha@nonnaimagenpersonal.com', 'MARTHA LIDIA', 'RAMIREZ', 'URBINA', 'NONNA IMAGEN PERSONAL', 'DIRECTORA DE OPERACIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(378, 'PARTICIPANTE', 'srevuelta@nostroadvisors.com.mx', 'JOSE ANTONIO', 'PALACIO', 'JUNCO', 'NOSTRO ENERGY', 'INDEPENDIENTE', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'RECOMENDACION PERSONAL'),
(379, 'PARTICIPANTE', 'monicaorihuela@nscasesores.com', 'MONICA', 'ORIHUELA', '', 'NSC ASESORES', 'PLD', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(380, 'PARTICIPANTE', 'angelsolis@nscasesores.com', 'ANGEL', 'SOLIS', '', 'NSC ASESORES', 'ANALISTA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(381, 'PARTICIPANTE', 'carolinaperez@nscasesores.com', 'CAROLINA', 'PEREZ', '', 'NSC ASESORES S.C. ASESOR EN INVERSIONES INDEP', 'ANALISTA', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(382, 'PARTICIPANTE', 'gmartrod@nttdata.com', 'GISELA', 'MARTINEZ', '', 'NTTDATA', 'CONSULTANT', 'MEXICO', 'MEXICO', 'OTHER', 'MANAGEMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(383, 'PARTICIPANTE', 'oscar.garcia@nubank.com.br', 'OSCAR ABRAHAM', 'GARCIA', 'MARTINEZ', 'NUBANK', 'FINANCE DATA ANALYST', 'MEXICO CITY', 'MEXICO', 'OTHER', 'CREDITOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(384, 'PARTICIPANTE', 'mbrocado@nuclo-cio.com', 'MAURICIO', 'BROCADO', 'MARTINEZ', 'NUCLO CONSULTING S.C.', 'CHIEF INVESTMENT STRATEGIST', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'INVITACION AZTLAN'),
(385, 'PARTICIPANTE', 'natalia.villarruel@neximo.mx', 'NATALIA', 'VILLARRUEL', 'OROZCO', 'NV INMOBILIARIA', 'DIRECTORA CORPORATIVO', 'MÈXICO', 'MEXICO', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(386, 'PARTICIPANTE', 'dmuniz@occidentecapital.com', 'DIEGO', 'MUÑIZ', '', 'OCCIDENTE CAPITAL', 'MANAGER', 'GUADALAJARA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(387, 'PARTICIPANTE', 'paolam@ofnafin.com.mx', 'PAOLA', 'AGUILAR', '', 'OFINSA', 'OPERADOR SENIOR', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(388, 'PARTICIPANTE', 'hector.ortega@oigbase.com', 'MARCELO', 'ORTEGA', '', 'OIG', 'ANALYST ASSET MANAGEMENT', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(389, 'PARTICIPANTE', 'fernando.crisanto@covaf.com', 'FERNANDO', 'CRISANTO', 'TOMAS', 'OPERADORA COVAF S.A. DE C.V.', 'RIESGOS', 'MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(390, 'PARTICIPANTE', 'andrea.mendez.gamino@banorte.com', 'ANDREA', 'MENDEZ', 'GAMINO', 'OPERADORA DE FONDOS BANORTE, S.A. DE C.V.', 'SUBDIRECTOR ADMINISTRACION FI', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(391, 'PARTICIPANTE', 'dafne.rivera.cardenas@banorte.com', 'DAFNE MINERVA', 'RIVERA', 'CARDENAS', 'OPERADORA DE FONDOS BANORTE, S.A. DE C.V.', 'GERENTE', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(392, 'PARTICIPANTE', 'natalia.martinez@banorte.com', 'NATALIA', 'MARTINEZ', '', 'OPERADORA FONDOS BANORTE', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(393, 'PARTICIPANTE', 'smejiap@inbursa.com', 'SERGIO EFREN', 'MEJIA', 'PALAFOX', 'OPERADORA INBURSA DE FONDOS DE INVERSION, S.A', 'GERENTE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(394, 'PARTICIPANTE', 'rmendozab@inbursa.com', 'RAFAEL', 'MENDOZA', '', 'OPERADORA INBURSA DE FONDOS DE INVERSION, S.A', 'RESPONSABLE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA'),
(395, 'PARTICIPANTE', 'kacosta@operadoravalmex.mx', 'KIMBERLY', 'ACOSTA', 'MORIEL', 'OPERADORA VALMEX', 'DIRECTORA COMERCIAL DISTRIBUCION', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(396, 'PARTICIPANTE', 'rosamaria.cruz@operadoravalmex.mx', 'ROSA MARIA', 'CRUZ', 'GALLARDO', 'OPERADORA VALMEX', 'CONTRALORIA', 'MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(397, 'PARTICIPANTE', 'jpons@operadoravalmex.mx', 'EDUARDO', 'PONS', '', 'OPERADORA VALMEX', 'ANALISTA', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(398, 'PARTICIPANTE', 'aalvarado@operadoravalmex.mx', 'ABRAHAM', 'ALVARADO', '', 'OPERADORA VALMEX DE FONDOS DE INVERSION', 'PORTFOLIO MANAGER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(399, 'PARTICIPANTE', 'myhuertaj@sapv.com.mx', 'MIRIAM YAMILE', 'HUERTA', 'JIMENEZ', 'PEÑA VERDE', 'ANALISTA DE INVERSIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(400, 'PARTICIPANTE', 'scornejo@pensionissste.gob.mx', 'SERGIO', 'CORNEJO', 'LORENZO', 'PENSION ISSSTE', 'EQUITY ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'OTHER', 'EMAIL BBVA'),
(401, 'PARTICIPANTE', 'lvelasco@pensionissste.gob.mx', 'LUIS', 'ARVIZU', '', 'PENSIONISSSTE', 'PORTFOLIO MANAGER', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO DE PENSIONES', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(402, 'PARTICIPANTE', 'dmedinaa@pensionissste.gob.mx', 'DIEGO ALESSANDRO', 'MEDINA', 'ACOSTA', 'PENSIONISSSTE', 'ANALISTA DE RENTA VARIABLE', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FONDO DE PENSIONES', '', '', '', '', '', '', 'OTHER', 'EMAIL DE SPONSOR'),
(403, 'PARTICIPANTE', 'liliana.ceja@pepsico.com', 'LILIANA', 'CEJA', 'URBIOLA', 'PEPSICO', 'DATA ASSOC ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FINANZAS', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(404, 'PARTICIPANTE', 'bg@perfectcircle.life', 'BRENDA', 'GONZALEZ', '', 'PERFECT CIRCLE', 'ASESOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(405, 'PARTICIPANTE', 'ycanales@phiinvestment.com.mx', 'YAMIL', 'CANALES', '', 'PHI INVESTMENT CAPITAL', 'ETF MANAGER', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(406, 'PARTICIPANTE', 'eyanez@phiinvestment.com.mx', 'EDGAR', 'YAÑEZ', '', 'PHI INVESTMENT CAPITAL', 'CEO', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(407, 'PARTICIPANTE', 'gaspar.mas@weareplanet.vom', 'GASPAR', 'MAA', '', 'PLANET', 'ANALISTA', 'ZAPOPAN', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(408, 'PARTICIPANTE', 'aldo.jauregui@dif.tech', 'ALDO', 'JAUREGUI', '', 'PLATA', 'DIRECTOR DE INVERSIONES', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(409, 'PARTICIPANTE', 'info@procesoresultado.com', 'JOAQUIN', 'GASPAR', '', 'PR', 'CIO', 'PUEBLA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'AZTLAN'),
(410, 'PARTICIPANTE', 'juan.bazaldua@pwc.com', 'JUAN', 'BAZALDUA', '', 'PRICEWATERHOUSECOOPERS MEXICO', 'ESG MANAGER', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(411, 'PARTICIPANTE', 'Plascencia.david@principal.com', 'DAVID', 'PLASCENCIA', '', 'PRINCIPAL', 'CRO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', 'OTHER', 'AFORE', '', '', '', '', '', '', 'OTHER', 'AMAFORE'),
(412, 'PARTICIPANTE', 'saucedo.irving@principal.com', 'IRVING', 'SAUCEDO', '', 'PRINCIPAL', 'SUBGERENTE', 'MEXICO', 'MEXICO', 'OTHER', 'GESTION DE PRODUCTO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', '');
INSERT INTO `registro` (`id`, `categoria`, `correo`, `nombre`, `paterno`, `materno`, `empresa`, `cargo`, `ciudad`, `pais`, `industry`, `industry_other`, `profile_firm_type`, `profile_firm_type_other`, `profile_ao_type`, `profile_ao_type_other`, `profile_insurance_professional_profile`, `profile_insurance_professional_profile_other`, `profile_insurance_company_type`, `profile_insurance_company_type_other`, `profile_insurance_role`, `profile_insurance_role_other`, `event_hear_about`, `event_hear_about_other`) VALUES
(413, 'PARTICIPANTE', 'develasco.santiago@principal.com', 'SANTIAGO', 'DE', 'VELASCO', 'PRINCIPAL FONDOS DE INVERSION, S.A. DE C.V.', 'INSTITUTIONAL PRODUCT DEVELOPER', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(414, 'PARTICIPANTE', 'escalante.agustin@principal.com', 'AGUSTIN', 'ESCALANTE', '', 'PRINCIPAL FONDOS DE INVERSION, S.A. DE C.V.', 'SUB DIRECTOR DE PRODUCTO', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'MAIL DE AMIB'),
(415, 'PARTICIPANTE', 'rodriguez.alejandro.x@principal.com', 'ALEJANDRO', 'RODRIGUEZ', 'ESPINDOLA', 'PRINCIPAL FONDOS DE INVERSION, S.A. DE C.V.', 'GERENTE DE PRODUCTO', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(416, 'PARTICIPANTE', 'phd2000@prodigy.net.mx', 'LAURA ANGELICA', 'VILLALOBOS', '', 'PRIVATE', 'CEO', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', 'CENTRAL BANK', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(417, 'PARTICIPANTE', 'martin@mmaglobalinvestment.com', 'MARTIN', 'MARMOLEJO', '', 'PRIVATE ORDER', 'SOCIO FUNDADOR', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(418, 'PARTICIPANTE', 'ledibalo@privest.com.mx', 'LEONARDO', 'DIAZ', 'BARREIRO', 'PRIVEST', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(419, 'PARTICIPANTE', 'fguerrero@privest.com.mx', 'FERNANDO', 'GUERRERO', 'ARAMBURU', 'PRIVEST', 'SOCIO DIRECTOR DE OPERACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(420, 'PARTICIPANTE', 'adelrio@privest.com.mx', 'ALFONSO', 'DEL RIO', '', 'PRIVEST SA DE CV', 'E', 'CD', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(421, 'PARTICIPANTE', 'me.sanjuan62@gmail.com', 'MACARIO ELIGIO', 'SAN JUAN', 'REYES', 'PRIVEST SA DE CV', 'ASOCIADO', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(422, 'PARTICIPANTE', 'pgarcia@promecap.com.mx', 'PATRICIO', 'GARCIA', 'PIMENTEL DE PALACIO', 'PROMECAP', 'INVESTMENT ANALYST', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(423, 'PARTICIPANTE', 'mario.guzman@protexa.mx', 'JORGE MARIO', 'GUZMAN', 'GUZMAN', 'PROTEXA', 'CIO', 'SAN PEDRO GARZA GARCIA', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'NOTA EN PRENSA'),
(424, 'PARTICIPANTE', 'tramites@proyectovidayasociados.com', 'NICOLE ALEJANDRA', 'JAIME', 'GONZALEZ', 'PROYECTO DE VIDA  ACTUARIO Y ASOCIADOS', 'ASESORE', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(425, 'PARTICIPANTE', 'pchavez@prosolfi.com', 'PATRICIA', 'CHAVEZ', 'RUIZ', 'PROYECTOS Y SOLUCIONES FINANCIERAS', 'CEO', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'UN AMIGO'),
(426, 'PARTICIPANTE', 'jose.leon@puntocasadebolsa.mx', 'JOSE LUIS', 'LEON', 'VALLE', 'PUNTO CASA DE BOLSA', 'DIRECTOR EJECUTIVO', 'MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(427, 'PARTICIPANTE', 'cristian.jaramillo@pwc.com', 'CRISTIAN', 'JARAMILLO', '', 'PWC', 'SUSTAINABILITY & RISK (ESG) DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'CONSULTING FIRM', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(428, 'PARTICIPANTE', 'angonzalez@qualitas.com.mx', 'ANDREA', 'GONZALEZ', '', 'QUALITAS', 'INVESTOR RELATIONS MANAGER', 'CDMX', 'MEXICO', 'INSURANCE', 'INDICES', '', '', '', '', '', '', 'PROPERTY & CASUALTY', 'AUTO', '', '', 'SPDJI EMAIL', ''),
(429, 'PARTICIPANTE', 'tcosio@qualitas.com.mx', 'TERESA', 'COSIO', '', 'QUALITAS', 'SOCIAL RESPONSIBILITY MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(430, 'PARTICIPANTE', 'jarvizu@qualitas.com.mx', 'JOSE ALEJANDRO', 'ARVIZU', 'FERNANDEZ', 'QUALITAS COMPAÑIA DE SEGUROS,  S.A. DE C.V.', 'SUBDIRECTOR DE INVERSIONES', 'MEXICO CITY', 'MEXICO', 'INSURANCE', '', '', '', 'OTHER', 'ASEGURADORA', '', '', 'OTHER', 'AUTOS', '', '', 'SPDJI EMAIL', ''),
(431, 'PARTICIPANTE', 'gramirez@qtc.mx', 'GABRIEL', 'RAMIREZ', '', 'QUANT CAPITAL', 'MANAGING PARTNER', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(432, 'PARTICIPANTE', 'operezv@quantashares.com', 'OSCAR', 'PEREZ-VERDIA', '', 'QUANTA SHARES', 'OPERADOR JR', 'CDMX', 'MEXICO', 'OTHER', 'EMISORA DE ETF', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(433, 'PARTICIPANTE', 'mralph@quantashares.com', 'MICHELLE', 'RALPH', 'MARTINEZ', 'QUANTA SHARES', 'SUBDIRECTORA DE OPERACION', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'EMISORA ETFS', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(434, 'PARTICIPANTE', 'edna.real@abbott.com', 'SAUL', 'MORALES', 'PACHECO', 'RAND KIT', 'DIRECTOR CORPORATIVO EMPRESARIAL', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(435, 'PARTICIPANTE', 'humberto.calzada@rankia.mx', 'HUMBERTO', 'CALZADA', 'DIAZ', 'RANKIA', 'CHIEF ECONOMIST', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(436, 'PARTICIPANTE', 'mgachuz@bwc.com.mx', 'MICHAEL', 'GACHUZ', '', 'ROGA CAPITAL', 'SUBDIRECTOR DE MESA OPERATIVA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(437, 'PARTICIPANTE', 'jrodriguez@bwc.com.mx', 'JACOBO', 'RODRIGUEZ', '', 'ROGA CAPITAL', 'DIRECTOR DE ANALISIS', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(438, 'PARTICIPANTE', 'estefany.lira@spglobal.com', 'ESTEFANY', 'LIRA', '', 'S&P GLOBAL', 'SALES SPECIALIST', 'PUEBLA', 'MEXICO', 'OTHER', 'VENTAS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(439, 'PARTICIPANTE', 'jonathan.salazar@sagosupply.com', 'JONATHAN', 'SALAZAR', 'GARCIA', 'SAGO SUPPLY', 'ANALISIS FINANCIERO', 'CDMX', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(440, 'PARTICIPANTE', 'schagoya@s-s.mx', 'SERGIO', 'CHAGOYA', 'D.', 'SANTAMARINA & STETA', 'SOCIO', 'MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(441, 'PARTICIPANTE', 'portiz@s-s.mx', 'PABLO', 'ORTIZ', 'MONASTERIO O DOGHERTY', 'SANTAMARINA & STETA', 'ASOCIADO', 'MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA DE OTRO ABOGADO'),
(442, 'PARTICIPANTE', 'dostos@s-s.mx', 'DIEGO', 'OSTOS', 'GUERRESI', 'SANTAMARINA Y STETA', 'SOCIO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA DE OTRO ABOGADO'),
(443, 'PARTICIPANTE', 'esteban.soto@s-s.mx', 'ESTEBAN', 'SOTO', 'LOECKEN', 'SANTAMARINA Y STETA', 'ASOCIADO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERENCIA DE OTRO ABOGADO'),
(444, 'PARTICIPANTE', 'ezaga@s-s.mx', 'ELIAS', 'ZAGA', 'BELZER', 'SANTAMARINA Y STETA', 'ASOCIADO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FIRMA DE ABOGADOS', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'REFERIDO POR OTRO ABOGADO'),
(445, 'PARTICIPANTE', 'epgorostietac@santander.com.mx', 'ELIZABETH', 'GOROSTIETA', '', 'SANTANDER', 'ASSOCIATE', 'CDMX', 'MEXICO', 'OTHER', 'ESTRUCTURACION DE DERIVADOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(446, 'PARTICIPANTE', 'sayurimagallon@hotmail.com', 'SAYURI', 'MAGALLON', '', 'SANTANDER', 'EXECUTIVE DIRECTOR', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(447, 'PARTICIPANTE', 'luis.flores@santanderam.com', 'LUIS ARTURO', 'FLORES', 'S.', 'SANTANDER ASSET MANAGEMENT', 'ECONOMISTA', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(448, 'PARTICIPANTE', 'hggarcia@scotiabank.com.mx', 'HECTOR GERARDO', 'GARCIA', 'GARDUÑO', 'SCOTIA FONDOS, S.A. DE C.V.', 'TRADER GESTION DE ACTIVOS', 'MEXICO', 'MEXICO', 'OTHER', 'TRADER GESTION DE ACTIVOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(449, 'PARTICIPANTE', 'javier.basurto@scotiabank.com', 'JAVIER', 'BASURTO', 'VERA', 'SCOTIABANK', 'DIRECTO EQUITY SALES', 'CDMX', 'MEXICO', 'OTHER', 'VTAS INSTITUCIONALES EQUITY', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(450, 'PARTICIPANTE', 'gabriel.himelfarb@scotiabank.com', 'GABRIEL', 'HIMELFARB', '', 'SCOTIABANK', 'ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(451, 'PARTICIPANTE', 'francisco.suarez@scotiabank.com', 'FRANCISCO', 'SUAREZ', 'SAVIN', 'SCOTIABANK', 'DIRECTOR EQUITY RESEARCH, GLOBAL BANKING & MA', 'BOULEVARD AVILA CAMACHO 1, PRIMER PISO LOMAS ', 'MEXICO', 'OTHER', 'SELL-SIDE ESG EQUITY ANALYST', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'ERIKA ALCANTARA, MANUEL GONZALEZ, CCFV'),
(452, 'PARTICIPANTE', 'fortega@scotiabank.com.mx', 'HIQUINGARI FRANCISCO', 'ORTEGA', 'ORTIZ', 'SCOTIABANK, S.A.', 'DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'BANCO', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(453, 'PARTICIPANTE', 'jose_estradaa@hacienda.gob.mx', 'JOSE', 'ESTRADA', 'ALAMILLA', 'SECRETARIA DE HACIENDA Y CREDITO PUBLICO', 'DIRECTOR DE ANALISIS FINANCIERO DE INTERMEDIA', 'MEXICO', 'MEXICO', 'REGULATORY/COMPLIANCE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(454, 'PARTICIPANTE', 'ismael_solis@hacienda.gob.mx', 'ISMAEL', 'SOLIS', '', 'SECRETARIA DE HACIENDA Y CREDITO PUBLICO', 'SUBDIRECTOR DE ANALISIS ECONOMICO Y BURSATIL', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(455, 'PARTICIPANTE', 'florida_vieyra@hacienda.gob.mx', 'FLORIDA', 'VIEYRA', '', 'SECRETARIA DE HACIENDA Y CREDITO PUBLICO', 'ANALISTA EJECUTIVO', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(456, 'PARTICIPANTE', 'aherrera@seguroll.mx', 'ALBERTO', 'HERRERA', '', 'SEGUROLL', 'INSURANCE AGENT', 'MIGUEL HIDALGO', 'MEXICO', 'BROKER/DEALER', '', 'INSURANCE BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'GBM'),
(457, 'PARTICIPANTE', 'amaldonados@sicontractor.com.mx', 'ALAN', 'MALDONADO', 'SALAS', 'SEMPRA', 'ANALISTA JR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'BANK-OWNED BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(458, 'PARTICIPANTE', 'respindola@shf.gob.mx', 'RUBEN', 'ESPINDOLA', '', 'SHF', 'TRADER', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(459, 'PARTICIPANTE', 'arturo.sanchez@scapital.mx', 'ARTURO', 'SANCHEZ', 'TORRES', 'SIGNATURE CAP', 'CIO', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(460, 'PARTICIPANTE', 'ricardo.hernandez@scapital.mx', 'RICARDO', 'HERNANDEZ', '', 'SIGNATURE CAPITAL', 'INVESTMENT ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'FAMILY OFFICE', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(461, 'PARTICIPANTE', 'carlos.perez@scapital.mx', 'CARLOS', 'PEREZ', '', 'SIGNATURE CAPITAL', 'ANALISTA', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(462, 'PARTICIPANTE', 'vborrusquieta@skandia.com.mx', 'VICTOR', 'ORRUSQUIETA', '', 'SKANDIA', 'ESPECIALISTA EN RIESGOS', 'MEXICO', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'ASSET MANAGER', '', '', '', 'SPDJI EMAIL', ''),
(463, 'PARTICIPANTE', 'msilvaa@skandia.com.mx', 'MIGUEL', 'SILVA', '', 'SKANDIA', 'GERENTE DE RIESGOS FINANCIEROS', 'CDMX', 'MEXICO', 'OTHER', 'RIESGOS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(464, 'PARTICIPANTE', 'jdalvarez@shf.gob.mx', 'JOSE DAVID', 'ALVAREZ', 'MALDONADO', 'SOCIEDAD HIPOTECARIA FEDERAL', 'DGA PLANEACION', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CONSEJO MEXICANO DE FINANZAS SOSTENIBLES'),
(465, 'PARTICIPANTE', 'direccion.ti@solucionesti.org.mx', 'JUAN', 'ANGELES', 'MORENO', 'SOLUCIONES TI', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(466, 'PARTICIPANTE', 'direccion.ramirez@solucionesti.org.mx', 'JOSE LUIS', 'RAMIREZ', 'ORTIZ', 'SOLUCIONES TI', 'DIRECTOR COMERCIAL', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(467, 'PARTICIPANTE', 'alonso.aldama@spglobal.com', 'ALONSO', 'ALDAMA', '', 'SPGMI', 'SALES REP', 'CDMX', 'MEXICO', 'OTHER', 'MARKET INTELLIGENCE', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA'),
(468, 'PARTICIPANTE', 'Christian.Prugue@StoneX.com', 'CHRISTIAN', 'PRUGUE', '', 'STONEX', 'MANAGING DIRECTOR CO-HEAD LATAM SECURITIES', 'MIAMI', 'UNITED STATES', 'BROKER/DEALER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'WISDOM TREE'),
(469, 'PARTICIPANTE', 'pati.torre@sumamx.com', 'PATRICIA', 'TORRE', '', 'SUMA', 'SOCIA FUNDADORA', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'OTHER', 'UNO DE MIS ASESORES ME HABLO DEL EVENTO'),
(470, 'PARTICIPANTE', 'a01131186@tec.mx', 'NICOLAS', 'CISNEROS', '', 'SUMMACAP', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'CORREO DE S&P', '', '', '', '', '', '', 'SPDJI EMAIL', 'MI JEFE ME INVITO'),
(471, 'PARTICIPANTE', 'em.velasco@tec.mx', 'RENE', 'ESPINOSA', '', 'SUMMACAP', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'FAMILY OFFICE', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(472, 'PARTICIPANTE', 'A01783194@tec.mx', 'ROGELIO', 'HERNANDEZ', '', 'SUMMACAP', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'CORREO DE S&P', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(473, 'PARTICIPANTE', 'A01659785@tec.mx', 'CHRISTIAN RAFAEL', 'LAGUNES', 'MANZANO', 'SUMMACAP', 'ANALYST', 'NYC', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(474, 'PARTICIPANTE', 'edson.murguia@summacap.mx', 'EDSON', 'MURGUIA', '', 'SUMMACAP', 'MANAGING PARTNER', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'CORREO DE S&P', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(475, 'PARTICIPANTE', 'yadira.cenovio@suramexico.com', 'MARIBEL', 'CENOVIO', '', 'SURA', 'RISK MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'RISK MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(476, 'PARTICIPANTE', 'ariel.mireles@sura-im.com', 'ARIEL', 'MIRELES', '', 'SURA IM', 'HEAD FIXED INCOME MEXICO', 'CDMX', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'MUTAL FUND', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(477, 'PARTICIPANTE', 'juan.guzman@sura-im.com', 'JUAN PABLO', 'GUZMAN', '', 'SURA INVESTMENT MANAGEMENT', 'TRADER', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'LARRAIN VIAL'),
(478, 'PARTICIPANTE', 'joseline.galindo@sura-im.com', 'JOSELINE', 'GALINDO', '', 'SURA INVESTMENT MANAGEMENT MEXICO', 'ASOCIADO', 'MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(479, 'PARTICIPANTE', 'alejandro.barbaa@suramexico.com', 'ALEJANDRO', 'BARBA', 'FLORES', 'SURA INVESTMENTS', 'TRADER', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(480, 'PARTICIPANTE', 'thalia.gonzalez@sura-im.com', 'THALIA', 'GONZALEZ', '', 'SURA INVESTMENTS', 'ASSOCIATE DISTRIBUTION', 'MEXICO', 'MEXICO', 'OTHER', 'ASSOCIATE DISTRIBUTION', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(481, 'PARTICIPANTE', 'rocio.hegewisch@suramexico.com', 'ROCIO DEL AMANECER', 'HEGEWISCH', 'PARTIDA', 'SURA INVESTMENTS', 'SENIOR ANALYST', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COMPAÑERO DE TRABAJO'),
(482, 'PARTICIPANTE', 'karla.ramirez@sura-im.com', 'KARLA', 'RAMIREZ', '', 'SURA INVESTMENTS', 'COORDINADORA VALUACION', 'MEXICO CITY', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(483, 'PARTICIPANTE', 'marcosdaniel.salas@suramexico.com', 'MARCOS', 'SALAS', '', 'SURA MEXICO', 'PORTFOLIO MANAGER', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(484, 'PARTICIPANTE', 'saulo.reachi@suramexico.com', 'SAULO', 'REACHI', 'LAREDO', 'SURA MEXICO', 'LOCAL EQUITIES ANALYST', 'COYOACAN', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED CONTRIBUTION PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(485, 'PARTICIPANTE', 'jessica.leyva@symrise.com', 'JESSICA I', 'LEYVA', 'ONTIVEROS', 'SYMRISE', 'BUSINESS CONTROLLER', 'ESTADO DE MEXICO', 'MEXICO', 'OTHER', 'QUIMICA', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(486, 'PARTICIPANTE', 'bringastiago@hotmail.com', 'SANTIAGO', 'BRINGAS', '', 'TADA', 'MANAGER', 'CDMX', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(487, 'PARTICIPANTE', 'A01661975@tec.mx', 'ERICK URIEL', 'GONZALEZ', '', 'TEC DE MONTERREY', 'ANALYST', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(488, 'PARTICIPANTE', 'A01734600@tec.mx', 'KAREN ANALI', 'GONZALEZ', '', 'TEC DE MONTERREY', 'ANALYT', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(489, 'PARTICIPANTE', 'A01745117@tec.mx', 'EMMANUEL RENE', 'RODRIGUEZ', '', 'TEC DE MONTERREY', 'ANALYST', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(490, 'PARTICIPANTE', 'A01735233@tec.mx', 'IRIS', 'RUIZ', '', 'TEC DE MONTERREY', 'ANALYST', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(491, 'PARTICIPANTE', 'sebastiangarcia@tec.mx', 'DAVID SEBASTIAN', 'GARCIA', 'RUIZ VELAZCO', 'TECNOLOGICO DE MONTERREY', 'PROFESOR', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'COLEGA'),
(492, 'PARTICIPANTE', 'alejandro_archundia@tec.mx', 'ALEJANDRO', 'ARCHUNDIA', '', 'TECNOLOGICO DE MONTERREY', 'PROFESOR', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(493, 'PARTICIPANTE', 'humberto.valencia@tec.mx', 'HUMBERTO', 'VALENCIA', 'H', 'TECNOLOGICO DE MONTERREY', 'INVESTIGADOR', 'CDMX', 'MEXICO', 'OTHER', 'INVESTIGADOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(494, 'PARTICIPANTE', 'A01781934@tec.mx', 'DANIELA', 'GONZALEZ', 'ALONSO', 'TECNOLOGIOC DE MONTERREY', 'ESTUDIANTE', 'CIUDAD DE MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(495, 'PARTICIPANTE', 'santiago.mejia@tekus.co', 'SANTIAGO', 'MEJIA', 'VILLEGAS', 'TEKUS', 'CFO', 'CDMX', 'COLOMBIA', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(496, 'PARTICIPANTE', 'smiralles@tempestcapital.com', 'SEBASTIAN', 'MIRALLES', '', 'TEMPEST CAPITAL', 'MANAGING PARTNER', 'MEXICO CITY', 'MEXICO', 'ASSET OWNER', '', '', '', 'OTHER', 'PRIVATE EQUITY', '', '', '', '', '', '', 'OTHER', 'CFA SOCIETY OF MEXICO'),
(497, 'PARTICIPANTE', 'alex@thinkinmodular.com', 'ALEJANDRO', 'FERNANDEZ', 'GONZALEZ', 'THINKINMODULAR - THINKBRIGHT.MX', 'DIRECTOR GENERAL', 'HERMOSILLO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(498, 'PARTICIPANTE', 'mcortina@tigrisinvestments.com', 'MANUEL G', 'CORTINA', 'MANGINO', 'TIGRIS INVESTMENTS', 'SOCIO', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(499, 'PARTICIPANTE', 'antonio_ortiz@tokiomarine.com.mx', 'JUAN ANTONIO', 'ORTIZ', 'PEREZ', 'TOKIO MARINE', 'DEPUTY CFO AND CHIEF ACTUARY', 'CIUDAD DE MEXICO', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', '', '', '', 'SPDJI EMAIL', ''),
(500, 'PARTICIPANTE', 'edgar_vertiz@tokiomarine.com.mx', 'EDGAR I', 'VERTIZ', 'LIMA', 'TOKIO MARINE HCC MEXICO COMPAÑIA AFIANZADORA,', 'SURETY ACCOUNTANT', 'CIUDAD DE MEXICO', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'OTHER', 'MERCADO AFIANZADOR', '', '', 'SPDJI EMAIL', ''),
(501, 'PARTICIPANTE', 'hercilio_barragan@tokiomarine.com.mx', 'HERCILIO', 'BARRAGAN', '', 'TOKIO MARINE MEXICO', 'ANZURES', 'MEXICO CITY', 'MEXICO', 'INSURANCE', '', '', '', '', '', '', '', 'PROPERTY & CASUALTY', '', '', '', 'BMV WEBSITE', ''),
(502, 'PARTICIPANTE', 'soporte@tuclienteideal.com', 'DANIEL', 'HERNANDEZ', '', 'TU CLIENTE IDEAL', 'PROPIETARIO', 'PUEBLA', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'TWITTER', ''),
(503, 'PARTICIPANTE', 'CENTRAL@TZIPORA.PAGE', 'NAYELI', 'FAJARDO', '', 'TZIPORA', 'SENIOR DIRECTOR', 'CUAUTITLAN IZCALLI', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(504, 'PARTICIPANTE', 'carlos_ef@upotzolotepec.edu.mx', 'CARLOS', 'ESPARZA', '', 'UAEM', 'SR.', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(505, 'PARTICIPANTE', 'aranza.rubio@ubs.com', 'ARANZA', 'RUBIO', 'RUIZ', 'UBS', 'CLIENT ACCOUNT MANAGER', 'CIUDAD DE MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(506, 'PARTICIPANTE', 'hac106@hormail.com', 'HUMBERTO', 'ACEVEDO', '', 'UNAM', 'ACADEMICO', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'LINKEDIN', ''),
(507, 'PARTICIPANTE', 'oscar.cortesp@sct.gob.mx', 'OSCAR', 'CORTES', '', 'UNAM', 'SUBDIRECTOR', 'MEXICO', 'MEXICO', 'GOVERNMENT/NGO', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(508, 'PARTICIPANTE', 'milkshake@comunidad.unam.mx', 'INGRID IRAZU', 'ESPINOSA', 'GAONA', 'UNAM', 'ESTUDIANTE', 'CIUDAD DE M?XICO', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(509, 'PARTICIPANTE', '305746148@comunidad.unam.mx', 'JOSE ROBERTO', 'TORRES', 'BELLO', 'UNAM', 'STUDENT', 'MEXICO CITY', 'MEXICO', 'ACADEMIC/INSTITUTE', 'PROFESSOR', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(510, 'PARTICIPANTE', 'amorales@fca.unam.mx', 'ARTURO', 'MORALES', 'CASTRO', 'UNIVERSIDAD NACIONAL AUTONOMA DE MEXICO', 'PROFESOR-INVESTIGADOR', 'CDMX', 'MEXICO', 'ACADEMIC/INSTITUTE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(511, 'PARTICIPANTE', '0225219@up.edu.mx', 'LUIS FERNANDO', 'REYNOSO', 'LABASTIDA', 'UP', 'ESTUDIANTE', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(512, 'PARTICIPANTE', 'jdurano@grupobmv.com.mx', 'JONATHAN RICARDO', 'DURAN', 'OLVERA', 'VALMER', 'GERENTE DE DESARROLLO DE NEGOCIOS', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(513, 'PARTICIPANTE', 'anarvaezf@grupobmv.com.mx', 'ANDREA', 'NARVAEZ', '', 'VALMER', 'ANALISTA COMERCIAL Y DESARROLLO DE NEGOCIO', 'MEXICO CITY', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'CORREO DE BOLSA DE VALORES'),
(514, 'PARTICIPANTE', 'aolmos@grupobmv.com.mx', 'ANA', 'OLMOS', '', 'VALMER, MEXICAN STOCK EXCHANGE', 'SUBDIRECTORA', 'CIUDAD DE MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(515, 'PARTICIPANTE', 'ssanchez@valmex.mx', 'SANDRA', 'SANCHEZ', '', 'VALORES MEXICANOS CASA DE BOLSA', 'INVESTMENT ANALYST', 'MEXICO', 'MEXICO', 'ASSET OWNER', '', '', '', 'DEFINED BENEFIT PLAN', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(516, 'PARTICIPANTE', 'jlarrieta@grupovalue.mx', 'JOSE LUIS', 'ARRIETA', '', 'VALUE ASESORES', 'DIRECTOR', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'REGIONAL BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(517, 'PARTICIPANTE', 'andrea_castaneda@vanguard.com', 'ANDREA FERNANDA', 'CASTAÑEDA', 'ANGUIANO', 'VANGUARD', 'SALES ASSISTANT', 'CDMX', 'MEXICO', 'OTHER', 'SALES ASSISTANT', 'REGISTERED INVESTMENT ADVISOR', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MI EMPRESA'),
(518, 'PARTICIPANTE', 'pablo_garciamoreno@vanguard.com', 'PABLO', 'GARCIA', 'MORENO VILLARREAL', 'VANGUARD', 'VENTAS', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(519, 'PARTICIPANTE', 'julio_gonzalez@vanguard.com', 'JULIO', 'GONZALEZ', 'MACHORRO', 'VANGUARD', 'BUSINESS DEVELOPMENT', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'COLEGA'),
(520, 'PARTICIPANTE', 'pablo_morales@vanguard.com', 'PABLO', 'MORALES', 'GRAF', 'VANGUARD', 'SALES ANALYST', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(521, 'PARTICIPANTE', 'alvaro_poo@vanguard.com', 'ALVARO', 'POO', '', 'VANGUARD', 'BUSINESS DEVELOPMENT CONSULTANT', 'CDMX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(522, 'PARTICIPANTE', 'guillermo_vilchis@vanguard.com', 'GUILLERMO', 'VILCHIS', '', 'VANGUARD', 'VENTAS INSTITUCIONALES', 'CD MX', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(523, 'PARTICIPANTE', 'FLEAL@VECTOR.COM.MX', 'FERNANDO', 'LEAL', '', 'VECTOR CASA DE BOLSA', 'ANALISTA BANCA DE INVERSION', 'MEXICO', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(524, 'PARTICIPANTE', 'sergio.arriola@verum.mx', 'SERGIO', 'ARRIOLA', '', 'VERUM CALIFICADORA DE VALORES', 'DIRECTOR DE DESARROLLO DE VALORES', 'BENITO JUAREZ', 'MEXICO', 'OTHER', 'CALIFICADORA DE VALORES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(525, 'PARTICIPANTE', 'cclave@akaancasadebolsa.com.mx', 'CATALINA', 'CLAVE', 'ALMEIDA', 'VIFARU, S.A. DE C.V., CASA DE BOLSA', 'DIRECTOR GENERAL', 'CDMX', 'MEXICO', 'FINANCIAL ADVISOR', '', 'OTHER', 'CASA DE BOLSA', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(526, 'PARTICIPANTE', 'jose.estrada@oigbase.com', 'JOSE EDUARDO', 'ESTRADA', 'LOPEZ', 'VISION Y ENFOQUE', 'ANALISTA', 'CDMX', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(527, 'PARTICIPANTE', 'nosaabe@gmail.com', 'ABELARDO', 'NOGUEZ', '', 'VMG PROYECTOS', 'CP', 'CIUDAD DE MEXICO', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(528, 'PARTICIPANTE', 'gustavo.espinosa@wtwco.com', 'GUSTAVO', 'ESPINOSA', '', 'WTW', 'CONSULTOR', 'CDMX', 'MEXICO', 'INSTITUTIONAL INVESTMENT CONSULTANT', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(529, 'PARTICIPANTE', 'delamadridbussines@proton.com', 'SALMA', 'ESCALANTE', 'HERNANDEZ', 'XTB', 'JR CHAIRMAN ANALITYC INVESTOR', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'BMV WEBSITE', ''),
(530, 'PARTICIPANTE', 'alaguilar@zumacapital.com.mx', 'ANA LORENA', 'AGUILAR', 'MARRON', 'ZUMA CAPITAL', 'DIRECTOR GENERAL', 'ALVARO OBREGON', 'MEXICO', 'ASSET/INVESTMENT MANAGER', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'AMAI'),
(531, 'PARTICIPANTE', 'lgcardenas@zumacapital.com.mx', 'LUIS', 'CARDENAS', 'ZURITA', 'ZUMA CAPITAL', 'PORTFOLIO MANAGER', 'MEXICO CITY', 'MEXICO', 'FINANCIAL ADVISOR', '', 'INDEPENDENT BROKER/DEALER', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', 'AMAI'),
(532, 'PARTICIPANTE', 'ericka.alcantara@spglobal.com', 'ERICKA ALICIA', 'ALCANTARA', '', 'S&P DOW JONES INDICES', 'SENIOR DIRECTOR, MARKETING, LATIN AMERICA', 'CDMX', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(533, 'PARTICIPANTE', 'juan.alvarez@spglobal.com', 'JUAN CAMILO', 'ALVAREZ', '', 'S&P DOW JONES INDICES', 'DIRECTOR', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(534, 'PARTICIPANTE', 'cristopher.anguiano@spglobal.com', 'CRISTOPHER', 'ANGUIANO', 'DIAZ', 'S&P DOW JONES INDICES', 'SENIOR ANALYST', 'MEXICO CITY', 'MEXICO', 'OTHER', 'PRODUCT MANAGER INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(535, 'PARTICIPANTE', 'daniel.barbosa@spglobal.com', 'DANIEL', 'BARBOSA', '', 'S&P DOW JONES INDICES', 'SR WEB SPECIALIST', 'CDMX', 'MEXICO', 'OTHER', 'S&P DOW JONES INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(536, 'PARTICIPANTE', 'oscar.carreon@spglobal.com', 'OSCAR', 'CARREON', '', 'S&P DOW JONES INDICES', 'INDEX MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INVESTMENT STRATEGY', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(537, 'PARTICIPANTE', 'luis.chapa@spglobal.com', 'LUIS', 'CHAPA', '', 'S&P DOW JONES INDICES', 'SENIOR INDEX MANAGER', 'MEXICO CITY', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', 'OTHER', 'INDEX PROVIDER', 'OTHER', 'INDEX PROVIDER', 'OTHER', 'NONE', 'SPDJI EMAIL', ''),
(538, 'PARTICIPANTE', 'diego.colmenares@spglobal.com', 'DIEGO', 'COLMENARES', '', 'S&P DOW JONES INDICES', 'ASSOCIATE DIRECTOR', 'CDMX', 'MEXICO', 'OTHER', 'INDEX MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(539, 'PARTICIPANTE', 'margaret.dorn@spglobal.com', 'MARGARET', 'DORN', '', 'S&P DOW JONES INDICES', 'SENIOR DIRECTOR - HEAD OF ESG INDICES, NORTH ', 'CHICAGO', 'UNITED STATES', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(540, 'PARTICIPANTE', 'deborah.draeger@spglobal.com', 'DEBORAH', 'DRAEGER', '', 'S&P DOW JONES INDICES', 'SENIOR DIRECTOR', 'CHICAGO', 'UNITED STATES', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(541, 'PARTICIPANTE', 'eduardo.gonzalez@spglobal.com', 'EDUARDO', 'GONZALEZ', '', 'S&P DOW JONES INDICES', 'RM', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'VENTAS', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(542, 'PARTICIPANTE', 'diana.gutierrez@spglobal.com', 'DIANA', 'GUTIERREZ', '', 'S&P DOW JONES INDICES', 'COMMERCIAL ASSOCIATE', 'MEXICO', 'MEXICO', 'OTHER', 'PROVEEDOR INDICES', 'PRIVATE INVESTMENT COUNSEL', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(543, 'PARTICIPANTE', 'hector.huitzil@spglobal.com', 'HECTOR', 'HUITZIL', '', 'S&P DOW JONES INDICES', 'SENIOR ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(544, 'PARTICIPANTE', 'lucero.loera@spglobal.com', 'LUCERO', 'LOERA', '', 'S&P DOW JONES INDICES', 'DIRECTOR ASOCIADO', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(545, 'PARTICIPANTE', 'stefanie.macchia@spglobal.com', 'STEFANIE', 'MACCHIA', '', 'S&P DOW JONES INDICES', 'S&P DOW JONES INDICES', 'NEW YORK', 'UNITED STATES', 'OTHER', 'INDEX PROVIDER', 'OTHER', '', '', '', 'OTHER', 'MARKETING', 'OTHER', 'INDEX PROVIDER', 'OTHER', 'MARKETING', 'SPDJI EMAIL', ''),
(546, 'PARTICIPANTE', 'octavio.milan@spglobal.com', 'OCTAVIO', 'MILAN', '', 'S&P DOW JONES INDICES', 'S&P', 'MEXICO', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(547, 'PARTICIPANTE', 'berenice.nares@spglobal.com', 'BERENICE', 'NARES', 'ZAVALA', 'S&P DOW JONES INDICES', 'SALES ASSOCIATE', 'CDMX', 'MEXICO', 'OTHER', 'INDEXING PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(548, 'PARTICIPANTE', 'eduardo.olazabal@spglobal.com', 'EDUARDO', 'OLAZABAL', '', 'S&P DOW JONES INDICES', 'ASSOCIATE DIRECTOR', 'CIUDAD DE MEXICO', 'MEXICO', 'ASSET/INVESTMENT MANAGER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(549, 'PARTICIPANTE', 'fernanda.paniagua@spglobal.com', 'FERNANDA', 'PANIAGUA', '', 'S&P DOW JONES INDICES', 'CLIENT EXPERIENCE', 'MEXICO', 'MEXICO', 'ACADEMIC/INSTITUTE', 'CLIENT EXPERIENCE', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(550, 'PARTICIPANTE', 'a.ramirez@spglobal.com', 'ANA CAROLINA', 'RAMIREZ', '', 'S&P DOW JONES INDICES', 'CLIENT SERVICES', 'CDMX', 'MEXICO', 'OTHER', 'S&P - FINANCIAL SERVICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(551, 'PARTICIPANTE', 'salomon.ramirez@spglobal.com', 'SALOMON', 'RAMIREZ', 'CONTLA', 'S&P DOW JONES INDICES', 'ANALYST', 'MEXICO', 'MEXICO', 'OTHER', 'BUSINESS ANALYST', '', '', '', '', '', '', '', '', '', '', 'SPDJI WEBSITE', ''),
(552, 'PARTICIPANTE', 'stephania.r@spglobal.com', 'STEPHANIA', 'RAMIREZ', 'DE ARELLANO', 'S&P DOW JONES INDICES', 'INDEX MANAGER', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDEX MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(553, 'PARTICIPANTE', 'maria.ramos1@spglobal.com', 'MARIA', 'RAMOS', '', 'S&P DOW JONES INDICES', 'PRODUCT ANALYST - DECOMMISSION', 'CIUDAD DE MEXICO', 'MEXICO', 'INDIVIDUAL INVESTOR', '', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(554, 'PARTICIPANTE', 'jessica.rayon@spglobal.com', 'JESSICA LILIANA', 'RAYON', 'SOTO', 'S&P DOW JONES INDICES', 'INDEX MANAGER', 'MEXICO', 'MEXICO', 'EXCHANGE', '', '', '', '', '', '', '', '', '', '', '', 'OTHER', 'POR MIS COMPAÑEROS'),
(555, 'PARTICIPANTE', 'alejandra.rosas@spglobal.com', 'ALEJANDRA', 'ROSAS', 'SANCHEZ', 'S&P DOW JONES INDICES', 'MANAGER', 'CDMX', 'MEXICO', 'OTHER', 'S&P DOW JONES INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(556, 'PARTICIPANTE', 'maria.sanchez@spglobal.com', 'MARIA', 'SANCHEZ', '', 'S&P DOW JONES INDICES', 'DIRECTOR, SUSTAINABILITY INDICES PRODUCT MANA', 'MEXICO CITY', 'MEXICO', 'OTHER', 'INDEX PROVIDER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(557, 'PARTICIPANTE', 'louise.slinger@spglobal.com', 'LOUISE', 'SLINGER', '', 'S&P DOW JONES INDICES', 'GLOBAL HEAD OF MARKETING', 'NEW YORK', 'UNITED STATES', 'OTHER', 'INDEX PROVIDER', '', '', '', '', 'OTHER', 'MARKETING', 'OTHER', 'EMPLOYEE', 'OTHER', 'MARKETING', 'SPDJI EMAIL', ''),
(558, 'PARTICIPANTE', 'sergio.sosa@spglobal.com', 'SERGIO', 'SOSA', '', 'S&P DOW JONES INDICES', 'SR DATA ASSOCIATE, DATA STEWARDSHIP & ANALYSI', 'MEXICO', 'MEXICO', 'OTHER', 'INDEX MANAGEMENT', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(559, 'PARTICIPANTE', 'carlos.torres@spglobal.com', 'CARLOS', 'TORRES', 'SALINAS', 'S&P DOW JONES INDICES', 'SENIOR QUANT ANALYST', 'CIUDAD DE MEXICO', 'MEXICO', 'ETF/PASSIVE FUND MANAGER', 'INDEX MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(560, 'PARTICIPANTE', 'juan.uvence@spglobal.com', 'JUAN DAVID', 'UVENCE', 'CHIMAL', 'S&P DOW JONES INDICES', 'SENIOR INDEX MANAGER - FACTOR INDICES', 'CIUDAD DE MEXICO', 'MEXICO', 'OTHER', 'INDICES', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(561, 'PARTICIPANTE', 'marco.valdes@spglobal.com', 'MARCO', 'VALDES', '', 'S&P DOW JONES INDICES', 'INDEX SR. MANAGER - COMMODITIES', 'CIUDAD DE M??XICO', 'MEXICO', 'OTHER', 'INDEX SR MANAGER', '', '', '', '', '', '', '', '', '', '', 'SPDJI EMAIL', ''),
(562, 'CONFERENCISTAS', 'jmerinor@actinver.com.mx', 'JAIME', 'MERINO', '', 'ACTINVER', 'SUBDIRECTOR ASSET MANAGEMENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(563, 'CONFERENCISTAS', 'mdenam@inbursa.com', 'MICHEL', 'DENA', 'MARTINEZ', 'AFORE INBURSA', 'PORTAFOLIO MANAGER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(564, 'CONFERENCISTAS', 'alejandro.garza@aztlanequities.com', 'ALEJANDRO H.', 'GARZA', '', 'AZTLAN EQUITY MANAGEMENT', 'FUNDADOR Y DIRECTOR DE INVERSIONES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(565, 'CONFERENCISTAS', 'jfamiliar@worldbank.org', 'JORGE', 'FAMILIAR', '', 'BANCO MUNDIAL', 'VICEPRESIDENTE Y TESORERO/ADMINISTRADOR DE LO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(566, 'CONFERENCISTAS', 'r.jara@bbva.com', 'RAFAEL', 'JARA', 'PADILLA', 'BBVA ASSET MANAGEMENT', 'EXECUTIVE DIRECTOR, FIXED INCOME LATAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(567, 'CONFERENCISTAS', 'luisangel.rodriguez@bbva.com', 'LUIS ANGEL', 'RODRIGUEZ', 'AMESTOY', 'BBVA ASSET MANAGEMENT', 'MANAGING DIRECTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(568, 'CONFERENCISTAS', 'christian.constandse@blackrock.com', 'CHRISTIAN', 'CONSTANDSE', '', 'BLACKROCK', 'ESPECIALISTA DE ISHARES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(569, 'CONFERENCISTAS', 'fernanda.cosio@blackrock.com', 'FERNANDA', 'COSIO', '', 'BLACKROCK MEXICO', 'VICEPRESIDENTA, WEALTH MANAGEMENT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(570, 'CONFERENCISTAS', 'jose.segarra@setgo.com.mx', 'JOSE', 'SEGARRA', '', 'CFA SOCIETY MEXICO', 'PRESIDENTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(571, 'CONFERENCISTAS', 'salvador.gomez@dws.com', 'SALVADOR', 'GOMEZ', '', 'DWS INVESTMENT MANAGEMENT AMERICAS', 'MANAGING DIRECTOR HEAD OF LATIN AMERICA AND U', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(572, 'CONFERENCISTAS', 'eduardo.carrillo@finamex.com.mx', 'EDUARDO ARTURO', 'CARRILLO', 'MADERO', 'FINAMEX', 'PRESIDENTE Y DIRECTOR GENERAL DE CASA DE BOLS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(573, 'CONFERENCISTAS', 'jorge.marmolejo@franklintempleton.com', 'JORGE', 'MARMOLEJO', '', 'FRANKLIN TEMPLETON MEXICO', 'VP Y GESTOR DE PORTAFOLIO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(574, 'CONFERENCISTAS', 'aaariasg@gbm.com', 'ALICIA', 'ARIAS', '', 'GBM', 'DIRECTORA DE ADQUISICION DE ASESORES/COFUNDAD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(575, 'CONFERENCISTAS', 'ppalandrani@globalxetfs.com', 'PEDRO', 'PALANDRANI', '', 'GLOBAL X ETFS', 'DIRECTOR DE INVESTIGACION', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(576, 'CONFERENCISTAS', 'obosch@grupobmv.com.mx', 'JOSE ORIOL', 'BOSCH', 'PAR', 'GRUPO BOLSA MEXICANA DE VALORES', 'CEO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(577, 'CONFERENCISTAS', 'joseph.omalley@invesco.com', 'JOE', 'O’MALLEY', '', 'INVESCO MANAGEMENT GROUP', 'ESTRATEGA DE PRODUCTOS TEMATICOS Y ESPECIALIZ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(578, 'CONFERENCISTAS', 'tim.brennan@spglobal.com', 'TIM', 'BRENNAN', '', 'S&P DOW JONES INDICES', 'DIRECTOR DE ESTRATEGIA DE MERCADOS DE CAPITAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(579, 'CONFERENCISTAS', 'antonio.deazpiazu@spglobal.com', 'ANTONIO', 'DE AZPIAZU', 'ARMADA', 'S&P DOW JONES INDICES', 'HEAD OF EMEA & LATAM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(580, 'CONFERENCISTAS', 'manuel.gonzalez2@spglobal.com', 'MANUEL A.', 'GONZALEZ', 'ZAVALA', 'S&P DOW JONES INDICES', 'DIRECTOR SENIOR, AMERICA LATINA, CONO NORTE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(581, 'CONFERENCISTAS', 'srineel.jalagani@spglobal.com', 'SRINEEL', 'JALAGANI', '', 'S&P DOW JONES INDICES', 'DIRECTOR SENIOR, INDICES DE ESTRATEGIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(582, 'CONFERENCISTAS', 'joseph.nelesen@spglobal.com', 'JOSEPH', 'NELESEN', '', 'S&P DOW JONES INDICES', 'DIRECTOR SENIOR, ESTRATEGIA DE INVERSION EN I', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(583, 'CONFERENCISTAS', 'elena.zota@spglobal.com', 'CATALINA', 'ZOTA', '', 'S&P DOW JONES INDICES', 'DIRECTORA ASOCIADA DE GESTION DE PRODUCTOS DE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(584, 'CONFERENCISTAS', 'rramirezwebster@sherpacapital.com.mx', 'RICHARD', 'RAMIREZ-WEBSTER', '', 'SHERPA CAPITAL', 'FUNDADOR Y DIRECTOR DE INVERSIONES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(585, 'CONFERENCISTAS', 'juan_hernandez@vanguard.com', 'JUAN', 'HERNANDEZ', '', 'VANGUARD', 'DIRECTOR GENERAL PARA AMERICA LATINA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(586, 'CONFERENCISTAS', 'adriana_rangel@vanguard.com', 'ADRIANA', 'RANGEL', '', 'VANGUARD', 'HEAD OF INSTITUTIONAL SALES LATIN AMERICA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(587, 'CONFERENCISTAS', 'grodriguez@wisdomtree.com', 'GUILLERMO', 'RODRIGUEZ', '', 'WISDOMTREE INVESTMENTS', 'DIRECTOR DE AMERICA LATINA Y U.S. OFFSHORE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(588, 'PRENSA', 'eder.cruz@financierossincorbata.com', 'EDER', 'CRUZ', '', 'FINANCIEROS SIN CORBATA', 'EDITOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(589, 'PRENSA', '', 'JUDITH', 'SANTIAGO', '', 'EL ECONOMISTA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(590, 'PRENSA', '', 'LEONOR', 'FLORES', '', 'EL UNIVERSAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(591, 'PRENSA', '', 'ESTEPHANIE', 'SUAREZ', '', 'BLOOMBERG EN LINEA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(592, 'PRENSA', '', 'ARELY', 'SANCHEZ', '', 'REFORMA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(593, 'PRENSA', '', 'FERNANDA', 'ANTUNEZ', '', 'EL FINANCIERO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(594, 'PRENSA', '', 'ROBERTO', 'NOGUEZ', '', 'FORBES MEXICO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(595, 'PRENSA', '', 'CLARA', 'ZEPEDA', '', 'LA JORNADA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(596, 'PRENSA', '', 'VERONICA', 'REYNOLD', '', 'EL HERALDO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(597, 'PRENSA', '', 'RAFAEL', 'MEJIA', '', 'EXPANSION DE MEXICO ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(598, 'PRENSA', '', 'ERENDIRA', 'ESPINOSA', '', 'EXCELSIOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(599, 'PRENSA', '', 'MARIO', 'GAMEZ', '', 'EL CEO ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(600, 'PRENSA', '', 'FRANCISCO', 'DELGADO', '', 'INFOSEL-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(601, 'PRENSA', '', 'VICTOR ', 'PIZ', '', 'EL FINANCIERO BLOOMBERG', 'CONDUCTOR ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(602, 'PRENSA', '', 'EDGAR A.', 'TORRES', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(603, 'PRENSA', '', 'JORGE', 'SOBRIO', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(604, 'PRENSA', '', 'LUIS', 'CASTRO', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(605, 'PRENSA', '', 'DIEGO', 'OSMAR', '', 'EL FINANCIERO BLOOMBERG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `seg_accion`
--
ALTER TABLE `seg_accion`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `seg_modulo_id` (`seg_modulo_id`) USING BTREE;

--
-- Indices de la tabla `seg_log`
--
ALTER TABLE `seg_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `seg_sesion_id` (`seg_sesion_id`) USING BTREE,
  ADD KEY `usuario_id` (`usuario_id`) USING BTREE;

--
-- Indices de la tabla `seg_modulo`
--
ALTER TABLE `seg_modulo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `seg_permiso`
--
ALTER TABLE `seg_permiso`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `seg_accion_id` (`seg_accion_id`) USING BTREE,
  ADD KEY `usuario_id` (`usuario_id`) USING BTREE;

--
-- Indices de la tabla `seg_sesion`
--
ALTER TABLE `seg_sesion`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `usuario_id` (`usuario_id`) USING BTREE;

--
-- Indices de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `seg_accion`
--
ALTER TABLE `seg_accion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `seg_log`
--
ALTER TABLE `seg_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seg_modulo`
--
ALTER TABLE `seg_modulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `seg_permiso`
--
ALTER TABLE `seg_permiso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `seg_sesion`
--
ALTER TABLE `seg_sesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seg_usuario`
--
ALTER TABLE `seg_usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=606;
COMMIT;