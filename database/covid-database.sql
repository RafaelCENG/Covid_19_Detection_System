-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 06:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirmed_case`
--

CREATE TABLE `confirmed_case` (
  `username` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirmed_case`
--

INSERT INTO `confirmed_case` (`username`, `time`) VALUES
('kous', '2022-08-24 09:58:38'),
('str', '2022-07-22 07:03:44'),
('str1', '2022-07-22 07:31:23'),
('strikecy', '2022-05-19 13:14:42'),
('test', '2022-06-07 07:30:56'),
('strikecy', '2022-09-08 16:07:38'),
('str1', '2022-09-08 16:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `pois`
--

CREATE TABLE `pois` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `rating` double NOT NULL,
  `rating_n` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois`
--

INSERT INTO `pois` (`id`, `name`, `address`, `lat`, `lng`, `rating`, `rating_n`) VALUES
('ChIJ-f8_0B82XhMRGO3574T-GbY', 'Happytails', 'Ionias 23, Patra', 38.2372047, 21.7399468, 4.6, 69),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 'Eurobank', 'Kalavriton 32, Patra', 38.23566259999999, 21.7460654, 3.3, 23),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 'Building Cleaning - ESTIA', 'Fokeas 49, Patra', 38.2364033, 21.7441721, 4.6, 25),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 'DERMATOLOGOS GIANNAKOPOULOS Patras KOSTAS', 'Voulgareos 27, Patra', 38.2381785, 21.73845210000001, 2.3, 9),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 'Moto Shop Sotirios Andreou', 'Dimitriou Gounari 229, Patra', 38.2384409, 21.7446494, 4.6, 51),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 'CHEINOPOROS PANAGIOTIS', 'Charilaou Trikoupi 17, Patra', 38.2373118, 21.7302905, 5, 4),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 'ΖΕΛΕΚΤ ΑΕ', 'Kalavriton 2, Patra', 38.2377884, 21.7451985, 4.4, 115),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 'GroupTime Fitness', 'Akti Dimeon 35, Patra', 38.2338052, 21.725142, 5, 92),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 'Kafekouti', 'Kalavriton 23, Patra', 38.2365668, 21.7460363, 4.3, 213),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 'Coffeebrands', '3ou Oreivatikoy 10, Patra', 38.2387101, 21.7452574, 4.3, 82),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 'Chrysanthakopoulos - Idiotropo', 'Korinthou 451, Patra', 38.2388773, 21.7285079, 4.5, 11),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 'Hardwarestore.gr Χρωματοπωλείο Κωνσταντέλλος', 'Voulgareos 42, Patra', 38.2380054, 21.73934999999999, 4.9, 8),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 'C\'est Cafe', 'Kalavriton 10, Patra', 38.2372038, 21.7453741, 4.8, 29),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 'Flocafe', 'Akti Dimeon 17, Patra', 38.2376827, 21.7259359, 4.1, 246),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 'Paris house 1', 'Selefkias 11, Patra', 38.2297166, 21.7302191, 4, 1),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 'Nafsika\'s hair salon', 'Nikaias 139, Patra', 38.2344958, 21.7452054, 5, 50),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 'Αχαϊκό Εντελβάις', 'Eleftheriou Venizelou 69, Patra', 38.232962, 21.732502, 4.4, 209),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 'Coffeebox Str', 'Akti Dimeon 27, Patra', 38.2349755, 21.72532379999999, 4.3, 124),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 'Goody\'s Burger House', 'Akti Dimeon 17, Patra', 38.2379767, 21.7259916, 4.2, 546),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 'Petite Boutique', 'Akti Dimeon 18, Patra', 38.23679099999999, 21.7259139, 4.4, 413),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 'La Taste Ζαχαροπλαστείο', 'Agiou Ioanni Pratsika 71, Patra', 38.2290611, 21.7343507, 4.6, 103),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 'Πλατεία Ελευθερίας (Μικράς Ασίας)', 'Patras', 38.2358026, 21.7419403, 3.7, 125),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 'Piraeus Bank', 'Γ. Παπανδρέου, & Ιωνίας 104, Patra', 38.2296495, 21.7412741, 2.3, 23),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 'Pet Beauty G.S.', 'Βορείου Ηπείρου 170 και, Maizonos, Patra', 38.2334675, 21.7267902, 4.2, 34),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 'My market', '12, Akti Dimeon 14, Patra', 38.2392673, 21.7262653, 4.5, 504),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 'ΕΙΔΙΚΗ ΘΕΡΑΠΕΥΤΙΚΗ ΠΑΡΕΜΒΑΣΗ - Λογοθεραπεία, Λογοθ', 'Kalavriton 24-26, Patra', 38.2363018, 21.7458576, 5, 10),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 'ComTech Systems Pc-Δίκτυα-Software-Service', 'Korinthou 358, Patra', 38.2393434, 21.7283489, 4.9, 30),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 'Kokkonis Bros O.E.', 'Mpoukaouri 158, Patra', 38.2381317, 21.7395629, 4.7, 198),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 'Γιαννης Χριστοπουλος ΚΡΕΟΠΩΛΕΙΟ', 'Dimitriou Gounari 212, Patra', 38.2387755, 21.7436722, 5, 3),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 'Αρτο...Ποίηση', 'Maizonos 348, Patra', 38.2333467, 21.72667019999999, 4.7, 65),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 'εν σωματι', 'Ελευθερίου Βενιζέλου 59 &, Delvinou, Patra', 38.2326975, 21.7307916, 4.8, 6),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 'Play Opap Ε. Βενιζέλου 65', 'Eleftheriou Venizelou 65, Patra', 38.23284700000001, 21.7317312, 4, 39),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 'elastika falieris TROXOEXPRESS', 'Leoforos Georgiou Papandreou 60, Patra', 38.2330385, 21.744757, 4.9, 66),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 'Car wash elefante', 'Solomous 86, Patra', 38.23481719999999, 21.7298984, 4.1, 17),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 'Kotsokolos Konstantinos', 'Karatza 116, Patra', 38.2378572, 21.7447693, 4.6, 87),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 'Το Φωτεινό Αστέρι', 'Themistokleous 116, Patra', 38.2331756, 21.72813919999999, 4.7, 27),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 'Καφέ \"Πνύκα\"', 'Michail Psellou 5, Patra', 38.2332736, 21.7338762, 4.4, 21),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 'Períptero', '3ou Oreivatikoy 48, Patra', 38.240147, 21.7454329, 5, 1),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 'Πασαγιάννης Όμηρος', 'Kontogouri 10, Patra', 38.2313294, 21.7315513, 4.8, 4),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 'Carspa', 'Parnassou 17, Patra', 38.2325802, 21.7271952, 4.6, 10),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 'Φαρμακείο Δήμητρας Κοτσιρίλου & ΣΙΑ Ο.Ε.', 'Αγίας Τριάδος 52 & Βορείου Ηπείρου 3, Patra', 38.2359522, 21.7374126, 5, 6),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 'butcher Cacoyannis', 'Solomous 148, Patra', 38.2317336, 21.72934619999999, 5, 30),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 'Tip Top', 'Dimitriou Gounari 223, Patra', 38.2385156, 21.7444552, 4.6, 102),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 'Πλυντήριο αυτοκινήτων (self service)', 'Ionias 133, Patra', 38.2300179, 21.7407132, 5, 5),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 'WODBOX', 'Leoforos Georgiou Papandreou 91, Patra', 38.230732, 21.742805, 4.8, 25),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 'ΚΟΥΝΑΒΗΣ ΑΝΔΡΕΑΣ', 'Salaminos 30, Patra', 38.2293827, 21.727438, 4.2, 11),
('ChIJeWquqyE2XhMRLB_819PA_b0', 'Sotiris Koulis Family', 'Archiepiskopou Ierotheou 105, Patra', 38.2370706, 21.7345796, 5, 1),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 'ΑΡΤΟΓΕΥΣΕΙΣ ΑΝΔΡΙΚΟΠΟΥΛΟΣ ΧΑΡ. & ΣΙΑ Ο.Ε.', 'Solomous 30, Patra', 38.2387705, 21.7306217, 4.5, 60),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 'Coffee stay', 'Charilaou Trikoupi 17, Patra', 38.2373118, 21.7302905, 5, 3),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 'Music Power ΠΕΛΕΚΟΥΔΑΣ Β.', 'Korinthou 443, Patra', 38.2391879, 21.7285765, 4.9, 24),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 'www.abbyspaws.gr', 'Themistokleous 56, Patra', 38.2373518, 21.7303909, 5, 1),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 'Μυλωνάς Ζαχαροπλαστείο', 'Leoforos Georgiou Papandreou 44, Patra', 38.23405150000001, 21.7457064, 4.4, 107),
('ChIJfdC04No3XhMR8JrkZLvazh4', 'AlfaEstiasi', 'Selefkias 14, Patra', 38.2294601, 21.73060079999999, 5, 3),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 'Μπαρμπέρικο - Barber Shop', 'Agias Triados 20, Patra', 38.23728699999999, 21.736776, 5, 57),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 'Our Great Circus', 'Archiepiskopou Kirillou 14, Patra', 38.23651510000001, 21.7264312, 4.6, 583),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 'Σαπουναρία Πάτρας (S.P)', 'Πόντου κ, Efesou 47, Patra', 38.235325, 21.741015, 4.8, 4),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 'KARELIS KONSTANTINOS', 'Paleon Patron Germanou 179, Patra', 38.2401851, 21.7451425, 5, 2),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 'Patras Moto Technology', 'Dimitriou Maximou 8, Patra', 38.2343377, 21.7259251, 4.9, 105),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 'Media Markt Πάτρα', 'Akti Dimeon 17, Patra', 38.23773599999999, 21.72625249999999, 4.1, 1257),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 'Patras\' South Park - Notio Parko Patras', 'Akti Dimeon 28, Patra', 38.23485300000001, 21.7243963, 4.5, 2085),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 'GMC-SHOP_Super Market Θεοδωρόπουλος', 'Archiepiskopou Ierotheou 51, Patra', 38.236013, 21.7283456, 4.6, 58),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 'Max Perry', 'Leoforos Georgiou Papandreou 59, Patra', 38.2331948, 21.745112, 4.3, 155),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 'Σκλαβενίτης', 'Parnassou 16, Patra', 38.2326749, 21.72816259999999, 4.5, 725),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 'The Juice Bar', 'Smirnis 110, Patra', 38.2370436, 21.7369206, 4.4, 139),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 'Δ.ΕΠΙΣΚΕΥΑΣΤΙΚΗ', 'Korinthou 426-430, Patra', 38.23407700000001, 21.727605, 4.7, 7),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 'CyberArena Internet Cafe', 'Solomous 72-76, Patra', 38.2361853, 21.7301181, 4.7, 124),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 'Ο ΛΕΩΝΙΔΑΣ & ΟΙ 300', 'Fanariou 73, Patra', 38.2331936, 21.7431569, 4.6, 5),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 'Δακόλα Αγγελική Α', 'Paleon Patron Germanou 183-193, Patra', 38.239739, 21.7458183, 4.9, 25),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 'Φραγκάκης ΟΕ', 'Souniou 119, Patra', 38.2299034, 21.7262048, 5, 7),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 'Παραδοσιακό Οπωροπαντοπωλείο', '6 συντάγματος 2, Πάτρα', 38.2401769, 21.7456062, 4.9, 16),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 'Gitsis Konstantinos', 'Ionias 54, Patra', 38.2359271, 21.7399551, 4.3, 99),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 'Vasiliki Andrikopoulou', 'Mesologgiou 11, Patra', 38.240273, 21.7334759, 5, 35),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 'Libido', 'Akti Dimeon 17, Patra', 38.23771229999999, 21.72594149999999, 4.5, 569),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 'Arapis Market \"3A Arapis\" Ltd', 'Panachaikou 65, Patra', 38.237414, 21.733877, 4.2, 91),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 'NIKOLOPOULOS PANAGIOTIS \"TO PARADOSIAKO PSOMI\"', 'Solomous 75, Patra', 38.2367694, 21.7303194, 3, 2),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 'Φροντιστήριο Φάσμα', 'Ελευθερίου Βενιζέλου και Γεωργιου Παπανδρέου ,Πάτρ', 38.22967259999999, 21.7411852, 5, 6),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 'ΓΑΣΠΑΡΙΝΑΤΟΥ ΠΑΥΛΙΝΑ ΘΕΟΦΑΝΗΣ', 'Ionias 103, Patra', 38.23256370000001, 21.74072280000001, 5, 21),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 'RAPTI Boutri Vasiliki Zakinthinos Xristos Accounti', 'Archiepiskopou Kirillou 2, Patra', 38.2365548, 21.7259375, 4.4, 7),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 'Αχαϊκή Διαχειριστική (Επαγγ. Καθαρισμοί)', 'Solomou 24, Patra', 38.238876, 21.730667, 4.1, 20),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 'liberis ψωμι-καφες-γλυκο', 'Alexandrou Papanastasiou 16, Patra', 38.2303443, 21.7279804, 4.5, 24),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 'The Bright Star', 'Themistokleous 116, Patra', 38.2331756, 21.72813919999999, 4.7, 27),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 'Ανδρικόπουλος Super Market', 'Solomous 53, Patra', 38.2378785, 21.7305419, 4.4, 107),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 'ΣΥΜΕΩΝΙΔΗΣ ΠΕΡΙΚΛΗΣ', 'Smirnis 72, Patra', 38.2374742, 21.7338221, 5, 32),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 'Zelekt S.A.', 'Kalavriton 2, Patra', 38.23776830000001, 21.7452253, 4.4, 115),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 'Cafe Ανδρέας', 'Solomous 140, Patra', 38.2324011, 21.7295204, 3.2, 18),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 'Et Cafe', 'Leoforos Georgiou Papandreou 59A, Patra', 38.23302, 21.7450344, 4.5, 167),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 'Micromed Διαγνωστικά', 'Eleftheriou Venizelou 67, Patra', 38.2330242, 21.7323019, 4.8, 4),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 'Συνεργείο Αυτοκινήτων παντός τύπου Κατσικάκης Νικό', 'Pindou 3, Patra', 38.23078, 21.7434569, 5, 13),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', '\"Η Καλή\" Καρβελά Καλιρρόη', 'Σολωμού κ Δελφων 32Πάτρα, Patra', 38.2315032, 21.7296407, 4.7, 43),
('ChIJowSURxM3XhMRmbAxgMezpuk', 'Areti Textile', 'Ionias 39, Patra', 38.2364395, 21.7400384, 5, 3),
('ChIJOztsXBk2XhMRIu0EEdF27js', 'PHARMACY Damvounelis G. Kon / nos', 'Leoforos Georgiou Papandreou 85, Patra', 38.2310536, 21.7431452, 5, 3),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 'Axizei', 'Mesologgiou 69, Patra', 38.2365135, 21.7328594, 4.8, 4),
('ChIJP-URlSY2XhMRXXseyEczfzI', 'MY COFFEE', 'Solomous 82Α, Patra', 38.2357848, 21.7300455, 4.6, 62),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 'Κολυμβητήριο ΝΟΠ (Nautical Club of Patras)', 'Akti Dimeon, Patra', 38.2390031, 21.7249076, 4.4, 314),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 'Edgy Cuts', 'Archiepiskopou Ierotheou 89, Patra', 38.2366599, 21.7333179, 5, 24),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 'ΝΤΟΥΒΑΣ ΑΘΑΝΑΣΙΟΣ', 'Voriou Ipirou 73, Patra', 38.233711, 21.7328662, 4.7, 17),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 'Kōnstantínos', 'Platia Voriou Ipirou 102, Patra', 38.2337332, 21.7313892, 5, 10),
('ChIJqXfObCc2XhMRnI9QBuMheio', 'Abige Hair&Style', 'Kapodistriou 28, Patra', 38.2385109, 21.7296609, 4.9, 51),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 'Coffee Island', 'Κορίνθου &, Dimitriou Maximou 22, Patra', 38.2341489, 21.7279444, 4.7, 177),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 'Excellent Car Wash', 'Dimitriou Maximou 22, Patra', 38.2343274, 21.7281153, 4.4, 7),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 'Μπουκέτο Μπαλόνια', 'Korinthou, Patra', 38.2357305, 21.7278594, 4.4, 34),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 'Paris house 2', 'Selefkias 11, Patra', 38.2297166, 21.7302191, 3.5, 2),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 'Subaru Service - Παπανδρέου Παναγιώτης', 'Maizonos 313, Patra', 38.2359621, 21.7270514, 4.8, 75),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 'Καφεκοπτείο Μεξικάνος', 'Korinthou 453, Patra', 38.2386062, 21.7284374, 4.7, 110),
('ChIJs13fMVdJXhMRdfoTBribjjc', 'Moccup', 'Dimitriou Gounari 195, Patra', 38.23973549999999, 21.7423175, 4.7, 17),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 'Σκλαβενιτης', 'Ιωνίας 90 &, Damonos, Patra', 38.2348349, 21.7401493, 4.5, 66),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 'Coffee Lab ΠΑΠΑΝΔΡΕΟΥ 49 ΠΑΤΡΑ', 'Leoforos Georgiou Papandreou 49, Patra', 38.2338846, 21.7458634, 4.6, 28),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 'AutoSport', 'Eleftheriou Venizelou 42-46, Patra', 38.23253649999999, 21.7311391, 4.7, 87),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 'Καφε Φιλικων', 'Paleon Patron Germanou 161-163, Patra', 38.24014040000001, 21.7452834, 4.6, 51),
('ChIJSWbYERM3XhMRX5qduCDaczY', 'ΦΙΛΙΠΠΟΣ ΑΛΕΥΡΑ-ΜΠΑΧΑΡΙΚΑ-ΖΩΟΤΡΟΦΕΣ', 'Ionias 114, Patra', 38.2339731, 21.7402237, 4.6, 35),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 'ΝΑΥΤΙΚΟΣ ΟΜΙΛΟΣ ΠΑΤΡΩΝ', 'Akti Dimeon 151, Patra', 38.23881739999999, 21.7251731, 4.7, 13),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 'Coffee Amargo', 'Leoforos Georgiou Papandreou 51, Patra', 38.233572, 21.7455452, 4.6, 51),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 'Παραδοσιακό Παντοπωλείο Στασινόπουλος', 'Korinthou 370-374, Patra', 38.2382114, 21.7281936, 4.6, 14),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 'Κωτσόπουλος \"Ευθυγραμισεις\"', 'Dimitriou Maximou 6, Patra', 38.23433560000001, 21.7257251, 4.9, 162),
('ChIJu-vWGU03XhMRQPtHWoqT688', 'Φούρνος Δημητρόπουλος', 'Skoufa 11, Patra', 38.23240670000001, 21.730495, 4.6, 11),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 'Opap play Γ. Παπανδρεου 49', 'Leoforos Georgiou Papandreou 49, Patra', 38.2337199, 21.7457107, 3.7, 18),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 'SPORTS HOUSE', 'Smirnis 250, Patra', 38.23710729999999, 21.7438912, 4.6, 57),
('ChIJU9iH_p83XhMRvlOk16boN8k', 'Grill house πατρα', 'Voriou Ipirou 89, Patra', 38.2334066, 21.7312731, 4.4, 33),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 'DIVINE CAFE', 'Delfon 30, Patra', 38.23157129999999, 21.7293953, 4.5, 24),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 'Lazaridis, J., Ltd', 'Akti Dimeon 35, Patra', 38.233859, 21.7251125, 4.9, 282),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 'auto giannakopoulos', 'Korinthou 483, Patra', 38.23571010000001, 21.7278575, 4.4, 30),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 'Πέντε Δρόμοι', 'Agias Triados 20, Patra', 38.23710550000001, 21.7369131, 0, 0),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 'Kokois George', 'Dorileou 4, Patra', 38.2337265, 21.7454872, 4.8, 25),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 'Andrikópoulos', 'Nikita 60, Patra', 38.2400806, 21.736366, 4.5, 126),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 'Theos, Lambros, & Co. O.E.', 'Voriou Ipirou 23, Patra', 38.2350382, 21.735943, 4.8, 36),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 'Ζαχαροπλαστείο Γιώργος', 'Smirnis 231, Patra', 38.2372635, 21.7433585, 4.6, 21),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 'Marouda square', 'Karatza 114, Patra', 38.2381883, 21.7446046, 3.9, 299),
('ChIJVzAMZC82XhMRbhndkrdgnck', 'Ena Cash And Carry', 'Akti Dimeon 28, Patra', 38.2346426, 21.7252919, 4.2, 69),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 'Mary Flogera Hairdressing Room', 'Georgiou Olimpiou 80, Patra', 38.2387977, 21.7346318, 4.9, 12),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 'House Art - Είδη Διακόσμησης - Αυτοκόλλητα, ταπετσ', 'Ακτή Δυμαίων 10 & Ευμήλου, Georgiou Olimpiou, Patr', 38.2397708, 21.7266125, 4.7, 604),
('ChIJW42MUT03XhMRGUH6OjHcTac', 'Didachos Bros - Auto', 'Dimitriou Maximou 54, Patra', 38.23408060000001, 21.7296291, 4.9, 68),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 'Ευθυγραμμίσεις Μπαρδάκης', 'Leoforos Georgiou Papandreou 72, Patra', 38.2316211, 21.7434209, 4.8, 167),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 'Cooper Coffee & Snack', '3ου ορειβατικού κ, Maragkopoulou, Patra', 38.23815349999999, 21.7453787, 4.4, 415),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 'Ανδρικοπουλος Super Market', 'Karatza 114, Patra', 38.2378692, 21.7444974, 4.3, 123),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 'Nina Cafe Bar', 'Voulgareos 35, Patra', 38.2380662, 21.739193, 4, 1),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 'Σταματόπουλος Βασίλειος - Ο Γερμανός', 'Voriou Ipirou 139, Patra', 38.2333117, 21.7270617, 4.9, 18),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 'Theodosiou', 'Solomous 68, Patra', 38.23646749999999, 21.7302342, 4.3, 3),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 'ΚΡΕΑΤΑ ΑΧΑΙΑΣ Μανίκας Βασίλειος', 'Μεσολογγίου, Kapodistriou 44, Patra', 38.2383148, 21.7312379, 4.7, 6),
('ChIJXw7utONJXhMRtc156JXTs80', 'MILOS', '3ou Oreivatikoy 24, Patra', 38.2393423, 21.7453243, 4.5, 49),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 'nias hair art', 'Mesologgiou 19, Patra', 38.2397484, 21.7333301, 4.3, 6),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 'Way Out Cafe', 'Ionias 1, Patra', 38.23845540000001, 21.7395409, 4.9, 23),
('ChIJY4432yU2XhMR2jrWEN7aWls', 'Loukopoulou Georgia', 'Korinthou 418-420, Patra', 38.2345139, 21.7276574, 4.4, 7),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 'JUMBO', 'Akti Dimeon 17, Patra', 38.2373882, 21.7263741, 4.1, 1960),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 'Galaxias', 'Panachaikou 76, Patra', 38.2360767, 21.7337615, 4.4, 248),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 'Κοσμοπουλος Θεοφάνης&Γεώργιος', 'Leoforos Georgiou Papandreou 80, Patra', 38.2308628, 21.7427149, 4.5, 146),
('ChIJz_07-W03XhMRvRymy1Ccda0', 'KEEP THE CUP', 'Solomous 83, Patra', 38.2362409, 21.7303368, 4.7, 60),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 'Σχολή Οδηγών - Δώρα Κ. Γιαννακοπούλου', 'Ionias 62, Patra', 38.2362059, 21.7399308, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `pois_accounting`
--

CREATE TABLE `pois_accounting` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_accounting`
--

INSERT INTO `pois_accounting` (`POIs_ID`) VALUES
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg'),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA'),
('ChIJ663QGt5JXhMRLpPwwCgD6po'),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4'),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI'),
('ChIJlQV3HyY2XhMRpjjYBlws0d4');

-- --------------------------------------------------------

--
-- Table structure for table `pois_atm`
--

CREATE TABLE `pois_atm` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_atm`
--

INSERT INTO `pois_atm` (`POIs_ID`) VALUES
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI'),
('ChIJ310hRBU2XhMRpBbkVZZbYIo'),
('ChIJ47FVOOhJXhMRbXLg96azRkk'),
('ChIJ59AOJyY2XhMR8N2c37sYaTg'),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ'),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk'),
('ChIJMe6qq95JXhMRQnl3pHRF_fM'),
('ChIJse48wcJJXhMRJLB3qdkZp64'),
('ChIJ_75wXd5JXhMR3nEZgNwpaso');

-- --------------------------------------------------------

--
-- Table structure for table `pois_bakery`
--

CREATE TABLE `pois_bakery` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_bakery`
--

INSERT INTO `pois_bakery` (`POIs_ID`) VALUES
('ChIJ6-g47SM2XhMRoBC9mS6dkKE'),
('ChIJaVrgkCU2XhMRvIk-RC18hoM'),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo'),
('ChIJEzGdRic2XhMRYTCEu8QXinw'),
('ChIJFaU1TBw2XhMRq87NWxs61hA'),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY'),
('ChIJKy7R3SY2XhMReaxikN_Jbb0'),
('ChIJkyMAAtxJXhMReRGaeAMIras'),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY'),
('ChIJpYe_5iM2XhMRxwCviSFImLA'),
('ChIJu-vWGU03XhMRQPtHWoqT688'),
('ChIJXw7utONJXhMRtc156JXTs80');

-- --------------------------------------------------------

--
-- Table structure for table `pois_bank`
--

CREATE TABLE `pois_bank` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_bank`
--

INSERT INTO `pois_bank` (`POIs_ID`) VALUES
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI'),
('ChIJ310hRBU2XhMRpBbkVZZbYIo'),
('ChIJ59AOJyY2XhMR8N2c37sYaTg'),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ'),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk'),
('ChIJMe6qq95JXhMRQnl3pHRF_fM'),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g'),
('ChIJse48wcJJXhMRJLB3qdkZp64');

-- --------------------------------------------------------

--
-- Table structure for table `pois_bar`
--

CREATE TABLE `pois_bar` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_bar`
--

INSERT INTO `pois_bar` (`POIs_ID`) VALUES
('ChIJAxo6z91JXhMRW0HHI55w3YY'),
('ChIJCX9HZedJXhMRg5p7O7JXVxo'),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A'),
('ChIJGyvrM91JXhMRcWNtBtoQDOo'),
('ChIJpRuijI9JXhMR8QWStdLh_oc'),
('ChIJpS5vquBJXhMR8oU040lFFoU'),
('ChIJpUKWctxJXhMRpG8wNzBnwE0'),
('ChIJS35t8d1JXhMRs-NcRKrkiDY'),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ'),
('ChIJWUxdrelJXhMRfiIBLlftogk'),
('ChIJ_T3emuBJXhMRFbT9YL3j32E');

-- --------------------------------------------------------

--
-- Table structure for table `pois_beauty_salon`
--

CREATE TABLE `pois_beauty_salon` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_beauty_salon`
--

INSERT INTO `pois_beauty_salon` (`POIs_ID`) VALUES
('ChIJ0SLujdJJXhMReoZCMz2q5gU'),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0'),
('ChIJr5-c39hJXhMRwfGwb6llWq8'),
('ChIJZfOTMwhJXhMRacg9z9GL3As'),
('ChIJzTq70N1JXhMRIVAT4ThgxSw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_book_store`
--

CREATE TABLE `pois_book_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_book_store`
--

INSERT INTO `pois_book_store` (`POIs_ID`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o'),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU'),
('ChIJ63usud1JXhMRUS8wsjnW_cE'),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic'),
('ChIJu3E6_NtJXhMRThQBLQwqhow'),
('ChIJW2MRl91JXhMRZKkwwIR0xGY'),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks');

-- --------------------------------------------------------

--
-- Table structure for table `pois_cafe`
--

CREATE TABLE `pois_cafe` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_cafe`
--

INSERT INTO `pois_cafe` (`POIs_ID`) VALUES
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw'),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag'),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU'),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg'),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE'),
('ChIJ71wmUS82XhMRKso4jVV3SaI'),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g'),
('ChIJ8ShAw91JXhMRVTCotrEjofM'),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc'),
('ChIJCcwj8udJXhMRSx5MEED6Ng8'),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw'),
('ChIJCX9HZedJXhMRg5p7O7JXVxo'),
('ChIJdRnTGehJXhMRC_2WB2YrFVc'),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A'),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg'),
('ChIJf3-AwtxJXhMRQw5tNnZ7858'),
('ChIJfQQHiudJXhMR-4G7rHZsOF4'),
('ChIJGyvrM91JXhMRcWNtBtoQDOo'),
('ChIJgzsL5S5JXhMRGNrT3szvqVA'),
('ChIJhTC7IiA2XhMRDXXA5keTbkU'),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8'),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw'),
('ChIJK9JxXd5JXhMRGFctHHOYk9U'),
('ChIJkRhinSg2XhMRipOQ12_hPzI'),
('ChIJkWR0G-hJXhMROoDIrRsTL_4'),
('ChIJkzfBJtlJXhMREAFzqdAmezs'),
('ChIJLdeECdxJXhMRQebIGUOpSeA'),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ'),
('ChIJn-oVOT1JXhMRXanG5trXMNM'),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M'),
('ChIJncMSgNxJXhMR4DF_487vzUE'),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc'),
('ChIJnyp2TjJJXhMRqALyopTO6RA'),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k'),
('ChIJOWm2Id1JXhMRp2eZn4eANX8'),
('ChIJP-URlSY2XhMRXXseyEczfzI'),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0'),
('ChIJpUKWctxJXhMRpG8wNzBnwE0'),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc'),
('ChIJReMkcU03XhMRHtlq-RGG_Mc'),
('ChIJs13fMVdJXhMRdfoTBribjjc'),
('ChIJS8X0pWY3XhMRzrGX7803y-8'),
('ChIJSfhTP95JXhMR-zVAEzOU464'),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8'),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg'),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I'),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio'),
('ChIJXw7utONJXhMRtc156JXTs80'),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8'),
('ChIJyRizl0hJXhMRYIWm34jaikk'),
('ChIJz_07-W03XhMRvRymy1Ccda0'),
('ChIJ_1hdfNxJXhMROQHnwImcpxE'),
('ChIJ_7nx_mxJXhMRSrp68dDU67M'),
('ChIJ_T3emuBJXhMRFbT9YL3j32E'),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_car_dealer`
--

CREATE TABLE `pois_car_dealer` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_car_dealer`
--

INSERT INTO `pois_car_dealer` (`POIs_ID`) VALUES
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4');

-- --------------------------------------------------------

--
-- Table structure for table `pois_car_repair`
--

CREATE TABLE `pois_car_repair` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_car_repair`
--

INSERT INTO `pois_car_repair` (`POIs_ID`) VALUES
('ChIJ0RiAPOJJXhMR9e-rNN13X9o'),
('ChIJb6ZtRxw2XhMR3wPLklk4dic'),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI'),
('ChIJgwBl6SU2XhMRMjbygjBSboQ'),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao'),
('ChIJRbfvEiY2XhMRy1BekwIyAC4'),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI'),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8'),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y'),
('ChIJVeODuCE2XhMRcDFqFETdzdw'),
('ChIJW42MUT03XhMRGUH6OjHcTac'),
('ChIJW666Vxk2XhMRo_D2yOU6YsY'),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ');

-- --------------------------------------------------------

--
-- Table structure for table `pois_car_wash`
--

CREATE TABLE `pois_car_wash` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_car_wash`
--

INSERT INTO `pois_car_wash` (`POIs_ID`) VALUES
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o'),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8'),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI'),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I');

-- --------------------------------------------------------

--
-- Table structure for table `pois_casino`
--

CREATE TABLE `pois_casino` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_casino`
--

INSERT INTO `pois_casino` (`POIs_ID`) VALUES
('ChIJB0BpiiM2XhMR0j9vb-iKkoc'),
('ChIJU2cC_5A3XhMRTltBi0TpJVo');

-- --------------------------------------------------------

--
-- Table structure for table `pois_church`
--

CREATE TABLE `pois_church` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_church`
--

INSERT INTO `pois_church` (`POIs_ID`) VALUES
('ChIJYezHP91JXhMRerXmnLRu6xs');

-- --------------------------------------------------------

--
-- Table structure for table `pois_city_hall`
--

CREATE TABLE `pois_city_hall` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_city_hall`
--

INSERT INTO `pois_city_hall` (`POIs_ID`) VALUES
('ChIJu4RiQNxJXhMRAQUqW9MVAVI');

-- --------------------------------------------------------

--
-- Table structure for table `pois_clothing_store`
--

CREATE TABLE `pois_clothing_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_clothing_store`
--

INSERT INTO `pois_clothing_store` (`POIs_ID`) VALUES
('ChIJ0-KER9xJXhMRl3X7zCQ1yks'),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0'),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E'),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s'),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A'),
('ChIJ6aiJL91JXhMRdtCJALBOZl8'),
('ChIJA0rrId1JXhMRkMcQDP_FF9U'),
('ChIJeyeosMJJXhMRtDLyzhTEbGk'),
('ChIJGb49U91JXhMRVTXGitn-18A'),
('ChIJp69bRt1JXhMRLcacpegzEHM'),
('ChIJPzt7ad1JXhMRGFvhsh_u14k'),
('ChIJQ_LStsJJXhMRenKaHK-PKUI'),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4'),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM'),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU'),
('ChIJv9c17udJXhMR4Wfccn7HIws'),
('ChIJvXsLLNxJXhMRIJvrwlA58MA'),
('ChIJV_4IWd1JXhMRYeQYVYtdnow'),
('ChIJW3ewRd1JXhMR24JhBJLE98A'),
('ChIJ_aH-l91JXhMRTIMZDyA117U');

-- --------------------------------------------------------

--
-- Table structure for table `pois_convenience_store`
--

CREATE TABLE `pois_convenience_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_convenience_store`
--

INSERT INTO `pois_convenience_store` (`POIs_ID`) VALUES
('ChIJdwNXM-hJXhMRi_BfcTlRcpU'),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4');

-- --------------------------------------------------------

--
-- Table structure for table `pois_dentist`
--

CREATE TABLE `pois_dentist` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_dentist`
--

INSERT INTO `pois_dentist` (`POIs_ID`) VALUES
('ChIJidZ1J-hJXhMREOf2Hl6LtjE');

-- --------------------------------------------------------

--
-- Table structure for table `pois_department_store`
--

CREATE TABLE `pois_department_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_department_store`
--

INSERT INTO `pois_department_store` (`POIs_ID`) VALUES
('ChIJi-PbLN1JXhMRAlEw_WH3wVY'),
('ChIJqf86hOdJXhMRRbJprshqh38');

-- --------------------------------------------------------

--
-- Table structure for table `pois_doctor`
--

CREATE TABLE `pois_doctor` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_doctor`
--

INSERT INTO `pois_doctor` (`POIs_ID`) VALUES
('ChIJ0a4YHeBJXhMRgESyORq9JSo'),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8'),
('ChIJd6BFedxJXhMRn7tE7kY38uw'),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc'),
('ChIJHbwHNtxJXhMROpsRtSXroJ0'),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE'),
('ChIJJaO96txJXhMRRvExSYtoakQ'),
('ChIJL0fNGehJXhMRlVU3gQjfRdM'),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk'),
('ChIJr5-c39hJXhMRwfGwb6llWq8');

-- --------------------------------------------------------

--
-- Table structure for table `pois_drugstore`
--

CREATE TABLE `pois_drugstore` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_drugstore`
--

INSERT INTO `pois_drugstore` (`POIs_ID`) VALUES
('ChIJdz60KyA2XhMRiCVdmLDxyx8'),
('ChIJOztsXBk2XhMRIu0EEdF27js'),
('ChIJYTN3rt1JXhMRwPer72FVYjw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_electronics_store`
--

CREATE TABLE `pois_electronics_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_electronics_store`
--

INSERT INTO `pois_electronics_store` (`POIs_ID`) VALUES
('ChIJA8XmnCc2XhMRoA2h45hqTg4'),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw'),
('ChIJGYPtKyY2XhMRDq5n0hrb108'),
('ChIJLzvSjNtJXhMRaLcN70J3l3k'),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw'),
('ChIJn51UoxY2XhMRf1wTCw8qdLI'),
('ChIJn65BbOJJXhMRRvBmSjqKNX0'),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo'),
('ChIJRTEamHO-oRQRG1JF5zvvqd4'),
('ChIJSap7relJXhMRUkopSQsXwuI');

-- --------------------------------------------------------

--
-- Table structure for table `pois_establishment`
--

CREATE TABLE `pois_establishment` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_establishment`
--

INSERT INTO `pois_establishment` (`POIs_ID`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o'),
('ChIJ-f8_0B82XhMRGO3574T-GbY'),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI'),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks'),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg'),
('ChIJ0a4YHeBJXhMRgESyORq9JSo'),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o'),
('ChIJ0SLujdJJXhMReoZCMz2q5gU'),
('ChIJ0We6ISc2XhMR0JstwP2xC6s'),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4'),
('ChIJ0YP89yw3XhMRu0_gcptybS4'),
('ChIJ17ejkhk2XhMRPsEejntj8Mc'),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw'),
('ChIJ24KnIg83XhMRX_b9V6y7PKE'),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc'),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0'),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg'),
('ChIJ310hRBU2XhMRpBbkVZZbYIo'),
('ChIJ34_kIOBJXhMR7imf2tRjF3o'),
('ChIJ3f25nudJXhMRVQoX1IsZr1w'),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU'),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag'),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk'),
('ChIJ47FVOOhJXhMRbXLg96azRkk'),
('ChIJ49E6U91JXhMR6q8NxVCECY0'),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU'),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E'),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg'),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw'),
('ChIJ53SyUV83XhMRKCtMj0KPkBI'),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU'),
('ChIJ59AOJyY2XhMR8N2c37sYaTg'),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s'),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE'),
('ChIJ63usud1JXhMRUS8wsjnW_cE'),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A'),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA'),
('ChIJ663QGt5JXhMRLpPwwCgD6po'),
('ChIJ6aiJL91JXhMRdtCJALBOZl8'),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4'),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE'),
('ChIJ71wmUS82XhMRKso4jVV3SaI'),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g'),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g'),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI'),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8'),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ'),
('ChIJ876i5edJXhMR67q92o6fTlw'),
('ChIJ88kULCM2XhMRXqQTjKQz9-s'),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44'),
('ChIJ8ShAw91JXhMRVTCotrEjofM'),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk'),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw'),
('ChIJ8yJ6relJXhMRo2XqEv0keZU'),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI'),
('ChIJA0rrId1JXhMRkMcQDP_FF9U'),
('ChIJa4Go5yc2XhMR-30hKzhbx_c'),
('ChIJA5DOIt9JXhMRJLGwefvfnYk'),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck'),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4'),
('ChIJA8XmnCc2XhMRoA2h45hqTg4'),
('ChIJaeHBPuBJXhMRuNbzVocLWWA'),
('ChIJaeM-2txJXhMR-jNLpMJiuS8'),
('ChIJaf7ny95JXhMREjCDphUgY9k'),
('ChIJaSelXrpJXhMRn8muKjS7tz8'),
('ChIJaVrgkCU2XhMRvIk-RC18hoM'),
('ChIJAVs4m443XhMRBbxmCCI6f5Y'),
('ChIJAxo6z91JXhMRW0HHI55w3YY'),
('ChIJb-UU-uBJXhMR3im-80UB9EU'),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc'),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA'),
('ChIJb2vum-dJXhMRHv6ovkdcrbA'),
('ChIJB5_cotlJXhMRYU5IInw7QSQ'),
('ChIJb6ZtRxw2XhMR3wPLklk4dic'),
('ChIJb8dRjuBJXhMRn7kXnVAElMs'),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o'),
('ChIJbaPLFeJJXhMRYPqDu15HzSs'),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc'),
('ChIJBfAfbxA2XhMRwQp5GijpdHg'),
('ChIJbxPEONlJXhMRa8kVlAv7xO4'),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY'),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8'),
('ChIJC5wDAOhJXhMRbEJgpo45o_o'),
('ChIJcbyyvvBJXhMRSm_GgkofFOg'),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw'),
('ChIJCcwj8udJXhMRSx5MEED6Ng8'),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw'),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg'),
('ChIJcWjkR91JXhMR9oP34Ui6bqA'),
('ChIJCX9HZedJXhMRg5p7O7JXVxo'),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk'),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8'),
('ChIJCyeO-eBJXhMRAkMflWn6zlU'),
('ChIJD12aA_c3XhMR3g61s7cKpQc'),
('ChIJd6BFedxJXhMRn7tE7kY38uw'),
('ChIJdRnTGehJXhMRC_2WB2YrFVc'),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8'),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU'),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A'),
('ChIJdz60KyA2XhMRiCVdmLDxyx8'),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI'),
('ChIJe-PPlfpJXhMREHnWmKLXhLo'),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo'),
('ChIJE5rqhOFJXhMREi7B5EA45Dw'),
('ChIJe6e_jdxJXhMR8_viy49sZBo'),
('ChIJeePefNxJXhMRfsPuJU5hSXs'),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI'),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU'),
('ChIJESy5R-hJXhMRLxB4IK1HxUU'),
('ChIJeT2kxTo2XhMRCntpyoHXt2A'),
('ChIJeWquqyE2XhMRLB_819PA_b0'),
('ChIJeyeosMJJXhMRtDLyzhTEbGk'),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0'),
('ChIJEzGdRic2XhMRYTCEu8QXinw'),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg'),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI'),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k'),
('ChIJf3-AwtxJXhMRQw5tNnZ7858'),
('ChIJF4cVh95JXhMRQOmhXwyCjRw'),
('ChIJFaU1TBw2XhMRq87NWxs61hA'),
('ChIJfdC04No3XhMR8JrkZLvazh4'),
('ChIJfQQHiudJXhMR-4G7rHZsOF4'),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI'),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw'),
('ChIJG-nbR95JXhMRn-Nt0pw6n38'),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE'),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc'),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg'),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc'),
('ChIJGb49U91JXhMRVTXGitn-18A'),
('ChIJgfsxwudJXhMRKnbcZM8BvL0'),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI'),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY'),
('ChIJgwBl6SU2XhMRMjbygjBSboQ'),
('ChIJGYPtKyY2XhMRDq5n0hrb108'),
('ChIJGyvrM91JXhMRcWNtBtoQDOo'),
('ChIJGyYZay82XhMRYIH_uvIjIH8'),
('ChIJgzsL5S5JXhMRGNrT3szvqVA'),
('ChIJh003YSY2XhMRXA3c9sHdMAw'),
('ChIJH1FcPxw2XhMRzjMDiIppoZg'),
('ChIJh23mZNxJXhMR_FJs8zkMjSc'),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc'),
('ChIJH50SYN5JXhMRNZ0H3mKanto'),
('ChIJHbwHNtxJXhMROpsRtSXroJ0'),
('ChIJHf2oKOhJXhMRU48jxmo1y6s'),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A'),
('ChIJhTC7IiA2XhMRDXXA5keTbkU'),
('ChIJhVyNxiU2XhMR-047iPt8FPY'),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8'),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q'),
('ChIJhYRbv8JJXhMRhO8shM1QpIw'),
('ChIJHz0GwiY2XhMRl8CM130I0qw'),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY'),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE'),
('ChIJIT-L1txJXhMR-LdLSRGIw64'),
('ChIJiw9IeNxJXhMRN3ktBePQ55A'),
('ChIJizF4o5o3XhMRYFqw0tvXBHM'),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo'),
('ChIJj56MreNJXhMRWAsKa0J8W4k'),
('ChIJJaO96txJXhMRRvExSYtoakQ'),
('ChIJja_lJOdJXhMRFlKclQ0f_RM'),
('ChIJjdavRtxJXhMR6Lsap2NAPjM'),
('ChIJjStkv95JXhMRUoCUguhw85A'),
('ChIJJU-orzo2XhMRWpzclnuGfzw'),
('ChIJJUpxVdxJXhMRdAh6eagtvZk'),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw'),
('ChIJJZn-y95JXhMR2IkOdpYfMgs'),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw'),
('ChIJk0zmsB82XhMRaUVxT1MhpGY'),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k'),
('ChIJK9JxXd5JXhMRGFctHHOYk9U'),
('ChIJkRhinSg2XhMRipOQ12_hPzI'),
('ChIJKT-X7SA2XhMR2dSVr5pougg'),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk'),
('ChIJkWR0G-hJXhMROoDIrRsTL_4'),
('ChIJKy7R3SY2XhMReaxikN_Jbb0'),
('ChIJkyMAAtxJXhMReRGaeAMIras'),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic'),
('ChIJkzfBJtlJXhMREAFzqdAmezs'),
('ChIJL0fNGehJXhMRlVU3gQjfRdM'),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk'),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo'),
('ChIJl7UuQ91JXhMR1v-v16uKft0'),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4'),
('ChIJLbEvNt5JXhMRFhliuqrrGNE'),
('ChIJLdeECdxJXhMRQebIGUOpSeA'),
('ChIJlQV3HyY2XhMRpjjYBlws0d4'),
('ChIJlQzUWic2XhMRRj2o3g9QiWw'),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA'),
('ChIJLzvSjNtJXhMRaLcN70J3l3k'),
('ChIJMe6qq95JXhMRQnl3pHRF_fM'),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ'),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw'),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y'),
('ChIJmxF_PCc2XhMRJpnrz44FtbU'),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI'),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY'),
('ChIJn-oVOT1JXhMRXanG5trXMNM'),
('ChIJn51UoxY2XhMRf1wTCw8qdLI'),
('ChIJn65BbOJJXhMRRvBmSjqKNX0'),
('ChIJN7wFo95JXhMR4o70bbRt3ow'),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M'),
('ChIJncMSgNxJXhMR4DF_487vzUE'),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc'),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw'),
('ChIJnwe6K-hJXhMRHtx9OxScQ50'),
('ChIJnyLA8iM2XhMR2MQ82SsQXww'),
('ChIJnyp2TjJJXhMRqALyopTO6RA'),
('ChIJNZ1UauhJXhMRkTlRze9u1xg'),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g'),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk'),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao'),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE'),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo'),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4'),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k'),
('ChIJOWm2Id1JXhMRp2eZn4eANX8'),
('ChIJowSURxM3XhMRmbAxgMezpuk'),
('ChIJOZMLiudJXhMR5Yzounsbock'),
('ChIJOztsXBk2XhMRIu0EEdF27js'),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY'),
('ChIJP-URlSY2XhMRXXseyEczfzI'),
('ChIJP1bzTS82XhMRKDyRa4_p-j4'),
('ChIJp69bRt1JXhMRLcacpegzEHM'),
('ChIJp6BIfNxJXhMR7BIEIygVugA'),
('ChIJP95VVTRJXhMRCHXgsht_cOE'),
('ChIJpfoFo8JJXhMRiG28gW6dEDk'),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0'),
('ChIJpRuijI9JXhMR8QWStdLh_oc'),
('ChIJpS5vquBJXhMR8oU040lFFoU'),
('ChIJpUKWctxJXhMRpG8wNzBnwE0'),
('ChIJpxBoqb43XhMRPoXjQGIk2C0'),
('ChIJPxOeftxJXhMR-yriXsgge7w'),
('ChIJpYe_5iM2XhMRxwCviSFImLA'),
('ChIJPzt7ad1JXhMRGFvhsh_u14k'),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw'),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU'),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M'),
('ChIJqf86hOdJXhMRRbJprshqh38'),
('ChIJQRupKd9JXhMR76eGV2uPCyU'),
('ChIJQSyU1MJJXhMRoim9HkdlBrM'),
('ChIJqXfObCc2XhMRnI9QBuMheio'),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc'),
('ChIJqXwupd9JXhMRbLAlCLbTKR0'),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I'),
('ChIJQ_LStsJJXhMRenKaHK-PKUI'),
('ChIJR-21pd1JXhMRuPef1Jr3S0s'),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA'),
('ChIJr5-c39hJXhMRwfGwb6llWq8'),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek'),
('ChIJR5AWLd1JXhMR0obEMueRTlU'),
('ChIJRb9uAz43XhMRexZ2BgsH0cs'),
('ChIJRbfvEiY2XhMRy1BekwIyAC4'),
('ChIJReMkcU03XhMRHtlq-RGG_Mc'),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4'),
('ChIJRRUAM-hJXhMRVoRgymr08ok'),
('ChIJRTEamHO-oRQRG1JF5zvvqd4'),
('ChIJRwdOzNhJXhMR__8CRQPCUc0'),
('ChIJrXkslMFJXhMRgyfrmSEgAqI'),
('ChIJR_N2telJXhMRYj3MLKzzwQ8'),
('ChIJs13fMVdJXhMRdfoTBribjjc'),
('ChIJs26l3KI3XhMR7NBzdimtWlc'),
('ChIJS35t8d1JXhMRs-NcRKrkiDY'),
('ChIJS6ysv95JXhMRAp3oWsdGk5c'),
('ChIJS8X0pWY3XhMRzrGX7803y-8'),
('ChIJSap7relJXhMRUkopSQsXwuI'),
('ChIJse48wcJJXhMRJLB3qdkZp64'),
('ChIJSfhTP95JXhMR-zVAEzOU464'),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI'),
('ChIJSV15sMJJXhMR2lFWUwnBmAE'),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8'),
('ChIJSWbYERM3XhMRX5qduCDaczY'),
('ChIJSxcz2FI2XhMRkB05AbcRmlI'),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg'),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs'),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM'),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8'),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4'),
('ChIJu-vWGU03XhMRQPtHWoqT688'),
('ChIJU2cC_5A3XhMRTltBi0TpJVo'),
('ChIJu3E6_NtJXhMRThQBLQwqhow'),
('ChIJu3rojN5JXhMRF2jtmwJYy04'),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI'),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU'),
('ChIJU9iH_p83XhMRvlOk16boN8k'),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I'),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y'),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4'),
('ChIJU_nWAOk3XhMRiIye0cMSMTE'),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI'),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU'),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY'),
('ChIJv6X8lPtJXhMRceVYtL2dNJE'),
('ChIJv9c17udJXhMR4Wfccn7HIws'),
('ChIJVeODuCE2XhMRcDFqFETdzdw'),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U'),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0'),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8'),
('ChIJVVVVFd1JXhMRDi-W13sWrzg'),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk'),
('ChIJvXsLLNxJXhMRIJvrwlA58MA'),
('ChIJvxymD99JXhMRZa9GDUjgifQ'),
('ChIJVzAMZC82XhMRbhndkrdgnck'),
('ChIJV_4IWd1JXhMRYeQYVYtdnow'),
('ChIJW0cahd1JXhMRhjG4WP18Wmk'),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc'),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg'),
('ChIJw1kkdXdJXhMRetIwLyVDE6s'),
('ChIJW2MRl91JXhMRZKkwwIR0xGY'),
('ChIJW3ewRd1JXhMR24JhBJLE98A'),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok'),
('ChIJW42MUT03XhMRGUH6OjHcTac'),
('ChIJW666Vxk2XhMRo_D2yOU6YsY'),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio'),
('ChIJwdFpF-JJXhMRFRwIQP7phY8'),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ'),
('ChIJWUxdrelJXhMRfiIBLlftogk'),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ'),
('ChIJWzSxwiY2XhMR0MLasqi7eJs'),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs'),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs'),
('ChIJXw7utONJXhMRtc156JXTs80'),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo'),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8'),
('ChIJY4432yU2XhMR2jrWEN7aWls'),
('ChIJy6_1791JXhMRxDeYnQPCLYc'),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg'),
('ChIJYezHP91JXhMRerXmnLRu6xs'),
('ChIJYQIxGyE2XhMRupS59ERDUNc'),
('ChIJyRizl0hJXhMRYIWm34jaikk'),
('ChIJYTN3rt1JXhMRwPer72FVYjw'),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io'),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw'),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA'),
('ChIJZfOTMwhJXhMRacg9z9GL3As'),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc'),
('ChIJzTq70N1JXhMRIVAT4ThgxSw'),
('ChIJZxabsd5JXhMRYSDHkWwENxM'),
('ChIJzxNiQN5JXhMRKmxPJMORUZI'),
('ChIJzYO1YAKDoRQRHB44RW2S--I'),
('ChIJz_07-W03XhMRvRymy1Ccda0'),
('ChIJ_1hdfNxJXhMROQHnwImcpxE'),
('ChIJ_75wXd5JXhMR3nEZgNwpaso'),
('ChIJ_7nx_mxJXhMRSrp68dDU67M'),
('ChIJ_8wVL-hJXhMRQb31tkPLz48'),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ'),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks'),
('ChIJ_aH-l91JXhMRTIMZDyA117U'),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ'),
('ChIJ_T3emuBJXhMRFbT9YL3j32E'),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_finance`
--

CREATE TABLE `pois_finance` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_finance`
--

INSERT INTO `pois_finance` (`POIs_ID`) VALUES
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI'),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg'),
('ChIJ310hRBU2XhMRpBbkVZZbYIo'),
('ChIJ47FVOOhJXhMRbXLg96azRkk'),
('ChIJ59AOJyY2XhMR8N2c37sYaTg'),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA'),
('ChIJ663QGt5JXhMRLpPwwCgD6po'),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4'),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ'),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk'),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI'),
('ChIJIT-L1txJXhMR-LdLSRGIw64'),
('ChIJlQV3HyY2XhMRpjjYBlws0d4'),
('ChIJMe6qq95JXhMRQnl3pHRF_fM'),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g'),
('ChIJse48wcJJXhMRJLB3qdkZp64'),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io'),
('ChIJ_75wXd5JXhMR3nEZgNwpaso');

-- --------------------------------------------------------

--
-- Table structure for table `pois_food`
--

CREATE TABLE `pois_food` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_food`
--

INSERT INTO `pois_food` (`POIs_ID`) VALUES
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw'),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag'),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk'),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU'),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg'),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE'),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE'),
('ChIJ71wmUS82XhMRKso4jVV3SaI'),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g'),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g'),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI'),
('ChIJ88kULCM2XhMRXqQTjKQz9-s'),
('ChIJ8ShAw91JXhMRVTCotrEjofM'),
('ChIJ8yJ6relJXhMRo2XqEv0keZU'),
('ChIJa4Go5yc2XhMR-30hKzhbx_c'),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck'),
('ChIJaeM-2txJXhMR-jNLpMJiuS8'),
('ChIJaSelXrpJXhMRn8muKjS7tz8'),
('ChIJaVrgkCU2XhMRvIk-RC18hoM'),
('ChIJb-UU-uBJXhMR3im-80UB9EU'),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA'),
('ChIJb8dRjuBJXhMRn7kXnVAElMs'),
('ChIJbaPLFeJJXhMRYPqDu15HzSs'),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc'),
('ChIJcbyyvvBJXhMRSm_GgkofFOg'),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw'),
('ChIJCcwj8udJXhMRSx5MEED6Ng8'),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw'),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg'),
('ChIJcWjkR91JXhMR9oP34Ui6bqA'),
('ChIJCX9HZedJXhMRg5p7O7JXVxo'),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk'),
('ChIJCyeO-eBJXhMRAkMflWn6zlU'),
('ChIJD12aA_c3XhMR3g61s7cKpQc'),
('ChIJdRnTGehJXhMRC_2WB2YrFVc'),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU'),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A'),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI'),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo'),
('ChIJE5rqhOFJXhMREi7B5EA45Dw'),
('ChIJESy5R-hJXhMRLxB4IK1HxUU'),
('ChIJEzGdRic2XhMRYTCEu8QXinw'),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg'),
('ChIJf3-AwtxJXhMRQw5tNnZ7858'),
('ChIJFaU1TBw2XhMRq87NWxs61hA'),
('ChIJfdC04No3XhMR8JrkZLvazh4'),
('ChIJfQQHiudJXhMR-4G7rHZsOF4'),
('ChIJG-nbR95JXhMRn-Nt0pw6n38'),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc'),
('ChIJgfsxwudJXhMRKnbcZM8BvL0'),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI'),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY'),
('ChIJGyvrM91JXhMRcWNtBtoQDOo'),
('ChIJgzsL5S5JXhMRGNrT3szvqVA'),
('ChIJh003YSY2XhMRXA3c9sHdMAw'),
('ChIJH1FcPxw2XhMRzjMDiIppoZg'),
('ChIJh23mZNxJXhMR_FJs8zkMjSc'),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc'),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A'),
('ChIJhTC7IiA2XhMRDXXA5keTbkU'),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8'),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q'),
('ChIJizF4o5o3XhMRYFqw0tvXBHM'),
('ChIJja_lJOdJXhMRFlKclQ0f_RM'),
('ChIJJU-orzo2XhMRWpzclnuGfzw'),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw'),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw'),
('ChIJk0zmsB82XhMRaUVxT1MhpGY'),
('ChIJK9JxXd5JXhMRGFctHHOYk9U'),
('ChIJkRhinSg2XhMRipOQ12_hPzI'),
('ChIJKT-X7SA2XhMR2dSVr5pougg'),
('ChIJkWR0G-hJXhMROoDIrRsTL_4'),
('ChIJKy7R3SY2XhMReaxikN_Jbb0'),
('ChIJkyMAAtxJXhMReRGaeAMIras'),
('ChIJkzfBJtlJXhMREAFzqdAmezs'),
('ChIJLdeECdxJXhMRQebIGUOpSeA'),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ'),
('ChIJmxF_PCc2XhMRJpnrz44FtbU'),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI'),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY'),
('ChIJn-oVOT1JXhMRXanG5trXMNM'),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M'),
('ChIJncMSgNxJXhMR4DF_487vzUE'),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc'),
('ChIJnyp2TjJJXhMRqALyopTO6RA'),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk'),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE'),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4'),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k'),
('ChIJOWm2Id1JXhMRp2eZn4eANX8'),
('ChIJP-URlSY2XhMRXXseyEczfzI'),
('ChIJP95VVTRJXhMRCHXgsht_cOE'),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0'),
('ChIJpRuijI9JXhMR8QWStdLh_oc'),
('ChIJpS5vquBJXhMR8oU040lFFoU'),
('ChIJpUKWctxJXhMRpG8wNzBnwE0'),
('ChIJpYe_5iM2XhMRxwCviSFImLA'),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU'),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc'),
('ChIJqXwupd9JXhMRbLAlCLbTKR0'),
('ChIJR-21pd1JXhMRuPef1Jr3S0s'),
('ChIJReMkcU03XhMRHtlq-RGG_Mc'),
('ChIJs13fMVdJXhMRdfoTBribjjc'),
('ChIJs26l3KI3XhMR7NBzdimtWlc'),
('ChIJS35t8d1JXhMRs-NcRKrkiDY'),
('ChIJS8X0pWY3XhMRzrGX7803y-8'),
('ChIJSfhTP95JXhMR-zVAEzOU464'),
('ChIJSV15sMJJXhMR2lFWUwnBmAE'),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8'),
('ChIJSWbYERM3XhMRX5qduCDaczY'),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg'),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs'),
('ChIJu-vWGU03XhMRQPtHWoqT688'),
('ChIJu3rojN5JXhMRF2jtmwJYy04'),
('ChIJU9iH_p83XhMRvlOk16boN8k'),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I'),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI'),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY'),
('ChIJv6X8lPtJXhMRceVYtL2dNJE'),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U'),
('ChIJvxymD99JXhMRZa9GDUjgifQ'),
('ChIJVzAMZC82XhMRbhndkrdgnck'),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg'),
('ChIJw1kkdXdJXhMRetIwLyVDE6s'),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio'),
('ChIJwdFpF-JJXhMRFRwIQP7phY8'),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ'),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs'),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs'),
('ChIJXw7utONJXhMRtc156JXTs80'),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8'),
('ChIJYQIxGyE2XhMRupS59ERDUNc'),
('ChIJyRizl0hJXhMRYIWm34jaikk'),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA'),
('ChIJz_07-W03XhMRvRymy1Ccda0'),
('ChIJ_1hdfNxJXhMROQHnwImcpxE'),
('ChIJ_7nx_mxJXhMRSrp68dDU67M'),
('ChIJ_8wVL-hJXhMRQb31tkPLz48'),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ'),
('ChIJ_T3emuBJXhMRFbT9YL3j32E'),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_friday`
--

CREATE TABLE `pois_friday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_friday`
--

INSERT INTO `pois_friday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 45, 77, 90, 64, 32, 0, 0, 51, 70, 67, 41, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 92, 100, 71, 36, 19, 17, 23, 28, 32, 34, 34, 32, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 47, 67, 77, 79, 72, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 40, 52, 59, 54, 0, 0, 0, 27, 45, 47, 25, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 90, 100, 93, 87, 78, 68, 53, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 62, 61, 61, 62, 67, 65, 65, 69, 77, 87, 95, 96, 91, 81, 70, 64, 62, 66, 72, 77, 77, 74, 69, 65),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 52, 78, 60, 47, 52, 52, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 25, 37, 50, 58, 58, 50, 50, 75, 75, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 25, 61, 82, 74, 63, 61, 53, 40, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 0, 0, 21, 50, 83, 100, 89, 57, 26, 0, 0, 17, 39, 53, 42, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 18, 23, 16, 0, 0, 0, 0, 7, 39, 83, 71, 25, 3, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 15, 43, 73, 84, 77, 77, 83, 73, 49, 28, 23, 31, 43, 51, 50, 41, 28, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 20, 50, 63, 50, 46, 63, 74, 63, 41, 26, 26, 31, 36, 38, 33, 25, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 19, 30, 42, 50, 52, 46, 36, 0, 0, 37, 62, 69, 44, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 37, 44, 44, 41, 41, 44, 44, 37, 31, 24, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 70, 91, 98, 89, 69, 54, 58, 72, 72, 47, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 75, 87, 75, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 36, 51, 61, 75, 82, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 40, 70, 81, 66, 66, 100, 37, 7, 14, 40, 70, 77, 55, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 0, 0, 14, 34, 66, 95, 100, 75, 42, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 32, 58, 66, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 15, 26, 35, 43, 55, 76, 96, 100, 80, 50, 23, 13, 17, 30, 46, 54, 50, 35, 18),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 21, 26, 29, 32, 36, 47, 68, 94, 100, 78),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 16, 36, 57, 68, 72, 71, 61, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 60, 75, 75, 75, 70, 70, 50, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 16, 28, 39, 47, 46, 37, 25, 15, 7, 7, 16, 30, 41, 38, 23, 9),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 36, 26, 52, 78, 52, 21, 26, 57, 78, 63, 26, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 27, 37, 45, 52, 61, 70, 83, 91, 87, 70, 51, 40, 41, 51, 59, 63, 58, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 92, 92, 76, 61, 53, 76, 92, 100, 92, 69, 46, 23, 15, 0, 0, 0, 15, 46, 61, 30, 7, 7, 0, 7),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 69, 76, 74, 95, 100, 76, 58, 62, 60, 34, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 43, 46, 21, 0, 0, 40, 56, 40, 34, 37, 40, 37, 0, 0),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 32, 61, 85, 91, 76, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 75, 88, 77, 54, 38, 45, 72, 92, 86, 55, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 9, 2, 0, 0, 0, 0, 0, 15, 20, 25, 31, 33, 35, 33, 29, 25, 20, 19, 28, 49, 72, 72, 49, 22),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 6, 25, 55, 84, 93, 76, 45, 0, 0, 26, 49, 46, 22, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 38, 65, 80, 69, 0, 0, 0, 53, 100, 92, 42, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 79, 92, 84, 56, 30, 20, 25, 46, 66, 71, 58, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 82, 72, 61, 64, 70, 71, 64, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 42, 52, 48, 0, 0, 0, 48, 58, 47, 26, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 50, 67, 55, 38, 52, 82, 79, 55, 47, 47, 44, 32, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 42, 0, 0, 0, 0, 0, 0, 0, 0, 10, 14, 19, 23, 26, 27, 26, 24, 21, 19, 22, 33, 50, 66, 69),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 23, 70, 100, 65, 34, 30, 31, 31, 29, 24, 20, 15, 10, 7, 4, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 62, 65, 49, 41, 52, 73, 84, 74, 50, 24, 7),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 8, 7, 4, 0, 0, 0, 12, 23, 35, 40, 32, 16, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 14, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 50, 71, 89, 100, 96, 82, 64, 53, 46, 42, 39, 35),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 43, 54, 61, 67, 65, 55, 49, 58, 68, 59, 33, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 20, 34, 55, 80, 91, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 54, 80, 79, 77, 84, 69, 0, 0, 0, 30, 42, 43, 32, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 23, 35, 47, 55, 58, 58, 50, 41, 29, 23, 41, 67, 64, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 1, 1, 1, 1, 1, 1, 1, 13, 40, 72, 96, 100, 80, 50, 23, 7, 1, 2, 7, 13, 16, 16, 11, 5),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 3, 11, 21, 30, 38, 41, 40, 39, 38, 38, 37, 36, 32, 27, 21, 14),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 53, 80, 75, 81, 94, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 44, 72, 75, 58, 34, 0, 0, 27, 34, 51, 37, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 10, 31, 58, 79, 84, 73, 53, 38, 39, 60, 83, 79, 50, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 32, 46, 58, 69, 74, 72, 65, 53, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 12, 31, 48, 41, 21, 12, 26, 68, 100, 80, 36, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 15, 26, 38, 50, 60, 64, 63, 56, 47, 40, 51, 66, 45, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 34, 42, 50, 42, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 50, 63, 54),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 7, 12, 14, 17, 17, 17, 19, 21, 21, 14, 0, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 76, 88, 58, 29, 11, 0, 0, 29, 35, 29, 17, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 6, 20, 40, 61, 69, 59, 37, 18, 0, 0, 13, 63, 78, 27, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 10, 33, 66, 64, 35, 19, 24, 35, 43, 45, 38, 26, 14, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 42, 57, 47, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 65, 100, 92, 52, 23, 13, 10, 7, 0, 0, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 9, 13, 25, 36, 51, 59, 59, 53, 44, 40, 46, 55, 59, 51, 36, 21, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 53, 33, 5, 8, 11, 0, 8, 23, 40, 46, 38, 0, 0, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 33, 24, 16, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 48, 68),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 5, 52, 10, 5, 5, 10, 10, 15, 21, 36, 73, 89, 68, 31, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 32, 22, 0, 0, 0, 0, 0, 0, 0, 0, 47, 71, 91, 100, 91, 72, 50, 32, 24, 31, 50, 71, 87, 87),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 63, 53, 37, 22, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 51, 79, 97),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 24, 55, 90, 100, 77, 0, 0, 0, 20, 20, 12, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 49, 70, 86, 91, 83, 66, 54, 57, 65, 57, 33, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 28, 51, 69, 76, 66, 48, 30, 17, 12, 10, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 27, 39, 51, 51, 42, 30, 21, 24, 39, 42, 30, 15),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 10, 20, 35, 50, 50, 35, 20, 0, 10, 25, 50, 40, 25, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 36, 39, 39, 38, 34, 28, 27, 50, 93, 100, 85),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 9, 18, 27, 27, 27, 27, 27, 36, 36, 36, 27, 27, 27, 18, 18, 9, 9, 0, 9, 9, 18, 27, 54, 81),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 36, 28, 20, 0, 0, 0, 0, 0, 0, 36, 72, 100, 92, 60, 24, 8, 8, 16, 28, 36, 40, 32, 24, 28),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 6, 6, 9, 12, 0, 3, 16, 38, 45, 35, 19, 19, 32, 48, 67, 83, 93, 93, 83, 67, 48, 32, 19, 9),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 100, 81, 37, 0, 0, 0, 18, 22, 22, 14, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 14, 30, 46, 54, 51, 37, 0, 0, 0, 12, 12, 9, 8, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 40, 56, 78, 59, 16, 0, 0, 13, 56, 100, 83, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 21, 19, 18, 16, 0, 0, 0, 0, 8, 10, 13, 15, 17, 19, 21, 23, 24, 24, 24, 24, 27, 36, 51, 58),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 50, 30, 14, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 34, 64, 80),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 9, 36, 50, 40, 72, 100, 40, 4, 0, 4, 18, 31, 40, 31, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 6, 12, 48, 93, 80, 31, 10, 12, 23, 31, 40, 46, 46, 46, 46, 48, 55),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 20, 20, 6, 0, 0, 6, 0, 20, 33, 46, 46, 46, 33, 20),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 29, 50, 70, 88, 97, 91, 76, 0, 0, 38, 64, 85, 61, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 35, 22, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 34, 62, 81),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 27, 40, 54, 59, 50, 36, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 52, 85, 97, 92, 80, 0, 0, 60, 72, 90, 85, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 24, 44, 72, 86, 82, 65, 48, 41, 48, 58, 65, 68, 62, 48, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 0, 17, 23, 11, 11, 100, 88, 35, 41, 52, 58, 64, 64, 58, 52, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 27, 49, 67, 73, 68, 63, 61, 61, 60, 55, 47, 37, 27, 18, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 18, 25, 37, 52, 69, 81, 85, 78, 63, 48, 42, 62, 92, 87, 48, 15, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 64, 72, 36, 44, 76, 84, 56, 28, 16, 16, 16, 12, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 26, 41, 55, 62, 62, 56, 48, 43, 40, 38, 31, 20, 8, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 13, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 8, 15, 23, 29, 34, 37, 40, 43, 47, 50, 48),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 3, 18, 50, 75, 68, 37, 0, 0, 0, 9, 9, 9, 9, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 6, 13, 21, 31, 55, 32, 22, 16, 0, 0, 15, 15, 13, 10, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 32, 48, 45, 27, 10, 0, 0, 0, 13, 16, 8, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 37, 60, 79, 85, 72, 50, 31, 33, 62, 89, 77, 35, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 12, 18, 24, 26, 28, 28, 30, 32, 38, 46, 54, 54, 46, 32),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 31, 50, 65, 71, 62, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 18, 37, 58, 74, 84, 88, 91, 91, 87, 77, 63, 46, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 30, 35, 37, 34, 32, 32, 37, 45, 49, 43, 29, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 7, 10, 18, 28, 43, 60, 78, 92, 98, 91, 73, 50, 30, 15, 8, 6, 4),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 43, 70, 64, 71, 73, 84, 91, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 34, 48, 51, 45, 31, 0, 0, 34, 54, 60, 42, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 55, 40, 51, 64, 75, 84, 84, 80, 68, 55, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 47, 48, 50, 46, 34, 30, 33, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 35, 46, 53, 57, 56, 52, 45, 38, 32, 29, 29, 28, 26, 23, 19, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 13, 31, 59, 72, 56, 34, 26, 25, 27, 30, 37, 46, 54, 55, 45, 32, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 7, 22, 14, 14, 22, 29, 29, 25, 18, 11, 3, 3, 40, 40, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 75, 75, 75, 75, 66, 66, 66, 66, 66, 58, 50, 50, 41, 41, 41, 50, 58, 66, 66, 75, 75, 75, 75, 66),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 57, 71, 83, 95, 100, 100, 95, 85, 71, 57, 42, 30, 20, 12, 8, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 66, 29, 41, 58, 0, 0, 0, 16, 29, 37, 33, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 18, 26, 39, 50, 60, 65, 68, 63, 55, 44, 39, 36, 39, 42, 42, 36, 23, 13, 5),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 45, 72, 81, 63, 40, 22, 22, 36, 54, 54, 40, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 21, 59, 91, 86, 61, 54, 54, 45, 30, 23, 22, 23, 23, 20, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 43, 59, 59, 52, 56, 72, 88, 86, 68, 43, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 50, 47, 38, 25, 16, 19, 33, 47, 41, 22, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 33, 26, 17, 10, 12, 27, 50, 71, 73, 55, 30),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 38, 38, 38, 30, 38, 46, 46, 38, 23, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 41, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 19, 21, 21, 21, 19, 18, 24, 53, 88, 86, 77),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 76, 97, 100, 81, 55, 0, 0, 0, 30, 34, 32, 0, 0, 0),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 11, 34, 16, 0, 0, 0, 0, 0, 11, 11, 9, 0, 0, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 73, 84, 71, 47, 34, 38, 50, 56, 50, 0, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 26, 36, 34, 21, 13, 10, 8, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 13, 40, 63, 60, 66, 93, 80, 33, 0, 0, 16, 26, 26, 13, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 25, 31, 43, 56, 62, 68, 68, 62, 50, 43, 31, 25, 12, 12, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 6, 17, 34, 51, 65, 68, 58, 37, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 34, 39, 44, 41, 32, 28, 39, 60, 76, 76, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 3, 1, 0, 0, 0, 0, 0, 7, 15, 28, 44, 57, 65, 63, 52, 39, 35, 47, 75, 100, 99, 75, 51, 46),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 1, 1, 1, 1, 1, 1, 1, 1, 5, 10, 15, 17, 17, 15, 11, 10, 14, 26, 42, 54, 54, 46, 36, 27),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 25, 33, 41, 48, 51, 51, 48, 43, 33, 25, 17, 12, 7, 5, 2, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 8, 10, 10, 9, 7, 5, 4, 4, 6, 7, 8, 7, 6, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 8, 38, 65, 76, 80, 86, 84, 62, 40, 35, 45, 57, 62, 57, 43, 25, 8),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 43, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 17, 23, 30, 36, 41, 43, 47, 63, 83, 86, 79),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 37, 50, 57, 56, 48, 38, 34, 44, 66, 79, 62, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 35, 35, 35, 35, 0, 0, 0, 35, 57, 71, 50, 0, 0, 0),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 28, 34, 34, 28, 0, 0, 0, 18, 28, 18, 3, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 55, 68, 59, 38, 0, 0, 0, 24, 48, 55, 37, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 37, 73, 87, 60, 30, 19, 14, 11, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 17, 29, 43, 56, 74, 91, 100, 89, 68, 51, 46, 50, 58, 63, 67, 65, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 15, 34, 65, 96, 100, 73, 38, 0, 0, 7, 23, 30, 19, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 21, 11, 5, 2, 3, 2, 4, 9, 18, 30, 42, 51, 53, 48, 39, 32, 34, 46, 62, 71, 68, 55, 44, 41),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 30, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 50, 86, 100, 88, 83, 94),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 41, 68, 89, 93, 81, 62, 54, 64, 83, 90, 73, 44, 20, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 21, 13, 2, 2, 2, 2, 2, 2, 35, 94, 97, 56, 40, 45, 51, 45, 35, 21, 13, 10, 8, 5, 2, 2),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 33, 52, 67, 72, 67, 60, 64, 83, 100, 92, 60, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 2, 13, 45, 89, 100, 67, 26, 8, 8, 10, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 3, 6, 10, 13, 17, 19, 21, 21, 22, 27, 36, 47, 54, 51, 39, 22, 9),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 68, 63, 57, 47, 36, 26, 26, 42, 68, 63, 36),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 31, 43, 50, 50, 43, 31, 25, 18, 37, 62, 50, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 50, 51, 40, 25, 18, 22, 40, 70, 87, 77, 50, 0, 0, 0),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 37, 60, 62, 74, 68, 54, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 23, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 33, 51, 64, 62),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 75, 62, 62, 62, 31, 0, 0, 25, 25, 25, 25, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 76, 86, 78, 59, 0, 0, 44, 53, 51, 38, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 100, 51, 57, 78, 74, 48, 74, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 18, 36, 38, 24, 16, 22, 36, 40, 30, 14, 2, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 46, 56, 41, 24, 21, 26, 31, 34, 31, 26, 26, 39, 58, 65, 48, 21, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 27, 36, 40, 31, 22, 9, 4, 0, 4, 31, 45, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 1, 1, 8, 23, 43, 64, 80, 86, 79, 62, 42, 23, 14, 16, 28, 39, 39, 26, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 16, 36, 58, 71, 66, 47, 25, 10, 8, 25, 51, 55, 40, 34, 36, 32),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 61, 56, 37, 18, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 20, 25, 35, 46, 57, 66, 71, 67, 59, 50, 48, 56, 68, 71, 58, 37, 20, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 9, 13, 17, 18, 16, 10, 5, 2, 3, 9, 20, 37, 52, 56, 46, 30),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 31, 45, 55, 57, 51, 39, 27, 20, 20, 25, 32, 34, 30, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 33, 55, 55, 58, 67, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 2, 2, 11, 38, 69, 93, 97, 81, 52, 26, 17, 26, 49, 65, 61, 37, 11, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 0, 7, 21, 35, 42, 50, 50, 42, 28, 28, 42, 57, 71, 64, 42, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 7, 24, 44, 65, 84, 97, 96, 79, 59, 51, 59, 70, 70, 56, 34, 13, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 33, 68, 90, 80, 53, 38, 45, 55, 55, 42, 25, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 18, 35, 57, 76, 88, 90, 86, 80, 76, 75, 78, 84, 87, 84, 73, 57, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 49, 46, 35, 29, 30, 35, 36, 29, 20, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 39, 46, 50, 48, 43, 37, 33, 33, 34, 31, 24, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 6, 3, 2, 0, 0, 14, 31, 48, 53, 42, 24, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 25, 37, 37, 0, 0, 0, 50, 100, 79, 58, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 100, 84, 53, 53, 61, 61, 61, 53, 38, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 9, 16, 21, 21, 17, 0, 0, 0, 0, 21, 34, 34, 20, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 23, 6, 1, 1, 1, 0, 0, 1, 6, 16, 28, 38, 44, 43, 35, 26, 22, 28, 43, 58, 65, 69, 72, 65),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 29, 61, 64, 59, 64, 59, 41, 24, 14, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 63, 55, 71, 67, 38, 0, 0, 0, 23, 23, 21, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 43, 71, 86, 83, 62, 0, 0, 56, 83, 83, 54, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 37, 58, 70, 70, 58, 0, 0, 0, 20, 41, 50, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 27, 50, 73, 88, 86, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 10, 13, 19, 34, 54, 76, 86, 82, 63, 41, 28, 26, 36, 56, 67, 56, 36, 19, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 100, 91, 78, 82, 60, 0, 0, 4, 21, 34, 26, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 100, 81, 37, 0, 0, 0, 18, 22, 22, 14, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 32, 70, 73, 46, 65, 95, 54, 38, 41, 41, 40, 36, 30, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 32, 42, 50, 50, 41, 28, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 60, 55, 50, 60, 76, 84, 76, 57, 34, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 16, 7, 0, 0, 0, 0, 0, 0, 2, 9, 25, 49, 67, 66, 47, 26, 16, 19, 29, 42, 52, 56, 51, 40),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 79, 87, 77, 0, 0, 0, 73, 96, 85, 49, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 0, 0, 21, 50, 83, 100, 89, 57, 26, 0, 0, 17, 39, 53, 42, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 45, 75, 97, 100, 81, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 36, 0, 0, 0, 0, 0, 0, 2, 6, 19, 42, 63, 63, 42, 19, 6, 2, 8, 27, 53, 59, 48, 44, 46),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 8, 12, 20, 31, 45, 51, 44, 31, 21, 17, 15, 14, 14, 22, 38, 35, 17, 7, 4),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 44, 64, 68, 60, 50, 44, 44, 41, 35, 25, 14, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 44, 51, 62, 75, 72, 58, 65, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 42, 71, 85, 71, 57, 42, 57, 57, 71, 71, 57, 71, 71, 71),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 67, 95, 100, 79, 0, 0, 0, 48, 58, 59, 48, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 36, 56, 63, 72, 83, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 10, 35, 72, 86, 64, 56, 94, 78, 0, 0, 18, 40, 51, 48, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 46, 86, 58, 62, 76, 79, 76, 69, 69, 67, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 55, 68, 74, 69, 57, 44, 36, 35, 36, 33, 22, 11),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 38, 69, 84, 76, 61, 71, 43, 0, 0, 23, 30, 35, 30, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 14, 21, 25, 27, 27, 25, 23, 21, 23, 27, 36, 40, 38, 29, 19, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 34, 57, 61, 46, 30, 38, 53, 57, 42, 30, 26, 26, 26, 23, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 1, 15, 43, 72, 87, 81, 58, 36, 26, 31, 44, 54, 54, 43, 25, 7, 1),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 71, 92, 67, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 73, 95, 98, 91, 61, 0, 0, 52, 74, 68, 40, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 63, 73, 80, 75, 59, 45, 45, 59, 75, 75, 57, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 9, 34, 56, 51, 53, 73, 46, 0, 0, 26, 34, 36, 34, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 48, 62, 70, 70, 63, 52, 43, 40, 43, 51, 62, 69, 70, 64, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 12, 15, 14, 11, 17, 38, 62, 70, 55, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 77, 85, 74, 63, 64, 69, 75, 80, 71, 47, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 15, 16, 16, 16, 15, 16, 18, 20, 19, 15, 10, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 33, 38, 37, 31, 24, 22, 35, 61, 86, 88, 62),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 60, 85, 71, 45, 37, 40, 34, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 100, 82, 51, 0, 0, 0, 0, 10, 15, 21, 27, 32, 34, 34, 31, 27, 24, 23, 27, 35, 44, 52, 55, 52),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 14, 11, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 37, 34, 25, 20, 25, 42, 68, 94, 100, 91),
('ChIJpS5vquBJXhMR8oU040lFFoU', 21, 8, 2, 0, 3, 0, 0, 0, 0, 0, 10, 15, 21, 25, 27, 27, 24, 21, 19, 24, 38, 63, 87, 95),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 41, 24, 11, 0, 0, 0, 0, 0, 0, 7, 11, 15, 19, 21, 21, 20, 21, 26, 34, 43, 53, 62, 76, 90),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 60, 80, 53, 20, 0, 0, 0, 36, 56, 56, 36, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 12, 20, 28, 40, 48, 56, 60, 60, 60, 64, 80, 96, 92, 60, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 25, 25, 20, 27, 49, 43, 21, 14, 16, 18, 18, 18, 16, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 36, 50, 37, 40, 68, 60, 34, 38, 57, 58, 41, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 33, 54, 73, 86, 85, 72, 53, 36, 28, 29, 35, 40, 36, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 55, 51, 62, 77, 85, 88, 81, 70, 51, 37),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 23, 41, 47, 41, 29, 11, 0, 0, 0, 17, 58, 76, 35, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 60, 75, 63, 38, 0, 0, 0, 33, 45, 46, 37, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 27, 51, 74, 85, 80, 59, 36, 19, 14, 19, 31, 38, 34, 21, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 40, 47, 50, 49, 42, 36, 39, 50, 50, 30, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 24, 13, 19, 26, 26, 21, 19, 22, 19, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 17, 54, 95, 93, 69, 61, 65, 69, 70, 70, 72, 73, 74, 71, 64, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 14, 22, 26, 22, 17, 18, 34, 65, 94, 100, 76),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 28, 48, 61, 69, 66, 56, 41, 25, 23, 43, 69, 48, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 26, 36, 47, 0, 0, 0, 52, 63, 57, 31, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 22, 36, 52, 71, 85, 82, 64, 44, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 48, 54, 54, 51, 48, 48, 48, 48, 42, 31, 20, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 53, 56, 51, 68, 87, 89, 70, 0, 0, 46, 65, 77, 68, 48, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 32, 48, 61, 71, 75, 73, 70, 71, 78, 76, 55, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 44, 55, 61, 72, 61, 61, 61, 55, 55, 50, 50, 44, 44, 38, 38, 38, 38, 38, 38, 44, 44, 50, 50, 55),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 15, 31, 53, 65, 61, 46, 36, 31, 30, 28, 25, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 7, 9, 11, 12, 14, 15, 16, 14, 9, 7, 9, 15, 18, 14, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 29, 57, 80, 89, 82, 77, 77, 75, 68, 52, 35, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 69, 76, 75, 59, 51, 86, 100, 47, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 66, 80, 81, 68, 52, 49, 65, 81, 71, 39, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 20, 34, 44, 46, 42, 38, 38, 42, 50, 58, 64, 62, 54, 40, 24, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 39, 39, 35, 25, 0, 0, 0, 32, 46, 35, 14, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 28, 60, 57, 51, 62, 68, 62, 48, 31, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 24, 28, 35, 42, 51, 55, 55, 53, 44, 33, 31, 51, 86, 73, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 25, 49, 74, 92, 98, 92, 70, 41, 23, 32, 58, 69, 47, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 41, 31, 20, 14, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 26, 48, 68),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 34, 31, 20, 10, 10, 20, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 11, 14, 22, 39, 66, 91, 100, 85, 58, 34, 19, 16, 22, 39, 57, 61, 47, 29, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 51, 85, 90, 63, 0, 0, 0, 26, 39, 39, 24, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 37, 48, 56, 72, 82, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 1, 9, 23, 42, 54, 54, 53, 48, 39, 29, 31, 45, 59, 64, 57, 42, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 30, 51, 73, 84, 81, 64, 43, 0, 0, 49, 65, 66, 48, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 34, 20, 11, 4, 17, 9, 8, 11, 19, 32, 46, 60, 71, 74, 69, 58, 45, 41, 53, 79, 100, 97, 79, 62),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 25, 0, 0, 0, 0, 0, 32, 41, 48, 54, 58, 60, 60, 55, 48, 41, 35, 34, 41, 51, 57, 52, 41, 25),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 12, 35, 50, 37, 40, 62, 42, 0, 0, 0, 45, 52, 52, 42, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 10, 25, 46, 57, 50, 35, 17, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 19, 25, 30, 35, 37, 38, 37, 32, 29, 27, 30, 46, 67, 83, 77, 53, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 20, 23, 25, 25, 34, 53, 76, 83, 65, 46, 51, 67, 81, 74, 53, 30, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 40, 54, 77, 81, 0, 0, 0, 36, 40, 40, 36, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 29, 46, 65, 79, 86, 82, 71, 54, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 42, 64, 78, 78, 0, 0, 50, 100, 85, 78, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 7, 24, 42, 50, 44, 48, 42, 20, 5, 5, 12, 27, 44, 57, 59, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 18, 9, 0, 0, 0, 0, 0, 0, 0, 0, 63, 68, 72, 59, 36, 13, 4, 0, 4, 9, 27, 50, 68, 68),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 87, 93, 62, 31, 12, 0, 0, 0, 6, 0, 6, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 19, 42, 67, 86, 90, 77, 54, 31, 21, 32, 56, 64, 43, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 24, 43, 60, 69, 69, 66, 54, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 73, 95, 100, 86, 60, 35, 16, 8, 14, 38, 67, 69, 40, 14, 2, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 73, 21, 8, 13, 13, 4, 8, 17, 39, 60, 78, 73, 0, 0, 0, 0, 0, 30, 34, 39, 39, 39, 39, 30),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 10, 0, 0, 0, 0, 0, 11, 23, 37, 47, 49, 44, 37, 32, 33, 37, 40, 40, 44, 49, 52, 50, 40, 27),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 23, 40, 56, 67, 69, 63, 55, 47, 40, 32, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 65, 57, 57, 57, 51, 0, 0, 0, 65, 76, 53, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 0, 0, 0, 0, 0, 0, 0, 10, 50, 90, 100, 90, 70, 50, 40, 50, 50, 60, 60, 60, 50, 40, 30, 10),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 33, 84, 75, 27, 12, 9, 12, 24, 42, 39, 21, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 21, 42, 57, 57, 0, 0, 0, 28, 78, 92, 57, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 27, 41, 56, 69, 78, 81, 77, 66, 53, 45, 56, 81, 73, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 35, 19, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 35, 39, 40, 38, 36, 34, 38, 51, 72, 91, 100, 89),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 71, 85, 73, 57, 0, 0, 0, 0, 40, 22, 8, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 22, 44, 72, 94, 100, 88, 66, 38, 22, 11, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 37, 56, 78, 100, 93, 54, 19, 5, 3, 3, 3, 2, 2, 1, 1, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 1, 1, 1, 1, 1, 1, 5, 25, 45, 63, 76, 81, 78, 69, 54, 38, 28, 28, 40, 58, 72, 72, 55, 26),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 96, 76, 64, 64, 66, 58, 45, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 40, 100, 68, 12, 4, 16, 56, 52, 20, 12, 16, 16, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 58, 77, 87, 82, 66, 46, 33, 51, 88, 74, 26, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 82, 100, 89, 61, 0, 0, 57, 68, 56, 29, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 86, 70, 54, 43, 53, 35, 22, 16, 17, 24, 34, 45, 56, 64, 66, 62, 55, 48, 48, 58, 71, 79, 83, 87),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 59, 66, 76, 81, 74, 59, 46, 41, 42, 41, 29, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 45, 79, 85, 56, 25, 0, 22, 43, 52, 37, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 84, 72, 72, 51, 0, 0, 0, 15, 66, 93, 45, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 47, 94, 100, 52, 26, 47, 78, 89, 68, 0, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 25, 1, 0, 0, 0, 0, 0, 1, 13, 34, 49, 53, 48, 40, 35, 33, 31, 29, 30, 40, 63, 89, 100, 80),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 22, 0, 0, 0, 0, 0, 0, 0, 6, 15, 35, 65, 83, 74, 49, 29, 20, 18, 19, 23, 33, 45, 51, 45),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 54, 84, 100, 91, 65, 58, 75, 50, 33, 38, 28, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 22, 37, 51, 66, 70, 62, 55, 51, 51, 48, 37, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 81, 68, 71, 93, 93, 70, 57, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 15, 36, 67, 76, 66, 61, 66, 69, 67, 63, 53, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 6, 24, 46, 68, 84, 88, 80, 64, 50, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 2, 19, 47, 70, 77, 65, 38, 9, 2, 2, 4, 33, 59, 64, 44, 14, 2),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 34, 48, 62, 73, 80, 78, 70, 58, 47, 48, 65, 77, 58, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 36, 36, 42, 36, 21, 21, 21, 21, 21, 15, 15, 15, 10, 10, 5, 0, 5, 10, 15, 21, 31, 36, 42, 42),
('ChIJWUxdrelJXhMRfiIBLlftogk', 46, 22, 8, 5, 0, 0, 0, 0, 0, 0, 19, 25, 30, 32, 31, 28, 23, 20, 22, 34, 53, 74, 92, 100),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 33, 66, 55, 48, 48, 44, 48, 44, 14, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 59, 50, 50, 40, 0, 0, 0, 4, 18, 27, 31, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 8, 17, 29, 37, 38, 34, 40, 29, 0, 0, 10, 20, 28, 25, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 100, 84, 69, 72, 72, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 12, 27, 42, 47, 42, 40, 44, 44, 34, 22, 19, 22, 28, 30, 28, 22, 15, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 38, 64, 72, 51, 44, 50, 53, 50, 0, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 24, 31, 36, 37, 37, 37, 39, 43, 46, 46, 43, 40, 45, 59, 75, 81, 69, 45),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 5, 22, 50, 83, 88, 66, 0, 0, 0, 27, 61, 83, 72, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 16, 29, 33, 48, 47, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 46, 46, 42, 39, 34, 31, 48, 78, 82, 49, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 0, 3, 8, 11, 12, 12, 9, 3, 0, 0, 1, 1, 12, 14, 3, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 17, 37, 61, 80, 83, 72, 54, 45, 50, 63, 72, 66, 49, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 0, 0, 0, 0, 0, 0, 0, 11, 17, 31, 44, 60, 73, 80, 82, 77, 73, 73, 80, 91, 100, 100, 86, 64),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 70, 48, 43, 50, 0, 0, 0, 22, 37, 43, 34, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 16, 36, 57, 68, 72, 71, 61, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 23, 50, 47, 39, 39, 32, 29, 39, 50, 50, 38, 23, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 13, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 24, 48, 67, 65, 43),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 60, 70, 70, 60, 50, 40, 30, 20, 10, 10, 10, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 24, 46, 66, 73, 75, 90, 91, 54, 0, 0, 42, 66, 79, 73, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 52, 70, 79, 73, 58, 52, 64, 79, 76, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 91, 41, 45, 58, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 50, 52, 46, 44, 50, 61, 68, 65, 52, 34, 17, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 6, 5, 3, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 40, 57, 70, 76, 76, 76, 76, 69, 56, 44, 41, 47, 57, 66, 71, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 14, 32, 42, 46, 54, 63, 66, 60, 55, 58, 68, 78, 78, 67, 46, 25, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 44, 33, 11, 11, 11, 11, 22, 33, 44, 44, 55, 55, 55, 66, 77, 88, 88, 100, 88, 77, 55, 22, 11, 11),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 15, 26, 36, 52, 63, 68, 68, 63, 52, 42, 31, 31, 68, 73, 42, 36, 31, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 53, 78, 88, 78, 53, 0, 0, 40, 59, 59, 38, 19, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 12, 18, 21, 28, 28, 28, 25, 21, 31, 59, 75, 40, 12, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 20, 25, 25, 20, 12, 0, 0, 54, 95, 83, 33, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 54, 54, 36, 52, 0, 0, 0, 28, 49, 57, 46, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 27, 33, 22, 5, 0, 0, 0, 38, 61, 61, 38, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 12, 0, 1, 1, 0, 0, 0, 5, 17, 34, 52, 69, 78, 80, 75, 70, 69, 74, 81, 86, 85, 75, 58, 39),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 2, 8, 21, 43, 70, 93, 100, 85, 58, 32, 18, 22, 44, 65, 59, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_furniture_store`
--

CREATE TABLE `pois_furniture_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_furniture_store`
--

INSERT INTO `pois_furniture_store` (`POIs_ID`) VALUES
('ChIJ24KnIg83XhMRX_b9V6y7PKE'),
('ChIJfdC04No3XhMR8JrkZLvazh4'),
('ChIJH50SYN5JXhMRNZ0H3mKanto'),
('ChIJR5AWLd1JXhMR0obEMueRTlU');

-- --------------------------------------------------------

--
-- Table structure for table `pois_general_contractor`
--

CREATE TABLE `pois_general_contractor` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_general_contractor`
--

INSERT INTO `pois_general_contractor` (`POIs_ID`) VALUES
('ChIJBfAfbxA2XhMRwQp5GijpdHg');

-- --------------------------------------------------------

--
-- Table structure for table `pois_grocery_or_supermarket`
--

CREATE TABLE `pois_grocery_or_supermarket` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_grocery_or_supermarket`
--

INSERT INTO `pois_grocery_or_supermarket` (`POIs_ID`) VALUES
('ChIJ8yJ6relJXhMRo2XqEv0keZU'),
('ChIJa4Go5yc2XhMR-30hKzhbx_c'),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg'),
('ChIJD12aA_c3XhMR3g61s7cKpQc'),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU'),
('ChIJh003YSY2XhMRXA3c9sHdMAw'),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc'),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw'),
('ChIJKT-X7SA2XhMR2dSVr5pougg'),
('ChIJmxF_PCc2XhMRJpnrz44FtbU'),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4'),
('ChIJs26l3KI3XhMR7NBzdimtWlc'),
('ChIJSWbYERM3XhMRX5qduCDaczY'),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs'),
('ChIJu3rojN5JXhMRF2jtmwJYy04'),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY'),
('ChIJVzAMZC82XhMRbhndkrdgnck'),
('ChIJwdFpF-JJXhMRFRwIQP7phY8'),
('ChIJYQIxGyE2XhMRupS59ERDUNc');

-- --------------------------------------------------------

--
-- Table structure for table `pois_gym`
--

CREATE TABLE `pois_gym` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_gym`
--

INSERT INTO `pois_gym` (`POIs_ID`) VALUES
('ChIJ0YP89yw3XhMRu0_gcptybS4'),
('ChIJAVs4m443XhMRBbxmCCI6f5Y'),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU'),
('ChIJiw9IeNxJXhMRN3ktBePQ55A'),
('ChIJRwdOzNhJXhMR__8CRQPCUc0'),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU');

-- --------------------------------------------------------

--
-- Table structure for table `pois_hair_care`
--

CREATE TABLE `pois_hair_care` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_hair_care`
--

INSERT INTO `pois_hair_care` (`POIs_ID`) VALUES
('ChIJ53SyUV83XhMRKCtMj0KPkBI'),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw'),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI'),
('ChIJj56MreNJXhMRWAsKa0J8W4k'),
('ChIJJUpxVdxJXhMRdAh6eagtvZk'),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4'),
('ChIJpfoFo8JJXhMRiG28gW6dEDk'),
('ChIJpxBoqb43XhMRPoXjQGIk2C0'),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M'),
('ChIJqXfObCc2XhMRnI9QBuMheio'),
('ChIJRRUAM-hJXhMRVoRgymr08ok'),
('ChIJrXkslMFJXhMRgyfrmSEgAqI'),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc'),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo');

-- --------------------------------------------------------

--
-- Table structure for table `pois_hardware_store`
--

CREATE TABLE `pois_hardware_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_hardware_store`
--

INSERT INTO `pois_hardware_store` (`POIs_ID`) VALUES
('ChIJhVyNxiU2XhMR-047iPt8FPY');

-- --------------------------------------------------------

--
-- Table structure for table `pois_health`
--

CREATE TABLE `pois_health` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_health`
--

INSERT INTO `pois_health` (`POIs_ID`) VALUES
('ChIJ0a4YHeBJXhMRgESyORq9JSo'),
('ChIJ0We6ISc2XhMR0JstwP2xC6s'),
('ChIJ0YP89yw3XhMRu0_gcptybS4'),
('ChIJ49E6U91JXhMR6q8NxVCECY0'),
('ChIJ876i5edJXhMR67q92o6fTlw'),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4'),
('ChIJAVs4m443XhMRBbxmCCI6f5Y'),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8'),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8'),
('ChIJd6BFedxJXhMRn7tE7kY38uw'),
('ChIJdz60KyA2XhMRiCVdmLDxyx8'),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU'),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI'),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc'),
('ChIJHbwHNtxJXhMROpsRtSXroJ0'),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE'),
('ChIJiw9IeNxJXhMRN3ktBePQ55A'),
('ChIJJaO96txJXhMRRvExSYtoakQ'),
('ChIJL0fNGehJXhMRlVU3gQjfRdM'),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk'),
('ChIJl7UuQ91JXhMR1v-v16uKft0'),
('ChIJLbEvNt5JXhMRFhliuqrrGNE'),
('ChIJOztsXBk2XhMRIu0EEdF27js'),
('ChIJr5-c39hJXhMRwfGwb6llWq8'),
('ChIJRwdOzNhJXhMR__8CRQPCUc0'),
('ChIJrXkslMFJXhMRgyfrmSEgAqI'),
('ChIJR_N2telJXhMRYj3MLKzzwQ8'),
('ChIJSxcz2FI2XhMRkB05AbcRmlI'),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU'),
('ChIJY4432yU2XhMR2jrWEN7aWls'),
('ChIJYTN3rt1JXhMRwPer72FVYjw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_home_goods_store`
--

CREATE TABLE `pois_home_goods_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_home_goods_store`
--

INSERT INTO `pois_home_goods_store` (`POIs_ID`) VALUES
('ChIJ04Xm-h02XhMRovY8-bw3Cpg'),
('ChIJ24KnIg83XhMRX_b9V6y7PKE'),
('ChIJaeHBPuBJXhMRuNbzVocLWWA'),
('ChIJfdC04No3XhMR8JrkZLvazh4'),
('ChIJH50SYN5JXhMRNZ0H3mKanto'),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY'),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY'),
('ChIJR5AWLd1JXhMR0obEMueRTlU'),
('ChIJW0cahd1JXhMRhjG4WP18Wmk'),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok'),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc');

-- --------------------------------------------------------

--
-- Table structure for table `pois_hospital`
--

CREATE TABLE `pois_hospital` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_hospital`
--

INSERT INTO `pois_hospital` (`POIs_ID`) VALUES
('ChIJd6BFedxJXhMRn7tE7kY38uw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_jewelry_store`
--

CREATE TABLE `pois_jewelry_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_jewelry_store`
--

INSERT INTO `pois_jewelry_store` (`POIs_ID`) VALUES
('ChIJQSyU1MJJXhMRoim9HkdlBrM');

-- --------------------------------------------------------

--
-- Table structure for table `pois_laundry`
--

CREATE TABLE `pois_laundry` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_laundry`
--

INSERT INTO `pois_laundry` (`POIs_ID`) VALUES
('ChIJlQzUWic2XhMRRj2o3g9QiWw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_lawyer`
--

CREATE TABLE `pois_lawyer` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_lawyer`
--

INSERT INTO `pois_lawyer` (`POIs_ID`) VALUES
('ChIJJZn-y95JXhMR2IkOdpYfMgs'),
('ChIJQRupKd9JXhMR76eGV2uPCyU'),
('ChIJS6ysv95JXhMRAp3oWsdGk5c');

-- --------------------------------------------------------

--
-- Table structure for table `pois_liquor_store`
--

CREATE TABLE `pois_liquor_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_liquor_store`
--

INSERT INTO `pois_liquor_store` (`POIs_ID`) VALUES
('ChIJhYRbv8JJXhMRhO8shM1QpIw'),
('ChIJJU-orzo2XhMRWpzclnuGfzw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_local_government_office`
--

CREATE TABLE `pois_local_government_office` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_local_government_office`
--

INSERT INTO `pois_local_government_office` (`POIs_ID`) VALUES
('ChIJu4RiQNxJXhMRAQUqW9MVAVI');

-- --------------------------------------------------------

--
-- Table structure for table `pois_lodging`
--

CREATE TABLE `pois_lodging` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_lodging`
--

INSERT INTO `pois_lodging` (`POIs_ID`) VALUES
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw'),
('ChIJRb9uAz43XhMRexZ2BgsH0cs');

-- --------------------------------------------------------

--
-- Table structure for table `pois_meal_delivery`
--

CREATE TABLE `pois_meal_delivery` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_meal_delivery`
--

INSERT INTO `pois_meal_delivery` (`POIs_ID`) VALUES
('ChIJO80-Xd5JXhMRlyaMy0oiVyE'),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA');

-- --------------------------------------------------------

--
-- Table structure for table `pois_meal_takeaway`
--

CREATE TABLE `pois_meal_takeaway` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_meal_takeaway`
--

INSERT INTO `pois_meal_takeaway` (`POIs_ID`) VALUES
('ChIJkzfBJtlJXhMREAFzqdAmezs'),
('ChIJpRuijI9JXhMR8QWStdLh_oc'),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA');

-- --------------------------------------------------------

--
-- Table structure for table `pois_monday`
--

CREATE TABLE `pois_monday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_monday`
--

INSERT INTO `pois_monday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 32, 58, 74, 64, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 42, 46, 48, 42, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 80, 100, 90, 90, 81, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 15, 22, 25, 22, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 68, 78, 78, 78, 71, 62, 50, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 65, 64, 62, 62, 64, 67, 70, 74, 77, 80, 81, 82, 83, 82, 82, 80, 79, 76, 72, 70, 66, 64, 61, 59),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 56, 78, 82, 65, 43, 21, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 16, 20, 33, 50, 58, 54, 54, 87, 95, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 29, 61, 91, 93, 70, 53, 48, 46, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 0, 0, 33, 67, 83, 66, 57, 58, 23, 0, 0, 30, 53, 50, 25, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 37, 34, 24, 0, 0, 0, 0, 16, 52, 96, 100, 59, 19, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 22, 38, 62, 85, 98, 92, 73, 49, 32, 26, 31, 43, 54, 56, 48, 33, 20, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 23, 39, 52, 58, 58, 57, 53, 47, 34, 22, 14, 20, 38, 57, 60, 44, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 13, 33, 54, 65, 67, 56, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 24, 31, 20, 10, 13, 27, 34, 37, 58, 41, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 81, 93, 85, 63, 41, 33, 37, 38, 28, 13, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 81, 93, 62, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 40, 64, 86, 100, 97, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 74, 85, 55, 51, 74, 81, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 23, 21, 12, 0, 0, 32, 55, 70, 64, 44, 25, 14, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 30, 62, 38, 20, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 13, 22, 34, 46, 59, 68, 72, 71, 63, 53, 39, 29, 23, 28, 44, 59, 55, 36, 15),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 10, 8, 5, 13, 48, 10, 12, 19, 21, 16),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 17, 41, 63, 69, 73, 100, 95, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 50, 75, 65, 40, 45, 55, 40, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 19, 43, 56, 47, 31, 23, 21, 18, 16, 17, 24, 30, 31, 23, 13, 5),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 73, 47, 36, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 29, 40, 51, 62, 76, 91, 100, 93, 72, 48, 36, 34, 41, 47, 47, 43, 33, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 46, 46, 46, 38, 38, 30, 23, 15, 15, 7, 15, 23, 30, 23, 15, 7, 15, 30, 53, 69, 61, 53, 46, 46),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 59, 56, 25, 0, 0, 18, 34, 53, 71, 84, 81, 65, 0, 0),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 30, 75, 86, 84, 88, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 52, 86, 92, 67, 39, 29, 38, 49, 47, 32, 16, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 10, 0, 0, 0, 0, 0, 0, 15, 20, 24, 29, 32, 33, 32, 31, 28, 31, 40, 54, 64, 63, 49, 29, 14),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 4, 31, 63, 66, 91, 84, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 34, 50, 57, 50, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 82, 89, 76, 53, 30, 23, 33, 56, 82, 94, 84, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 88, 90, 81, 81, 91, 95, 82, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 50, 60, 60, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 44, 61, 58, 61, 88, 97, 85, 91, 85, 38, 5, 0, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 19, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 12, 15, 19, 21, 23, 24, 24, 23, 24, 28, 32, 30, 22),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 11, 36, 58, 59, 60, 61, 47, 25, 11, 8, 10, 13, 15, 15, 12, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 68, 82, 72, 54, 57, 83, 100, 78, 38, 10, 1),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 8, 9, 0, 0, 0, 4, 11, 20, 25, 22, 13, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 39, 57, 50, 35, 28, 35, 42, 42, 35, 25, 21, 17),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 53, 73, 68, 47, 27, 14, 11, 24, 45, 55, 44, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 23, 49, 80, 100, 96, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 65, 100, 96, 85, 87, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 32, 50, 64, 79, 85, 82, 70, 55, 41, 38, 50, 58, 44, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 1, 1, 1, 1, 1, 1, 0, 3, 6, 9, 10, 9, 7, 4, 1, 1, 1, 3, 8, 11, 11, 6, 1, 1),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 13, 19, 24, 28, 31, 33, 34, 36, 36, 36, 33, 28, 21, 14),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 61, 91, 99, 97, 100, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 55, 82, 72, 65, 55, 0, 0, 48, 96, 100, 48, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 14, 33, 54, 72, 83, 83, 70, 53, 40, 44, 63, 78, 66, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 65, 83, 83, 72, 69, 83, 93, 74, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 31, 46, 36, 39, 24, 7, 17, 26, 21, 9, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 20, 32, 44, 56, 65, 69, 68, 61, 51, 42, 55, 91, 69, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 59, 82, 88, 72, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 12, 24, 24, 26, 43, 48, 31, 0, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 52, 82, 76, 47, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 17, 38, 50, 58, 81, 91, 54, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 21, 22, 21, 21, 21, 22, 24, 28, 29, 26, 19, 10, 5, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 73, 73, 84, 47, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 50, 57, 47, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 9, 19, 36, 57, 78, 88, 82, 69, 53, 48, 51, 59, 61, 53, 40, 28, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 40, 18, 1, 0, 0, 0, 6, 25, 55, 71, 56, 30, 15, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 32, 41),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 21, 47, 63, 78, 100, 78, 31, 0, 5, 10, 15, 15, 5, 0, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 50, 36, 0, 0, 0, 0, 0, 0, 0, 0, 41, 59, 72, 81, 79, 70, 59, 52, 51, 56, 66, 72, 72, 64),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 43, 34, 24, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 35, 57, 70),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 30, 38, 40, 34, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 71, 81, 71, 81, 78, 51, 41, 42, 42, 39, 33, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 30, 48, 64, 69, 61, 48, 35, 28, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 60, 90, 87, 60, 36, 27, 24, 24, 21, 21, 18, 18),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 10, 15, 25, 30, 35, 40, 40, 35, 30, 0, 20, 15, 10, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 21, 23, 26, 27, 27, 27, 34, 55, 69, 65, 77),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 18, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 88, 88, 36, 80, 68, 20, 24, 32, 36, 36, 32, 28, 20, 16),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 41, 41, 35, 22, 32, 35, 41, 45, 51, 51, 51, 48, 45, 45, 41, 41, 38, 32, 22, 16, 12, 12, 19, 22),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 11, 3, 0, 0, 0, 14, 18, 14, 7, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 16, 37, 61, 75, 67, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 62, 67, 75, 56, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 18, 17, 16, 15, 0, 0, 0, 0, 8, 8, 9, 12, 14, 17, 18, 18, 17, 17, 19, 23, 25, 23, 19, 14),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 5, 3, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 15, 20, 21),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 4, 22, 54, 68, 50, 40, 27, 18, 22, 31, 0, 0, 0, 0, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 10, 10, 19, 53, 95, 91, 48, 25, 21, 25, 29, 34, 36, 40, 42, 42, 42),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 38, 61, 73, 73, 79, 94, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 42, 28, 14, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 13, 17),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 22, 54, 77, 68, 36, 13, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 70, 62, 72, 75, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 17, 27, 37, 48, 48, 44, 34, 31, 37, 44, 48, 44, 34, 20, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 35, 58, 64, 47, 23, 17, 29, 47, 52, 52, 35, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 47, 78, 82, 67, 73, 94, 92, 73, 68, 79, 83, 70, 46, 23, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 7, 17, 35, 58, 79, 88, 81, 62, 41, 31, 40, 64, 87, 85, 59, 29, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 40, 60, 72, 72, 68, 68, 68, 56, 44, 36, 28, 20, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 32, 48, 63, 74, 76, 69, 56, 40, 25, 16, 11, 6, 1, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 5, 11, 17, 24, 32, 38, 41, 40, 34, 24, 13),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 18, 34, 50, 56, 50, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 7, 15, 24, 33, 38, 38, 32, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 100, 45, 37, 48, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 44, 55, 58, 51, 37, 20, 6, 1, 2, 16, 27, 22, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 8, 10, 12, 12, 14, 14, 16, 16, 20, 26, 34, 46, 52, 52, 44, 30),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 31, 46, 59, 62, 59, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 18, 41, 67, 84, 84, 78, 77, 85, 92, 91, 78, 58, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 8, 17, 26, 34, 39, 39, 34, 30, 26, 17, 13, 8, 17, 34, 17, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 16, 20, 24, 25, 27, 28, 37, 56, 77, 77, 55, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 2, 4, 13, 26, 42, 55, 61, 61, 59, 53, 44, 33, 22, 15, 12, 9, 8),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 36, 61, 73, 66, 59, 71, 91, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 57, 42, 31, 57, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 35, 42, 51, 53, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 63, 74, 76, 68, 65, 73, 65, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 30, 46, 54, 52, 45, 36, 33, 32, 33, 32, 30, 28, 25, 21, 16, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 22, 39, 55, 62, 57, 43, 28, 20, 19, 24, 30, 34, 37, 33, 27, 20, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 59, 66, 51, 29, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 75, 75, 75, 66, 75, 66, 58, 50, 41, 33, 25, 33, 0, 41, 50, 66, 75, 83, 91, 91, 91, 83, 83, 75),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 59, 75, 81, 77, 73, 73, 77, 77, 65, 46, 30, 22, 22, 18, 8, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 75, 79, 66, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 5, 15, 36, 63, 81, 84, 71, 60, 57, 55, 52, 42, 31, 39, 73, 97, 68, 23, 5),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 36, 59, 68, 63, 50, 45, 63, 63, 40, 27, 22, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 46, 66, 61, 49, 55, 64, 54, 34, 20, 22, 33, 43, 45, 38, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 27, 34, 29, 18, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 80, 100, 100, 80, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 21, 15, 10, 6, 10, 26, 54, 82, 89, 68, 37),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 69, 100, 76, 38, 30, 46, 61, 69, 61, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 13, 13, 12, 9, 7, 9, 19, 42, 67, 77, 63),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 37, 48, 48, 39, 25, 16, 13, 16, 20, 25, 25, 23, 16, 11),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 51, 100, 27, 2, 6, 16, 16, 13, 23, 25, 18, 9, 2, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 81, 79, 57, 36, 28, 27, 0, 0, 0, 0, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 27, 32, 30, 21, 11, 5, 3, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 13, 50, 93, 76, 83, 83, 66, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 12, 18, 31, 50, 62, 62, 56, 37, 25, 12, 6, 6, 0, 0, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 13, 31, 55, 68, 65, 51, 58, 51, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 43, 48, 46, 39, 34, 36, 46, 60, 68, 64, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 1, 0, 0, 0, 0, 0, 0, 6, 22, 30, 32, 56, 69, 51, 25, 18, 25, 35, 42, 40, 32, 21, 11, 5),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 1, 1, 1, 1, 1, 1, 1, 2, 6, 11, 16, 18, 17, 13, 9, 8, 13, 26, 43, 54, 52, 37, 19, 6),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 17, 33, 46, 53, 58, 82, 100, 82, 35, 10, 7, 12, 17, 15, 7, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 8, 10, 10, 8, 7, 5, 4, 4, 5, 5, 5, 5, 4, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 2, 81, 56, 50, 72, 80, 69, 46, 21, 7, 16, 54, 95, 92, 48, 6, 2),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 55, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 14, 17, 20, 23, 28, 35, 45, 56, 63, 63, 52),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 21, 34, 47, 58, 64, 63, 56, 45, 39, 56, 93, 100, 56, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 57, 64, 71, 42, 28, 35, 50, 0, 0, 0, 0, 0, 0),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 12, 12, 0, 0, 0, 25, 43, 43, 28, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 64, 66, 75, 62, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 38, 51, 55, 44, 28, 15, 8, 5, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 24, 37, 55, 75, 91, 98, 94, 82, 68, 56, 50, 50, 51, 55, 56, 56, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 3, 38, 96, 80, 69, 65, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 11, 6, 5, 5, 2, 2, 4, 8, 14, 21, 29, 35, 39, 38, 33, 28, 25, 30, 40, 49, 46, 35, 26, 21),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 27, 30, 33, 30, 25, 38),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 35, 55, 68, 71, 61, 47, 40, 47, 64, 74, 62, 37, 12, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 13, 8, 2, 2, 2, 2, 2, 10, 27, 45, 59, 64, 62, 48, 37, 29, 27, 29, 32, 32, 29, 24, 18, 10),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 39, 62, 77, 78, 63, 41, 25, 27, 45, 51, 31, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 16, 41, 58, 50, 25, 16, 50, 100, 66, 16, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 6, 21, 43, 69, 82, 73, 50, 26, 10, 0, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 4, 7, 7, 14, 23, 29, 30, 26, 23, 30, 52, 82, 100, 89, 58, 27, 7),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 31, 31, 26, 21, 0, 10, 15, 26, 36, 36, 26),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 37, 68, 48, 42, 57, 65, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 16, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 22, 18, 15),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 43, 68, 75, 50, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 90, 78, 71, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 80, 61, 44, 61, 76, 72, 51, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 36, 50, 56, 50, 40, 46, 68, 96, 96, 66, 28, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 39, 41, 34, 34, 43, 56, 63, 65, 60, 48, 39, 39, 68, 87, 56, 17, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 18, 22, 13, 4, 0, 0, 0, 13, 36, 54, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 0, 1, 5, 29, 53, 62, 60, 63, 66, 55, 33, 17, 15, 23, 31, 31, 22, 10, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 36, 54, 66, 66, 55, 38, 24, 16, 15, 20, 27, 33, 36, 35, 30, 23),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 71, 94, 83, 50, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 25, 34, 43, 51, 58, 61, 60, 57, 54, 55, 61, 67, 66, 53, 35, 18, 7, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 15, 17, 13, 15, 15, 11, 6, 3, 2, 6, 14, 24, 31, 28, 19, 9),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 27, 44, 71, 95, 100, 78, 46, 25, 23, 37, 51, 50, 34, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 2, 2, 7, 30, 61, 89, 100, 83, 50, 18, 2, 1, 20, 45, 49, 30, 4, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 21, 28, 35, 35, 42, 42, 42, 35, 28, 21, 14, 0, 14, 50, 57, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 14, 31, 49, 64, 71, 67, 56, 41, 28, 22, 22, 24, 25, 20, 12, 2, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 32, 46, 53, 50, 38, 23, 11, 5, 42, 100, 36, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 26, 43, 63, 81, 94, 96, 89, 76, 62, 53, 50, 49, 49, 45, 38, 29, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 69, 69, 63, 58, 53, 58, 81, 83, 40, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 81, 100, 62, 43, 48, 56, 59, 56, 50, 39, 28, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 5, 3, 0, 0, 20, 34, 43, 51, 74, 45, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 5, 21, 41, 38, 19, 0, 0, 0, 0, 65, 100, 83, 39, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 16, 6, 1, 1, 1, 0, 0, 1, 1, 12, 28, 42, 44, 34, 20, 10, 9, 16, 27, 39, 45, 44, 37, 25),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 56, 67, 76, 100, 100, 79, 51, 30, 20, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 80, 90, 82, 63, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 54, 67, 60, 37, 16, 5, 0, 0, 0, 0, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 29, 50, 62, 58, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 27, 47, 68, 88, 92, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 6, 17, 36, 60, 73, 78, 89, 100, 82, 45, 21, 19, 26, 36, 45, 47, 45, 36, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 69, 78, 78, 69, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 11, 3, 0, 0, 0, 14, 18, 14, 7, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 31, 62, 75, 80, 98, 97, 62, 32, 25, 26, 28, 27, 25, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 30, 32, 38, 41, 38, 30, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 60, 52, 52, 65, 76, 84, 84, 76, 65, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 22, 22, 0, 0, 0, 0, 6, 6, 7, 10, 21, 41, 59, 57, 37, 20, 17, 25, 39, 53, 58, 49, 35, 21),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 86, 89, 74, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 0, 0, 33, 67, 83, 66, 57, 58, 23, 0, 0, 30, 53, 50, 25, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 55, 81, 85, 82, 74, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 27, 0, 0, 0, 0, 0, 0, 2, 2, 10, 34, 63, 78, 59, 29, 10, 6, 12, 25, 36, 42, 42, 42, 40),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 21, 28, 35, 42, 42, 35, 28, 14, 14, 7, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 4, 11, 22, 37, 42, 38, 30, 30, 44, 37, 27, 27, 28, 28, 27, 24, 21, 17, 12),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 61, 72, 70, 58, 48, 32, 17, 31, 61, 0, 0, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 14, 42, 71, 85, 78, 50, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 62, 79, 68, 51, 68, 100, 86, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 14, 0, 0, 0, 0, 0, 0, 0, 0, 42, 71, 71, 71, 85, 71, 57, 57, 57, 71, 71, 71, 71, 57, 42),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 56, 76, 79, 65, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 52, 92, 100, 85, 82, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 10, 56, 59, 45, 59, 70, 70, 62, 45, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 67, 100, 88, 79, 79, 69, 51, 41, 44, 48, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 67, 80, 74, 55, 37, 33, 37, 38, 31, 20, 9, 3),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 23, 48, 76, 97, 94, 74, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 10, 27, 55, 87, 100, 85, 61, 46, 40, 40, 40, 38, 36, 31, 25, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 53, 65, 76, 88, 96, 92, 76, 50, 26, 11, 7, 15, 19, 11, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 4, 29, 53, 66, 72, 69, 51, 23, 2, 1, 3, 13, 20, 20, 13, 3, 1),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 53, 75, 64, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 44, 49, 62, 71, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 42, 50, 42, 49, 78, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 48, 92, 100, 82, 78, 80, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 45, 58, 67, 70, 69, 64, 55, 48, 49, 57, 71, 81, 80, 68, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 7, 9, 13, 23, 43, 69, 84, 83, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 58, 72, 71, 59, 51, 53, 61, 62, 51, 33, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 31, 48, 52, 41, 34, 40, 57, 81, 100, 91, 56, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 32, 33, 28, 19, 10, 5, 6, 13, 21, 21, 14),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 6, 6, 6, 0, 0, 0, 0, 10, 13, 13, 14, 14, 29, 45, 20, 6, 7, 14, 26, 37, 41, 34, 22, 10),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 31, 14, 5, 11, 25, 31, 22, 11, 8, 11),
('ChIJpS5vquBJXhMR8oU040lFFoU', 26, 17, 10, 6, 1, 0, 0, 0, 0, 0, 10, 13, 15, 15, 15, 14, 12, 10, 24, 29, 15, 23, 32, 34),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 27, 14, 6, 0, 0, 0, 0, 0, 0, 9, 15, 20, 21, 20, 18, 15, 13, 11, 11, 15, 22, 30, 33, 30),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 40, 53, 43, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 4, 16, 48, 80, 92, 72, 48, 44, 48, 60, 64, 60, 48, 32, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 16, 29, 43, 52, 54, 49, 36, 25, 20, 18, 18, 16, 14, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 37, 46, 48, 41, 29, 18, 18, 36, 46, 26, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 36, 63, 86, 100, 94, 75, 53, 39, 33, 33, 34, 32, 27, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 62, 44, 33, 40, 62, 85, 100, 92, 70, 44),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 64, 64, 35, 11, 0, 0, 0, 29, 52, 47, 17, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 47, 86, 87, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 29, 48, 70, 80, 76, 61, 42, 31, 36, 57, 80, 91, 76, 48, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 31, 33, 28, 30, 33, 23, 0, 0, 0, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 16, 33, 54, 71, 77, 73, 66, 63, 62, 61, 59, 56, 53, 50, 47, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 13, 17, 18, 15, 13, 14, 23, 37, 48, 48, 37),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 38, 58, 76, 79, 69, 48, 30, 25, 33, 43, 43, 28, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 57, 26, 36, 36, 26, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 28, 37, 42, 40, 35, 28, 22, 16, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 35, 52, 35, 52, 52, 17, 5, 17, 41, 35, 11, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 31, 57, 71, 77, 77, 80, 82, 82, 74, 57, 37, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 43, 60, 74, 79, 75, 67, 55, 44, 32, 0, 0, 0, 0, 0, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 24, 43, 54, 56, 53, 50, 52, 54, 52, 43, 27, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 61, 50, 50, 55, 77, 77, 83, 83, 77, 66, 50, 33, 27, 27, 38, 55, 77, 83, 83, 72, 61, 55, 61, 66),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 11, 60, 100, 73, 63, 70, 61, 40, 21, 21, 28, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 5, 7, 9, 10, 12, 15, 17, 13, 7, 6, 9, 12, 14, 13, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 31, 49, 54, 45, 36, 31, 29, 24, 0, 0, 0, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 86, 100, 92, 68, 46, 42, 56, 71, 65, 40, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 22, 30, 38, 44, 44, 42, 42, 48, 64, 86, 100, 100, 80, 52, 30, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 53, 53, 42, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 37, 62, 77, 71, 54, 51, 62, 51, 20, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 22, 28, 40, 48, 53, 53, 46, 37, 28, 20, 20, 44, 88, 91, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 27, 38, 45, 59, 78, 83, 67, 46, 37, 41, 47, 45, 33, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 20, 13, 7, 7, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 11, 14),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 65, 65, 89, 79, 55, 44, 41, 37, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 11, 19, 31, 46, 60, 72, 77, 74, 64, 50, 35, 22, 17, 24, 43, 55, 44, 24, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 29, 53, 70, 63, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 39, 62, 72, 80, 88, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 0, 4, 20, 48, 70, 81, 96, 100, 68, 31, 15, 14, 17, 18, 18, 15, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 23, 64, 63, 63, 70, 59, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 51, 40, 32, 28, 17, 17, 17, 18, 22, 28, 39, 53, 62, 64, 56, 44, 37, 37, 44, 53, 55, 50, 39, 29),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 18, 0, 0, 0, 0, 0, 18, 22, 32, 51, 75, 97, 100, 84, 58, 37, 30, 32, 40, 47, 48, 44, 35, 25),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 17, 27, 37, 42, 42, 35, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 7, 0, 10, 17, 42, 64, 50, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 30, 37, 41, 45, 46, 45, 43, 41, 41, 46, 56, 66, 72, 70, 61, 45, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 16, 23, 32, 46, 60, 72, 79, 76, 67, 58, 53, 55, 58, 55, 41, 30, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 54, 86, 36, 40, 63, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 37, 61, 74, 71, 69, 72, 69, 50, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 64, 92, 100, 85, 57, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 14, 42, 46, 25, 27, 44, 53, 51, 35, 18, 9, 14, 42, 77, 77, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 18, 22, 0, 0, 0, 0, 0, 0, 0, 0, 59, 27, 45, 86, 81, 36, 9, 0, 0, 0, 13, 36, 54, 40),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 68, 87, 93, 75, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 24, 41, 66, 89, 95, 76, 44, 19, 13, 24, 42, 48, 35, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 21, 43, 69, 90, 100, 92, 73, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 44, 73, 77, 51, 26, 15, 15, 22, 36, 53, 63, 58, 41, 25, 14, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 17, 8, 13, 17, 4, 4, 4, 13, 47, 47, 21, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 16, 0, 0, 0, 0, 0, 15, 22, 28, 33, 37, 37, 33, 30, 27, 27, 30, 35, 40, 42, 42, 37, 28, 20),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 20, 61, 100, 95, 67, 53, 50, 46, 36, 26, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 53, 61, 82, 78, 51, 36, 32, 0, 0, 0, 0, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 30, 40, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 27, 6, 9, 45, 30, 3, 6, 0, 0, 0, 0, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 42, 54, 62, 69, 81, 95, 89, 65, 46, 48, 59, 62, 53, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 47, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 45, 45, 36, 25, 20, 25, 36, 48, 53, 50, 39),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 35, 42, 38, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 22, 50, 66, 66, 61, 61, 61, 50, 38, 27, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1, 1, 1, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 1, 1, 1, 1, 1, 1, 1, 16, 34, 50, 61, 65, 62, 52, 40, 27, 19, 19, 27, 40, 52, 55, 47, 29),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 94, 92, 90, 88, 76, 58, 37, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 16, 40, 52, 40, 20, 32, 68, 44, 8, 0, 40, 8, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 58, 71, 75, 66, 50, 33, 23, 29, 55, 74, 60, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 84, 89, 64, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 82, 83, 79, 72, 39, 0, 0, 18, 19, 25, 34, 43, 50, 51, 47, 43, 39, 39, 45, 54, 65, 75, 82, 85),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 84, 83, 70, 58, 54, 53, 51, 46, 40, 31, 23, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 66, 75, 60, 33, 14, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 75, 66, 100, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 13, 1, 0, 0, 0, 0, 0, 1, 5, 22, 32, 32, 28, 28, 29, 29, 25, 19, 17, 23, 36, 46, 46, 34),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 20, 0, 0, 0, 0, 0, 0, 0, 1, 8, 25, 49, 65, 57, 37, 24, 22, 26, 29, 32, 35, 38, 37, 31),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 15, 43, 80, 80, 42, 14, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 33, 48, 51, 44, 29, 18, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 100, 75, 57, 72, 80, 69, 71, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 15, 40, 75, 100, 100, 84, 75, 75, 78, 73, 61, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 2, 30, 72, 100, 94, 88, 90, 32, 2, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 2, 26, 54, 75, 80, 66, 41, 15, 2, 2, 13, 40, 64, 70, 54, 26, 2),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 62, 75, 82, 83, 76, 64, 53, 52, 60, 61, 43, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 15, 15, 15, 15, 0, 5, 10, 10, 10, 10, 10, 0, 5, 5, 0, 0, 0, 0, 0, 0, 5, 10, 26, 36),
('ChIJWUxdrelJXhMRfiIBLlftogk', 33, 18, 12, 10, 0, 0, 0, 0, 0, 0, 23, 28, 31, 32, 30, 27, 22, 18, 20, 28, 33, 38, 48, 53),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 40, 77, 37, 51, 85, 100, 77, 40, 14, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 95, 77, 59, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 8, 19, 32, 44, 46, 37, 23, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 91, 95, 75, 48, 24, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 7, 15, 28, 44, 58, 64, 61, 48, 33, 20, 12, 11, 15, 21, 25, 26, 21, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 22, 26, 29, 30, 31, 30, 31, 41, 55, 50, 41, 46, 59, 64, 58, 43, 27, 15),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 5, 27, 33, 33, 72, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 8, 13, 9, 17, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 46, 52, 49, 40, 33, 39, 56, 71, 66, 44, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 0, 1, 4, 10, 11, 8, 2, 1, 0, 0, 1, 1, 3, 2, 0, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 19, 44, 71, 89, 88, 73, 57, 52, 58, 67, 70, 62, 46, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 0, 0, 0, 0, 0, 0, 0, 6, 22, 48, 64, 64, 64, 64, 55, 37, 26, 31, 53, 73, 66, 42, 17, 0),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 10, 29, 53, 72, 70, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 17, 41, 63, 69, 73, 100, 95, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 26, 42, 42, 32, 26, 23, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 15, 30, 36, 27, 13),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 26, 54, 73, 71, 69, 91, 89, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 61, 79, 70, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 75, 62, 58, 70, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 66, 73, 57, 30, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 9, 18, 16, 8, 5, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 23, 43, 62, 66, 60, 53, 56, 55, 43, 30, 29, 42, 60, 76, 84, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 12, 28, 45, 61, 72, 75, 71, 64, 61, 64, 74, 83, 81, 67, 44, 21, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 44, 44, 33, 22, 11, 11, 11, 11, 11, 33, 44, 55, 55, 55, 55, 44, 44, 55, 55, 44, 33, 33, 22, 22),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 0, 5, 10, 15, 26, 42, 47, 52, 47, 36, 26, 26, 42, 73, 78, 47, 15, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 38, 71, 84, 65, 32, 0, 0, 13, 44, 51, 23, 0, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 18, 28, 31, 25, 18, 12, 15, 25, 34, 34, 25, 12, 3, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 53, 67, 63, 58, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 11, 3, 1, 1, 0, 0, 0, 5, 15, 32, 53, 71, 80, 75, 63, 51, 46, 49, 54, 56, 53, 43, 30, 18),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 3, 13, 32, 57, 77, 84, 85, 81, 63, 40, 29, 28, 30, 30, 26, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_moving_company`
--

CREATE TABLE `pois_moving_company` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_moving_company`
--

INSERT INTO `pois_moving_company` (`POIs_ID`) VALUES
('ChIJVVVVFd1JXhMRDi-W13sWrzg');

-- --------------------------------------------------------

--
-- Table structure for table `pois_night_club`
--

CREATE TABLE `pois_night_club` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_night_club`
--

INSERT INTO `pois_night_club` (`POIs_ID`) VALUES
('ChIJAxo6z91JXhMRW0HHI55w3YY'),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk'),
('ChIJy6_1791JXhMRxDeYnQPCLYc'),
('ChIJzYO1YAKDoRQRHB44RW2S--I');

-- --------------------------------------------------------

--
-- Table structure for table `pois_park`
--

CREATE TABLE `pois_park` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_park`
--

INSERT INTO `pois_park` (`POIs_ID`) VALUES
('ChIJ8e14Y_k3XhMRwkBFeA4sA44'),
('ChIJGyYZay82XhMRYIH_uvIjIH8');

-- --------------------------------------------------------

--
-- Table structure for table `pois_pet_store`
--

CREATE TABLE `pois_pet_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_pet_store`
--

INSERT INTO `pois_pet_store` (`POIs_ID`) VALUES
('ChIJ-f8_0B82XhMRGO3574T-GbY'),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_pharmacy`
--

CREATE TABLE `pois_pharmacy` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_pharmacy`
--

INSERT INTO `pois_pharmacy` (`POIs_ID`) VALUES
('ChIJ876i5edJXhMR67q92o6fTlw'),
('ChIJY4432yU2XhMR2jrWEN7aWls');

-- --------------------------------------------------------

--
-- Table structure for table `pois_physiotherapist`
--

CREATE TABLE `pois_physiotherapist` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_physiotherapist`
--

INSERT INTO `pois_physiotherapist` (`POIs_ID`) VALUES
('ChIJLbEvNt5JXhMRFhliuqrrGNE');

-- --------------------------------------------------------

--
-- Table structure for table `pois_place_of_worship`
--

CREATE TABLE `pois_place_of_worship` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_place_of_worship`
--

INSERT INTO `pois_place_of_worship` (`POIs_ID`) VALUES
('ChIJYezHP91JXhMRerXmnLRu6xs');

-- --------------------------------------------------------

--
-- Table structure for table `pois_post_office`
--

CREATE TABLE `pois_post_office` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_post_office`
--

INSERT INTO `pois_post_office` (`POIs_ID`) VALUES
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io');

-- --------------------------------------------------------

--
-- Table structure for table `pois_restaurant`
--

CREATE TABLE `pois_restaurant` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_restaurant`
--

INSERT INTO `pois_restaurant` (`POIs_ID`) VALUES
('ChIJ3X7CiOBJXhMRbxx85eY4QPk'),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g'),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g'),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI'),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck'),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA'),
('ChIJb8dRjuBJXhMRn7kXnVAElMs'),
('ChIJbaPLFeJJXhMRYPqDu15HzSs'),
('ChIJcbyyvvBJXhMRSm_GgkofFOg'),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw'),
('ChIJCX9HZedJXhMRg5p7O7JXVxo'),
('ChIJE5rqhOFJXhMREi7B5EA45Dw'),
('ChIJESy5R-hJXhMRLxB4IK1HxUU'),
('ChIJG-nbR95JXhMRn-Nt0pw6n38'),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc'),
('ChIJgfsxwudJXhMRKnbcZM8BvL0'),
('ChIJh23mZNxJXhMR_FJs8zkMjSc'),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A'),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q'),
('ChIJizF4o5o3XhMRYFqw0tvXBHM'),
('ChIJja_lJOdJXhMRFlKclQ0f_RM'),
('ChIJkzfBJtlJXhMREAFzqdAmezs'),
('ChIJLdeECdxJXhMRQebIGUOpSeA'),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI'),
('ChIJnyp2TjJJXhMRqALyopTO6RA'),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE'),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k'),
('ChIJP95VVTRJXhMRCHXgsht_cOE'),
('ChIJpRuijI9JXhMR8QWStdLh_oc'),
('ChIJpS5vquBJXhMR8oU040lFFoU'),
('ChIJpUKWctxJXhMRpG8wNzBnwE0'),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU'),
('ChIJqXwupd9JXhMRbLAlCLbTKR0'),
('ChIJR-21pd1JXhMRuPef1Jr3S0s'),
('ChIJS35t8d1JXhMRs-NcRKrkiDY'),
('ChIJSV15sMJJXhMR2lFWUwnBmAE'),
('ChIJU9iH_p83XhMRvlOk16boN8k'),
('ChIJv6X8lPtJXhMRceVYtL2dNJE'),
('ChIJvxymD99JXhMRZa9GDUjgifQ'),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg'),
('ChIJw1kkdXdJXhMRetIwLyVDE6s'),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ'),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs'),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA'),
('ChIJ_T3emuBJXhMRFbT9YL3j32E');

-- --------------------------------------------------------

--
-- Table structure for table `pois_saturday`
--

CREATE TABLE `pois_saturday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_saturday`
--

INSERT INTO `pois_saturday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 48, 70, 77, 64, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 19, 30, 38, 32, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 20, 38, 54, 56, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 65, 67, 70, 70, 64, 65, 66, 67, 70, 72, 74, 76, 76, 76, 76, 75, 72, 70, 69, 66, 65, 64, 64, 62),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 34, 56, 56, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 50, 50, 37, 54, 75, 70, 0, 0, 0, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 0, 0, 39, 60, 67, 64, 67, 64, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 16, 25, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 16, 25, 40, 58, 76, 86, 85, 73, 54, 36, 23, 22, 45, 81, 81, 43, 16, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 19, 26, 33, 41, 47, 52, 53, 52, 46, 38, 31, 31, 39, 46, 46, 36, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 56, 79, 86, 74, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 68, 100, 79, 34, 10, 6, 13, 13, 13, 0, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 24, 59, 93, 100, 76, 49, 34, 26, 19, 13, 0, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 59, 81, 85, 88, 88, 74, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 41, 53, 52, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 14, 36, 50, 42, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 3, 12, 30, 51, 63, 62, 61, 65, 65, 53, 36, 27, 32, 44, 52, 50, 38, 23, 12),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 24, 29, 20, 5, 2, 10, 39, 73, 82, 56),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 7, 16, 22, 33, 66, 100, 90, 46, 14, 9, 29, 61, 70, 45, 16, 2),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 78, 52, 63, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 22, 31, 44, 56, 68, 75, 76, 73, 68, 59, 51, 45, 43, 40, 37, 34, 31, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 7, 15, 23, 30, 23, 30, 38, 46, 53, 53, 46, 38, 23, 15, 15, 15, 15, 23, 23, 30, 30, 38, 30, 30),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 72, 55, 65, 74, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 31, 37, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 36, 69, 92, 92, 73, 53, 41, 33, 23, 11, 0, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 100, 93, 71, 44),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 29, 52, 64, 57, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 84, 61, 61, 88, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 25, 45, 64, 70, 58, 38, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 56, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 13, 19, 23, 26, 24, 22, 20, 24, 35, 52, 69, 80, 80),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 2, 5, 13, 24, 33, 33, 26, 16, 8, 6, 7, 9, 11, 10, 8, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 81, 93, 84, 66, 62, 70, 72, 63, 49, 33, 16),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 11, 14, 18, 22, 28, 39, 56, 69, 67, 49, 27, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 28, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 28, 60, 92, 89, 53, 21, 0, 10, 25, 32, 21),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 27, 47, 62, 66, 56, 39, 24, 13, 0, 0, 0, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 41, 52, 58, 58, 47, 38, 32, 35, 47, 58, 58, 47, 32, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 1, 1, 1, 1, 1, 1, 1, 1, 2, 7, 11, 14, 14, 12, 10, 9, 10, 12, 15, 17, 18, 17, 14, 9),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 21, 36, 49, 56, 55, 50, 47, 49, 49, 42, 31, 22, 17, 14),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 27, 44, 75, 79, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 4, 20, 39, 57, 62, 53, 35, 20, 16, 25, 33, 26, 0, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 12, 53, 97, 87, 46, 21, 9, 0, 0, 0, 0, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 14, 28, 48, 70, 89, 100, 98, 85, 70, 71, 88, 76, 33, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 51, 69, 78, 75, 59, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 4, 5, 0, 0, 0, 38, 69, 87, 74),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 5, 11, 25, 56, 90, 100, 72, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 8, 15, 26, 38, 49, 56, 54, 49, 40, 36, 43, 50, 40, 21, 7, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 3, 11, 25, 48, 76, 96, 96, 82, 65, 53, 50, 46, 42, 36, 30, 25, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 69, 57, 44, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 66, 91),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 31, 42, 42, 36, 26, 15, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 71, 48, 27, 12, 0, 0, 0, 0, 0, 0, 50, 77, 89, 79, 63, 52, 51, 55, 59, 60, 62, 63, 63, 62),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 96, 75, 47, 23, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 61, 83, 97),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 30, 35, 38, 38, 30, 14, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 25, 44, 57, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 20, 41, 56, 71, 100, 92, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 33, 51, 63, 66, 57, 48, 39, 36, 33, 30, 27, 21),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 5, 10, 0, 10, 15, 40, 50, 20, 15, 10, 10, 10, 20, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 43, 47, 47, 42, 34, 27, 28, 44, 73, 98, 92),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 100, 81, 63, 36, 36, 72, 27, 18, 36, 63, 90, 100, 100, 81, 63, 45, 36, 36, 36, 36, 36, 36, 27, 27),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 44, 60, 56, 0, 0, 0, 0, 0, 0, 0, 36, 52, 52, 44, 28, 12, 0, 0, 0, 0, 12, 20, 36, 52),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 0, 0, 0, 0, 0, 0, 19, 45, 64, 58, 38, 32, 45, 64, 77, 74, 58, 38, 32, 38, 41, 32, 16, 0),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 40, 55, 55, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 35, 40, 56, 56, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 49, 30, 16, 9, 0, 0, 0, 0, 8, 14, 21, 32, 46, 57, 62, 61, 52, 41, 29, 23, 25, 39, 53, 51),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 65, 42, 38, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 48, 76, 83),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 63, 77, 50, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 25, 27, 34, 55, 85, 93, 72, 44, 29, 27, 25, 25, 29, 40, 68, 85, 68),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 6, 6, 0, 0, 0, 0, 0, 6, 20, 40, 60, 73, 66, 46, 26, 0, 6, 13, 26, 46, 53, 46, 26, 13),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 35, 55, 70, 76, 70, 61, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 74, 49, 22, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 46, 80, 100),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 22, 63, 95, 86, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 30, 57, 82, 90, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 10, 20, 41, 68, 93, 100, 89, 68, 48, 41, 44, 51, 48, 34, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 17, 23, 29, 35, 35, 41, 41, 35, 35, 35, 35, 35, 29, 29, 23, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 32, 41, 35, 25, 22, 22, 20, 17, 0, 0, 0, 0, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 0, 14, 25, 42, 62, 80, 88, 83, 67, 50, 40, 43, 50, 51, 41, 25, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 44, 64, 48, 24, 28, 44, 36, 16, 8, 16, 28, 28, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 17, 32, 50, 65, 74, 73, 62, 46, 29, 0, 0, 0, 0, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 40, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 9, 21, 32, 40, 44, 43, 40, 36, 33, 32, 32, 32),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 4, 15, 40, 57, 52, 100, 95, 22, 12, 11, 0, 0, 0, 0, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 22, 41, 59, 63, 52, 36, 25, 29, 54, 78, 72, 39, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 6, 8, 12, 22, 32, 40, 38, 28, 26, 48, 84, 82, 42),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 34, 65, 68, 81, 87, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 20, 25, 39, 52, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 39, 39, 39, 52, 56, 52, 39, 26, 17, 21, 47, 56, 30, 8, 0, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 30, 37, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 4, 6, 9, 18, 34, 61, 87, 100, 90, 66, 38, 0, 0, 0, 0, 0, 0),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 0, 35, 49, 49, 45, 47, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 100, 74, 37, 42, 37, 0, 0, 0, 5, 0, 0, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 46, 64, 73, 71, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 36, 64, 56, 40, 56, 88, 88, 59, 38, 29, 25, 21, 15, 11, 8, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 14, 19, 27, 36, 45, 50, 50, 43, 32, 24, 19, 21, 28, 34, 34, 26, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 29, 51, 59, 44, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 66, 66, 66, 66, 66, 66, 66, 66, 75, 75, 75, 75, 66, 66, 58, 58, 58, 50, 41, 41, 41, 50, 66, 75),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 22, 18, 24, 34, 44, 48, 48, 42, 32, 22, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 45, 58, 50, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 31, 42, 44, 39, 42, 65, 89, 81, 50, 28, 28, 36, 47, 55, 55, 50, 39, 28, 18),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 45, 59, 50, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 18, 23, 26, 33, 48, 64, 68, 58, 44, 35, 30, 27, 23, 18, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 77, 95, 75, 63, 97, 100, 40, 0, 0, 0, 0, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 50, 58, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 60, 51, 31, 17, 17, 32, 55, 73, 76, 61, 38),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 20, 25, 30, 33, 36, 38, 43, 56, 79, 100, 98),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 34, 41, 41, 34, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 61, 77, 69, 45, 23, 11, 0, 0, 0, 0, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 100, 61, 42, 35, 28, 19, 12, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 6, 26, 60, 86, 80, 80, 100, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 12, 25, 37, 50, 62, 56, 43, 31, 18, 12, 0, 0, 18, 25, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 34, 58, 72, 72, 58, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 25, 43, 58, 63, 57, 48, 49, 65, 88, 100, 0, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 50, 44, 27, 10, 15, 0, 0, 2, 8, 22, 45, 68, 77, 65, 42, 23, 16, 19, 27, 36, 42, 41, 39, 44),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 19, 10, 3, 1, 2, 1, 1, 1, 5, 14, 25, 33, 37, 36, 33, 31, 35, 44, 58, 75, 91, 100, 98, 86),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 5, 10, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 8, 9, 10, 9, 7, 5, 4, 4, 5, 5, 5, 4, 4, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 8, 25, 45, 61, 70, 67, 54, 36, 20, 15, 23, 42, 61, 67, 53, 28, 6),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 75, 59, 32, 12, 0, 0, 0, 0, 0, 0, 0, 0, 15, 21, 27, 32, 35, 38, 41, 49, 62, 79, 92, 92),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 21, 38, 60, 82, 97, 99, 90, 75, 69, 82, 89, 66, 0, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 78, 64, 64, 57, 28, 50, 35, 0, 0, 0, 0, 0, 0),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 46, 42, 44, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 30, 43, 48, 41, 27, 14, 7, 3, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 8, 15, 25, 39, 53, 63, 67, 63, 55, 44, 39, 43, 55, 68, 74, 65, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 19, 34, 53, 61, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 41, 34, 21, 9, 4, 3, 5, 11, 23, 40, 58, 71, 73, 64, 49, 36, 32, 43, 65, 87, 89, 73, 51, 34),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 86, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 25, 36, 50, 63, 77, 91),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 26, 51, 74, 80, 65, 43, 30, 29, 36, 40, 35, 24, 12, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 29, 45, 51, 59, 54, 32, 10, 5, 8, 10, 13, 13, 10, 5),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 25, 43, 60, 70, 72, 64, 50, 48, 64, 41, 0, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 17, 32, 36, 28, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 9, 15, 21, 25, 26, 24, 20, 20, 26, 32, 27, 0, 0, 0),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 100, 36, 0, 0, 0, 5, 15, 31, 21, 0, 0),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 43, 50, 37, 18, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 74, 55, 35, 35, 48, 48, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 45, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 24, 61, 99, 100),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 56, 87, 81, 56, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 58, 63, 55, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 76, 59, 48, 55, 72, 91, 85, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 26, 41, 56, 65, 70, 73, 73, 73, 70, 58, 43, 48, 78, 87, 48, 12, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 1, 1, 8, 22, 35, 41, 44, 54, 68, 67, 48, 32, 26, 23, 20, 16, 11, 6, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 26, 37, 48, 55, 56, 51, 42, 31, 22, 22, 45, 76, 72, 36, 25, 53),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 30, 36, 42, 53, 74, 96, 100, 79, 53, 37, 32, 30, 28, 26, 25, 22, 18, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 12, 17, 18, 16, 13, 11, 15, 27, 46, 68, 85, 89, 79, 58),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 16, 37, 50, 53, 79, 55, 29, 29, 30, 30, 27, 24, 0, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 25, 48, 72, 80, 78, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 2, 3, 20, 39, 59, 76, 87, 87, 72, 47, 26, 21, 27, 35, 32, 18, 2, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 0, 14, 21, 28, 42, 78, 100, 64, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 2, 15, 34, 59, 83, 100, 99, 82, 60, 44, 37, 35, 31, 22, 11, 1, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 58, 77, 71, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 11, 20, 33, 49, 64, 73, 74, 67, 56, 46, 39, 37, 36, 34, 30, 23, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 75, 56, 35, 0, 0, 1, 2, 3, 3, 3, 3, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 20, 33, 50, 50, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 69, 53, 53, 69, 69, 61, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 42, 16, 0, 1, 1, 0, 0, 1, 1, 10, 28, 48, 61, 58, 43, 31, 30, 40, 53, 64, 75, 89, 100, 93),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 40, 48, 40, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 52, 64, 67, 56, 37, 18, 7, 0, 0, 0, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 50, 58, 79, 100, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 10, 15, 19, 28, 39, 54, 67, 71, 65, 50, 39, 34, 36, 43, 50, 52, 47, 39, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 34, 34, 30, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 40, 55, 55, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 27, 53, 77, 83, 67, 62, 71, 31, 26, 28, 28, 25, 0, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 55, 41, 34, 42, 44, 33, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 44, 63, 81, 94, 100, 94, 81, 63, 44, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 26, 15, 0, 0, 0, 0, 3, 4, 6, 9, 19, 48, 77, 59, 26, 14, 15, 21, 33, 49, 60, 58, 45, 27),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 47, 85, 100, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 0, 0, 39, 60, 67, 64, 67, 64, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 40, 0, 0, 0, 0, 0, 0, 0, 2, 10, 38, 76, 85, 53, 17, 4, 2, 10, 34, 57, 57, 44, 42, 48),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 71, 92, 100, 100, 85, 71, 50, 35, 28, 0, 0, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 8, 15, 24, 34, 42, 47, 44, 35, 25, 17, 12, 12, 15, 18, 20, 20, 17, 12, 10),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 17, 22, 24, 20, 12, 7, 4, 2, 0, 0, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 57, 0, 0, 0, 0, 0, 0, 0, 0, 57, 71, 71, 71, 71, 71, 71, 71, 85, 85, 100, 100, 100, 100, 85),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 44, 73, 85, 73, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 5, 18, 43, 70, 86, 89, 83, 81, 75, 59, 35, 0, 0, 0, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 46, 51, 48, 40, 30, 22, 20, 19, 19, 16, 11, 6),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 25, 56, 48, 33, 35, 41, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 8, 14, 23, 34, 42, 48, 48, 44, 36, 31, 29, 29, 29, 27, 19, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 57, 73, 73, 61, 46, 34, 26, 23, 23, 26, 26, 30, 30, 26, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 1, 1, 13, 41, 69, 83, 76, 54, 31, 19, 20, 30, 41, 44, 35, 19, 4),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 42, 50, 28, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 46, 74, 94, 89, 65, 37, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 21, 90, 100, 60, 63, 60, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 46, 48, 49, 51, 54, 51, 43, 34, 30, 35, 46, 54, 55, 47, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 38, 48, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 41, 64, 82, 87, 80, 68, 63, 61, 51, 32, 0, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 7, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 22, 23, 20, 14, 10, 16, 40, 72, 85, 64),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 20, 40, 60, 60, 51, 51, 48, 0, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 44, 32, 21, 0, 0, 0, 0, 2, 5, 10, 16, 22, 27, 29, 26, 21, 17, 16, 18, 23, 27, 29, 31, 39),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 77, 51, 25, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 8, 17, 25, 40, 54, 65, 74, 74, 68),
('ChIJpS5vquBJXhMR8oU040lFFoU', 82, 54, 28, 11, 1, 0, 0, 0, 0, 0, 17, 25, 33, 40, 45, 45, 43, 39, 38, 47, 66, 89, 100, 89),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 91, 71, 40, 0, 0, 0, 0, 0, 0, 5, 11, 21, 31, 39, 42, 37, 30, 25, 26, 32, 41, 51, 65, 84),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 100, 76, 43, 43, 46, 36, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 20, 48, 72, 84, 80, 64, 56, 52, 52, 48, 32, 20, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 10, 21, 50, 92, 100, 65, 38, 29, 25, 23, 0, 0, 0, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 41, 86, 100, 66, 45, 66, 60, 26, 21, 21, 10, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 66, 67, 76, 78, 64, 41, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 70, 66, 55, 40, 29, 22, 18, 14, 14, 11),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 11, 100, 58, 70, 94, 64, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 37, 66, 75, 52, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 36, 31, 19, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 18, 27, 36, 42, 43, 40, 31, 0, 0, 0, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 16, 19, 26, 26, 18, 0, 0, 0, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 11, 29, 49, 58, 61, 72, 90, 100, 95, 80, 67, 61, 60, 60, 57, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 17, 28, 34, 32, 25, 21, 29, 55, 86, 94, 71),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 20, 58, 97, 87, 61, 53, 61, 69, 69, 61, 51, 38, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 57, 36, 36, 100, 47, 26, 21, 0, 0, 0, 0, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 14, 39, 73, 100, 100, 76, 49, 31, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 20, 34, 34, 17, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 29, 48, 72, 91, 100, 96, 82, 65, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 39, 67, 90, 100, 91, 76, 66, 60, 46, 23, 0, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 55, 61, 61, 61, 66, 77, 83, 88, 77, 66, 50, 44, 50, 55, 55, 55, 50, 50, 50, 55, 61, 72, 77, 77),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 3, 4, 6, 9, 14, 16, 14, 10, 6, 5, 6, 9, 9, 7, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 35, 61, 85, 98, 92, 73, 47, 0, 0, 0, 0, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 53, 71, 50, 42, 61, 65, 39, 0, 0, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 30, 47, 59, 61, 55, 50, 48, 44, 34, 21, 0, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 34, 52, 42, 22, 14, 14, 14, 14, 12, 10, 0, 0, 0, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 25, 32, 35, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 17, 26, 35, 44, 51, 53, 48, 40, 31, 24, 33, 62, 95, 91, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 21, 42, 66, 88, 100, 96, 79, 56, 35, 25, 56, 61, 0, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 76, 67, 45, 24, 18, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 36, 69, 92),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 9, 12, 18, 30, 47, 64, 70, 61, 43, 27, 18, 18, 24, 32, 37, 36, 31, 23, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 43, 60, 65, 56, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 1, 3, 7, 21, 39, 43, 39, 70, 32, 12, 14, 15, 18, 18, 20, 18, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 27, 52, 64, 72, 94, 100, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 55, 50, 40, 28, 25, 17, 13, 12, 16, 24, 35, 46, 54, 55, 53, 50, 50, 55, 64, 74, 81, 86, 86, 81),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 14, 0, 0, 0, 0, 0, 12, 20, 30, 42, 58, 70, 72, 68, 57, 44, 38, 38, 42, 48, 50, 47, 38, 28),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 7, 22, 47, 82, 100, 85, 52, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 6, 14, 35, 66, 87, 79, 56, 37, 30, 32, 35, 40, 53, 77, 75, 48, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 18, 25, 37, 53, 65, 72, 67, 55, 46, 41, 44, 51, 58, 60, 58, 48, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 36, 31, 31, 27, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 22, 59, 72, 75, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 50, 78, 64, 57, 42, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 5, 12, 25, 42, 55, 61, 55, 42, 27, 16, 12, 18, 31, 44, 53, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 50, 27, 9, 4, 0, 0, 0, 0, 0, 0, 22, 36, 50, 54, 54, 45, 27, 18, 9, 4, 4, 9, 18, 22),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 12, 32, 56, 77, 83, 72, 50, 29, 18, 18, 20, 16, 0, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 11, 14, 15, 15, 14, 13, 13, 13, 11, 9, 0, 0, 0, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 26, 30, 47, 34, 21, 21, 17, 21, 21, 21, 21, 17, 0, 0, 0, 0, 0, 13, 21, 30, 39, 43, 47, 52),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 13, 0, 0, 0, 0, 0, 6, 15, 28, 47, 69, 88, 100, 100, 88, 72, 57, 47, 40, 38, 37, 33, 28, 22),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 38, 66, 89, 96, 86, 61, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 26, 32, 30, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 0, 10, 30, 10, 10, 10, 20, 30, 40, 50, 60, 60, 60, 60, 50, 50, 40, 40, 50, 50, 50, 50, 50, 40),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 15, 30, 51, 81, 100, 100, 78, 51, 30, 18, 9, 0, 0, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 21, 64, 100, 92, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 43, 54, 54, 68, 94, 100, 83, 68, 63, 60, 53, 43, 0, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 67, 43, 24, 12, 0, 0, 0, 0, 0, 0, 0, 0, 28, 32, 34, 33, 32, 33, 37, 47, 60, 72, 79, 77),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 26, 38, 43, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 33, 66, 88, 94, 72, 38, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 4, 6, 5, 3, 1, 0, 0, 1, 1, 1, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 1, 1, 1, 1, 1, 1, 1, 2, 15, 27, 37, 44, 48, 46, 38, 28, 18, 15, 20, 30, 39, 42, 35, 21),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 35, 41, 44, 41, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 70, 86, 75, 48, 21, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 93, 95, 89, 73, 66, 52, 41, 34, 30, 29, 28, 27, 27, 28, 28, 29, 31, 34, 41, 51, 64, 77, 87, 95),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 93, 79, 68, 63, 54, 42, 37, 45, 49, 33, 12, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 60, 89, 77, 41, 16, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 27, 36, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 31, 31, 36, 31, 15, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 43, 9, 0, 0, 0, 0, 0, 1, 1, 23, 50, 70, 75, 64, 52, 50, 55, 58, 52, 47, 56, 78, 96, 91),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 30, 0, 0, 0, 0, 0, 0, 0, 7, 18, 38, 64, 82, 83, 70, 53, 43, 35, 29, 32, 51, 76, 89, 82),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 33, 50, 61, 56, 42, 25, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 59, 81, 100, 96, 81, 55, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 26, 24, 24, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 13, 23, 32, 43, 52, 56, 56, 52, 43, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 34, 58, 70, 68, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 2, 2, 12, 48, 88, 100, 74, 36, 14, 12, 21, 30, 35, 33, 25, 13, 2),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 24, 39, 58, 77, 92, 100, 97, 86, 71, 65, 78, 78, 0, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 36, 31, 26, 26, 0, 0, 0, 0, 0, 63, 0, 0, 0, 5, 5, 0, 10, 10, 15, 15, 15, 10, 15, 26),
('ChIJWUxdrelJXhMRfiIBLlftogk', 94, 73, 42, 18, 0, 0, 0, 0, 0, 0, 16, 19, 22, 24, 24, 24, 21, 20, 20, 28, 43, 66, 88, 98),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 33, 55, 59, 81, 62, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 2, 20, 64, 100, 88, 64, 55, 43, 23, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 79, 72, 66, 62, 54, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 2, 11, 24, 30, 30, 38, 52, 52, 37, 20, 11, 11, 13, 15, 17, 16, 14, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 72, 66, 59, 61, 61, 44, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 17, 27, 35, 39, 40, 40, 46, 55, 60, 54, 44, 40, 45, 54, 58, 54, 43, 29),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 19, 43, 65, 67, 75, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 36, 58, 75, 75, 62, 52, 66, 96, 100, 64, 0, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 0, 29, 48, 53, 39, 18, 5, 3, 0, 0, 4, 13, 20, 17, 8, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 23, 47, 74, 94, 100, 89, 66, 45, 38, 51, 64, 54, 0, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 40, 22, 11, 0, 0, 0, 0, 2, 6, 15, 33, 55, 73, 73, 57, 37, 24, 24, 35, 46, 51, 46, 35, 24),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 16, 45, 91, 100, 63, 35, 25, 0, 0, 0, 0, 0, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 19, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 18, 50, 89, 100, 69),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 32, 46, 51, 58, 81, 100, 88, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 38, 73, 90, 73, 41, 20, 15, 22, 33, 36, 25, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 28, 35, 35, 37, 38, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 0, 0, 36, 48, 58, 66, 71, 71, 66, 58, 49, 46, 56, 66, 63, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 32, 56, 76, 82, 74, 60, 51, 51, 58, 60, 53, 40, 25, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 15, 21, 21, 31, 42, 52, 57, 52, 36, 26, 15, 21, 26, 31, 31, 26, 21, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 48, 48, 71, 92, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 12, 15, 18, 18, 18, 15, 12, 18, 31, 56, 71, 62, 34, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 20, 37, 37, 29, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 42, 50, 39, 45, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 21, 8, 1, 1, 0, 0, 0, 1, 13, 31, 54, 77, 93, 98, 91, 77, 66, 62, 65, 72, 76, 74, 63, 48),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 2, 5, 11, 22, 33, 43, 46, 42, 32, 22, 15, 16, 22, 26, 22, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_school`
--

CREATE TABLE `pois_school` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_school`
--

INSERT INTO `pois_school` (`POIs_ID`) VALUES
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU');

-- --------------------------------------------------------

--
-- Table structure for table `pois_shoe_store`
--

CREATE TABLE `pois_shoe_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_shoe_store`
--

INSERT INTO `pois_shoe_store` (`POIs_ID`) VALUES
('ChIJ876i5edJXhMR67q92o6fTlw'),
('ChIJeyeosMJJXhMRtDLyzhTEbGk'),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA'),
('ChIJNZ1UauhJXhMRkTlRze9u1xg'),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4'),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_shopping_mall`
--

CREATE TABLE `pois_shopping_mall` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_shopping_mall`
--

INSERT INTO `pois_shopping_mall` (`POIs_ID`) VALUES
('ChIJ0xg-_4BJXhMRADzrgzcpuh4'),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0'),
('ChIJ88kULCM2XhMRXqQTjKQz9-s'),
('ChIJfdC04No3XhMR8JrkZLvazh4'),
('ChIJGYPtKyY2XhMRDq5n0hrb108'),
('ChIJOZMLiudJXhMR5Yzounsbock'),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_spa`
--

CREATE TABLE `pois_spa` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_spa`
--

INSERT INTO `pois_spa` (`POIs_ID`) VALUES
('ChIJ0SLujdJJXhMReoZCMz2q5gU');

-- --------------------------------------------------------

--
-- Table structure for table `pois_storage`
--

CREATE TABLE `pois_storage` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_storage`
--

INSERT INTO `pois_storage` (`POIs_ID`) VALUES
('ChIJVVVVFd1JXhMRDi-W13sWrzg');

-- --------------------------------------------------------

--
-- Table structure for table `pois_store`
--

CREATE TABLE `pois_store` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_store`
--

INSERT INTO `pois_store` (`POIs_ID`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o'),
('ChIJ-f8_0B82XhMRGO3574T-GbY'),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks'),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg'),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o'),
('ChIJ0We6ISc2XhMR0JstwP2xC6s'),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw'),
('ChIJ24KnIg83XhMRX_b9V6y7PKE'),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc'),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0'),
('ChIJ34_kIOBJXhMR7imf2tRjF3o'),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU'),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E'),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s'),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE'),
('ChIJ63usud1JXhMRUS8wsjnW_cE'),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A'),
('ChIJ6aiJL91JXhMRdtCJALBOZl8'),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI'),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8'),
('ChIJ876i5edJXhMR67q92o6fTlw'),
('ChIJ88kULCM2XhMRXqQTjKQz9-s'),
('ChIJ8ShAw91JXhMRVTCotrEjofM'),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw'),
('ChIJ8yJ6relJXhMRo2XqEv0keZU'),
('ChIJA0rrId1JXhMRkMcQDP_FF9U'),
('ChIJa4Go5yc2XhMR-30hKzhbx_c'),
('ChIJA8XmnCc2XhMRoA2h45hqTg4'),
('ChIJaeHBPuBJXhMRuNbzVocLWWA'),
('ChIJaeM-2txJXhMR-jNLpMJiuS8'),
('ChIJaf7ny95JXhMREjCDphUgY9k'),
('ChIJaSelXrpJXhMRn8muKjS7tz8'),
('ChIJaVrgkCU2XhMRvIk-RC18hoM'),
('ChIJb-UU-uBJXhMR3im-80UB9EU'),
('ChIJb2vum-dJXhMRHv6ovkdcrbA'),
('ChIJb6ZtRxw2XhMR3wPLklk4dic'),
('ChIJC5wDAOhJXhMRbEJgpo45o_o'),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg'),
('ChIJcWjkR91JXhMR9oP34Ui6bqA'),
('ChIJCX9HZedJXhMRg5p7O7JXVxo'),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk'),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8'),
('ChIJCyeO-eBJXhMRAkMflWn6zlU'),
('ChIJD12aA_c3XhMR3g61s7cKpQc'),
('ChIJdRnTGehJXhMRC_2WB2YrFVc'),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU'),
('ChIJdz60KyA2XhMRiCVdmLDxyx8'),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI'),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo'),
('ChIJe6e_jdxJXhMR8_viy49sZBo'),
('ChIJeT2kxTo2XhMRCntpyoHXt2A'),
('ChIJeWquqyE2XhMRLB_819PA_b0'),
('ChIJeyeosMJJXhMRtDLyzhTEbGk'),
('ChIJEzGdRic2XhMRYTCEu8QXinw'),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg'),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k'),
('ChIJFaU1TBw2XhMRq87NWxs61hA'),
('ChIJfdC04No3XhMR8JrkZLvazh4'),
('ChIJfQQHiudJXhMR-4G7rHZsOF4'),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw'),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg'),
('ChIJGb49U91JXhMRVTXGitn-18A'),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI'),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY'),
('ChIJgwBl6SU2XhMRMjbygjBSboQ'),
('ChIJGYPtKyY2XhMRDq5n0hrb108'),
('ChIJGyvrM91JXhMRcWNtBtoQDOo'),
('ChIJh003YSY2XhMRXA3c9sHdMAw'),
('ChIJH1FcPxw2XhMRzjMDiIppoZg'),
('ChIJh23mZNxJXhMR_FJs8zkMjSc'),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc'),
('ChIJH50SYN5JXhMRNZ0H3mKanto'),
('ChIJHf2oKOhJXhMRU48jxmo1y6s'),
('ChIJhVyNxiU2XhMR-047iPt8FPY'),
('ChIJhYRbv8JJXhMRhO8shM1QpIw'),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY'),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo'),
('ChIJjdavRtxJXhMR6Lsap2NAPjM'),
('ChIJjStkv95JXhMRUoCUguhw85A'),
('ChIJJU-orzo2XhMRWpzclnuGfzw'),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw'),
('ChIJk0zmsB82XhMRaUVxT1MhpGY'),
('ChIJK9JxXd5JXhMRGFctHHOYk9U'),
('ChIJKT-X7SA2XhMR2dSVr5pougg'),
('ChIJKy7R3SY2XhMReaxikN_Jbb0'),
('ChIJkyMAAtxJXhMReRGaeAMIras'),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic'),
('ChIJkzfBJtlJXhMREAFzqdAmezs'),
('ChIJl7UuQ91JXhMR1v-v16uKft0'),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA'),
('ChIJLzvSjNtJXhMRaLcN70J3l3k'),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw'),
('ChIJmxF_PCc2XhMRJpnrz44FtbU'),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY'),
('ChIJn51UoxY2XhMRf1wTCw8qdLI'),
('ChIJn65BbOJJXhMRRvBmSjqKNX0'),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw'),
('ChIJnwe6K-hJXhMRHtx9OxScQ50'),
('ChIJnyLA8iM2XhMR2MQ82SsQXww'),
('ChIJnyp2TjJJXhMRqALyopTO6RA'),
('ChIJNZ1UauhJXhMRkTlRze9u1xg'),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk'),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo'),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4'),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k'),
('ChIJowSURxM3XhMRmbAxgMezpuk'),
('ChIJOztsXBk2XhMRIu0EEdF27js'),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY'),
('ChIJP-URlSY2XhMRXXseyEczfzI'),
('ChIJp69bRt1JXhMRLcacpegzEHM'),
('ChIJPxOeftxJXhMR-yriXsgge7w'),
('ChIJpYe_5iM2XhMRxwCviSFImLA'),
('ChIJPzt7ad1JXhMRGFvhsh_u14k'),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw'),
('ChIJqf86hOdJXhMRRbJprshqh38'),
('ChIJQSyU1MJJXhMRoim9HkdlBrM'),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc'),
('ChIJQ_LStsJJXhMRenKaHK-PKUI'),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek'),
('ChIJR5AWLd1JXhMR0obEMueRTlU'),
('ChIJReMkcU03XhMRHtlq-RGG_Mc'),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4'),
('ChIJRTEamHO-oRQRG1JF5zvvqd4'),
('ChIJR_N2telJXhMRYj3MLKzzwQ8'),
('ChIJs26l3KI3XhMR7NBzdimtWlc'),
('ChIJSap7relJXhMRUkopSQsXwuI'),
('ChIJSfhTP95JXhMR-zVAEzOU464'),
('ChIJSWbYERM3XhMRX5qduCDaczY'),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs'),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM'),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4'),
('ChIJu-vWGU03XhMRQPtHWoqT688'),
('ChIJu3E6_NtJXhMRThQBLQwqhow'),
('ChIJu3rojN5JXhMRF2jtmwJYy04'),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y'),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4'),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI'),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU'),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY'),
('ChIJv9c17udJXhMR4Wfccn7HIws'),
('ChIJVeODuCE2XhMRcDFqFETdzdw'),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U'),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk'),
('ChIJvXsLLNxJXhMRIJvrwlA58MA'),
('ChIJVzAMZC82XhMRbhndkrdgnck'),
('ChIJV_4IWd1JXhMRYeQYVYtdnow'),
('ChIJW0cahd1JXhMRhjG4WP18Wmk'),
('ChIJW2MRl91JXhMRZKkwwIR0xGY'),
('ChIJW3ewRd1JXhMR24JhBJLE98A'),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok'),
('ChIJwdFpF-JJXhMRFRwIQP7phY8'),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ'),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs'),
('ChIJXw7utONJXhMRtc156JXTs80'),
('ChIJY4432yU2XhMR2jrWEN7aWls'),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg'),
('ChIJYQIxGyE2XhMRupS59ERDUNc'),
('ChIJYTN3rt1JXhMRwPer72FVYjw'),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw'),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc'),
('ChIJZxabsd5JXhMRYSDHkWwENxM'),
('ChIJzxNiQN5JXhMRKmxPJMORUZI'),
('ChIJ_8wVL-hJXhMRQb31tkPLz48'),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ'),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks'),
('ChIJ_aH-l91JXhMRTIMZDyA117U'),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw');

-- --------------------------------------------------------

--
-- Table structure for table `pois_sunday`
--

CREATE TABLE `pois_sunday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_sunday`
--

INSERT INTO `pois_sunday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 62, 62, 62, 62, 62, 62, 64, 65, 67, 69, 69, 70, 70, 69, 69, 69, 69, 67, 69, 69, 69, 67, 67, 66),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 11, 16, 26, 40, 54, 64, 62, 52, 39, 32, 33, 44, 56, 59, 50, 34, 21, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 14, 20, 30, 39, 47, 52, 49, 42, 33, 23, 20, 30, 61, 80, 58, 25, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 11, 19, 31, 50, 69, 84, 88, 80, 63, 43, 27, 20, 23, 37, 52, 57, 51, 35, 19),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 1, 2, 2, 6, 33, 66, 44, 4),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 49, 56, 45, 27, 17, 25, 47, 67, 73, 59, 36, 0, 0),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 0, 0, 25, 34, 54, 79, 95, 95, 75, 50, 33, 33, 45, 59, 63, 54, 0, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 23, 23, 15, 15, 30, 30, 30, 30, 46, 53, 53, 38, 23, 0, 7, 7, 0, 0, 15, 23, 30, 38, 38, 46),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 22, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 83, 71, 48, 24),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 68, 0, 0, 0, 0, 0, 0, 0, 0, 20, 46, 82, 100, 81, 47, 23, 19, 24, 32, 38, 41, 40, 34, 26),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 0, 5, 18, 23, 12, 8, 7, 6, 7, 11, 16, 18, 16, 11, 7, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 16, 20, 17, 14, 15, 25, 37, 41, 31, 16, 4),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 34, 39, 37, 29, 25, 41, 77, 100, 78, 36, 9, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 10, 32, 67, 96, 85, 53, 28, 0, 0, 0, 0, 0),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 20, 29, 38, 50, 58, 64, 67, 64, 58, 52, 100, 100, 23, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 12, 13, 12, 7, 2, 1, 1, 1, 6, 9, 9, 7, 3),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 85, 100, 66, 55, 58, 59, 55, 46, 35, 23, 13, 5),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 46, 64, 71, 60, 39, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 86, 100, 83, 0, 0, 0, 0, 0, 0, 0),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 17, 64, 100, 63, 21, 22, 42, 47, 42, 40, 33, 17, 7, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 100, 87, 60, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 58, 51, 41, 32, 0, 0, 0, 0, 0, 0, 31, 43, 52, 55, 52, 48, 45, 50, 58, 67, 74, 77, 71, 62),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 96, 81, 57, 35, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 31, 41, 45),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 78, 69, 51, 69, 72, 48, 24, 12, 0, 9, 9, 9),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 7, 10, 11, 13, 15, 22, 32, 47, 59, 60, 50),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 18, 9, 0, 0, 9, 9, 18, 27, 36, 45, 54, 45, 27, 18, 9, 9, 18, 36, 63, 90, 90, 72, 45, 27),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 64, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 0, 0, 0, 0, 0, 0, 9, 16, 25, 32, 32, 25, 22, 16, 16, 12, 12, 12, 9, 6, 9, 0, 22, 35),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 35, 17, 9, 7, 0, 0, 0, 0, 9, 9, 13, 37, 83, 100, 67, 45, 47, 54, 53, 46, 36, 27, 21, 19),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 89, 100, 81, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 14, 23, 16),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 29, 34, 55, 89, 100, 76, 44, 29, 27, 27, 27, 27, 27, 29, 29, 29, 29),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 87, 54, 24, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 19, 35, 45),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 31, 48, 65, 79, 82, 75, 65, 58, 58, 65, 68, 58, 44, 31, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 0, 11, 29, 47, 52, 41, 23, 17, 17, 23, 35, 41, 35, 29, 17, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 16, 18, 18, 17, 16, 16, 14, 0, 0, 0, 0, 0, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 0, 16, 25, 45, 71, 87, 83, 59, 34, 23, 29, 49, 63, 62, 43, 22, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 5, 12, 20, 29, 36, 42, 45, 46, 44, 39, 32, 24, 16),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 20, 43, 70, 82, 74, 56, 54, 74, 98, 100, 71, 32, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 22, 52, 70, 52, 22),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 8, 21, 43, 69, 73, 56, 30, 13, 0, 65, 100, 13, 13, 26, 13, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 19, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 4, 7, 13, 22, 30, 31, 25, 18, 15, 18, 20, 22, 22, 20, 15, 10, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 75, 75, 75, 66, 66, 75, 75, 75, 75, 83, 83, 75, 75, 66, 58, 58, 50, 50, 50, 58, 58, 66, 66, 75),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 13, 78, 100, 52, 57, 73, 78, 73, 63, 50, 42, 42, 44, 47, 42, 34, 23, 13, 5),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 0, 22, 31, 42, 50, 56, 57, 54, 46, 39, 40, 52, 48, 23, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 57, 29, 10, 6, 16, 37, 65, 87, 87, 65, 37),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 23, 29, 33, 34, 31, 29, 31, 43, 58, 0, 0),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 17, 40, 36, 17, 10, 10, 10, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 60, 75, 67, 40, 13, 0, 0, 0, 1, 6, 18, 35, 46, 40, 25, 15, 16, 26, 36, 39, 32, 21, 10, 3),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 67, 45, 26, 11, 1, 1, 1, 0, 6, 19, 39, 56, 59, 48, 34, 31, 44, 65, 79, 77, 58, 34, 15, 4),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 0, 5, 10, 23, 38, 48, 48, 35, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 6, 9, 11, 10, 8, 6, 4, 4, 5, 5, 5, 4, 2, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 0, 1, 12, 32, 62, 83, 78, 52, 30, 29, 48, 71, 79, 65, 38, 12, 2),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 78, 56, 33, 16, 0, 0, 0, 0, 0, 0, 0, 0, 10, 18, 29, 42, 51, 54, 55, 62, 75, 88, 90, 77),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 29, 41, 53, 62, 67, 67, 60, 50, 41, 36, 32, 34, 39, 44, 48, 50, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 24, 16, 11, 6, 4, 4, 5, 6, 11, 29, 62, 96, 100, 71, 39, 27, 35, 55, 76, 85, 78, 59, 37, 20),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 91, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 13, 19, 25, 27, 16),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 51, 57, 0, 0, 0, 0, 0, 33, 21, 8, 1, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 18, 27, 32, 35, 35, 35, 35, 32, 29, 27, 24, 18),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 15, 23, 22, 22, 25, 14, 0, 0, 0, 0, 0, 0),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 31, 10, 15, 31, 52, 63, 68, 57, 42, 21),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 62, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 18, 30, 35, 28),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 1, 1, 3, 9, 20, 39, 67, 86, 82, 58, 35, 27, 29, 31, 27, 17, 7, 1, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 11, 17, 24, 28, 28, 25, 22, 25, 44, 74, 100, 95, 66, 38, 27, 24),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 26, 31, 38, 52, 69, 80, 78, 64, 46, 32, 30, 39, 51, 55, 45, 27, 12, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 1, 6, 25, 52, 62, 41, 16, 5, 10, 34, 73, 100, 89, 58, 32, 18),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 40, 69, 79, 83, 85, 91, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 0, 2, 2, 17, 39, 55, 63, 53, 25, 5, 7, 26, 47, 58, 50, 30, 8, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 1, 7, 24, 47, 73, 93, 100, 90, 70, 55, 56, 61, 50, 24, 3, 1, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 0, 14, 22, 33, 45, 55, 59, 57, 49, 41, 37, 42, 53, 56, 46, 27, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 66, 34, 10, 1, 1, 0, 0, 1, 1, 3, 23, 51, 70, 64, 44, 32, 37, 55, 74, 85, 83, 70, 51, 32),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 8, 10, 17, 32, 56, 80, 86, 71, 45, 26, 17, 21, 39, 58, 60, 43, 23, 13, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 55, 61, 56, 43, 29, 33, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 12, 4, 0, 0, 0, 0, 0, 1, 6, 20, 48, 81, 100, 89, 58, 33, 29, 45, 70, 90, 89, 68, 42, 26),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 44, 0, 0, 0, 0, 0, 0, 6, 6, 14, 44, 78, 76, 40, 17, 14, 21, 31, 46, 59, 65, 63, 55, 40),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 7, 8, 12, 21, 38, 57, 64, 54, 34, 17, 8, 10, 18, 28, 32, 28, 18, 8, 2),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 28, 42, 57, 42, 42, 42, 71, 71, 71, 57, 57, 57, 42),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 57, 66, 53, 34, 23, 20, 20, 20, 17, 13, 8, 5),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 30, 19, 11, 34, 65, 80, 57, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 15, 39, 51, 41, 22, 10, 15, 29, 44, 49, 41, 24, 7, 1),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 40, 50, 52, 45, 35, 29, 29, 35, 42, 44, 40, 0, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 27, 38, 38, 29, 18, 14, 14, 18, 20, 19, 14),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 58, 72, 62, 0, 0, 0, 0, 6, 8, 14, 29, 48, 55, 40, 21, 10, 9, 17, 37, 61, 61, 37, 17, 8),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 57, 42, 28, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJpS5vquBJXhMR8oU040lFFoU', 62, 33, 14, 4, 3, 0, 0, 0, 0, 0, 19, 42, 69, 83, 77, 58, 43, 39, 43, 49, 51, 50, 44, 36),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 100, 94, 66, 0, 0, 0, 0, 0, 0, 8, 12, 16, 21, 25, 27, 28, 29, 31, 37, 46, 55, 59, 54, 42),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 9, 16, 24, 34, 42, 48, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 21, 29, 31, 27, 24, 28, 43, 61, 71, 66, 47),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 26, 28, 18, 11, 10, 9, 5, 1, 0, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 72, 66, 61, 61, 66, 72, 83, 83, 83, 83, 72, 61, 55, 55, 66, 66, 50, 44, 50, 66, 83, 88, 83, 72),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 8, 11, 11, 9, 6, 4, 4, 5, 6, 6, 4, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 17, 20, 22, 24, 28, 37, 44, 48, 44, 35, 31, 35, 44, 46, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 100, 95, 75, 44, 15, 20, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 11, 18, 22),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 0, 5, 11, 21, 34, 46, 52, 51, 45, 39, 38, 40, 45, 49, 51, 50, 46, 39, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 1, 1, 3, 4, 12, 21, 25, 20, 15, 14, 17, 18, 18, 15, 12, 7, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 71, 60, 48, 35, 25, 25, 25, 25, 24, 24, 25, 29, 50, 62, 41, 37, 45, 59, 75, 90, 96, 93, 83, 67),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 18, 0, 0, 0, 0, 0, 15, 22, 32, 47, 58, 62, 57, 47, 38, 34, 34, 35, 38, 38, 37, 32, 28, 22),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 22, 35, 53, 72, 87, 90, 82, 67, 53, 45, 50, 64, 77, 82, 74, 58, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 23, 27, 37, 53, 72, 88, 100, 100, 90, 81, 74, 76, 79, 72, 55, 39, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 11, 22, 40, 66, 92, 100, 85, 59, 37, 22, 16, 18, 35, 59, 61, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 22, 18, 9, 4, 0, 0, 0, 0, 0, 0, 13, 22, 27, 31, 31, 27, 22, 18, 18, 22, 31, 36, 27, 13),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 47, 39, 34, 26, 21, 26, 26, 30, 30, 30, 26, 21, 0, 0, 0, 0, 0, 0, 4, 34, 8, 8, 47, 65),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 16, 0, 0, 0, 0, 0, 3, 6, 10, 13, 23, 49, 54, 27, 11, 11, 20, 28, 37, 44, 44, 40, 33, 25),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 30, 20, 20, 10, 0, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 65, 48, 31, 18, 0, 0, 0, 0, 0, 0, 0, 0, 31, 37, 41, 42, 40, 37, 33, 38, 58, 62, 46, 50),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 2, 1, 1, 1, 1, 1, 1, 1, 1, 0, 4, 9, 11, 9, 2, 1, 1, 0, 11, 22, 29, 28, 18, 4),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 0, 0, 0, 0, 0, 0, 0, 33, 27, 24, 23, 24, 26, 29, 31, 35, 38, 41, 45, 51, 58, 64, 72, 78),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 64, 30, 0, 0, 0, 0, 0, 1, 8, 36, 66, 84, 83, 71, 63, 69, 78, 75, 64, 57, 57, 56, 48, 32),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 56, 0, 0, 0, 0, 0, 0, 0, 10, 25, 50, 80, 100, 100, 81, 56, 40, 38, 45, 55, 61, 58, 47, 34),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 8, 33, 60, 81, 90, 82, 60, 33, 13, 12, 32, 60, 76, 65, 33, 2, 2),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 47, 68, 73, 47, 10, 10, 10, 10, 10, 21, 31, 26, 15, 5, 5, 5, 10, 0, 10, 15, 15, 15, 15, 15),
('ChIJWUxdrelJXhMRfiIBLlftogk', 93, 73, 48, 27, 0, 0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 16, 30, 42),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 2, 7, 14, 25, 37, 43, 42, 34, 23, 15, 12, 13, 15, 18, 18, 18, 15, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 0, 0, 20, 31, 44, 55, 60, 58, 49, 43, 45, 59, 82, 98, 100, 83, 56, 32),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 21, 46, 74, 87, 72, 90, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 1, 22, 62, 100, 95, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 17, 11, 6, 0, 0, 0, 0, 4, 8, 20, 37, 55, 62, 48, 28, 15, 13, 24, 42, 60, 66, 57, 37, 0),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 30, 36, 39, 37, 25),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 47, 30, 0, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 28, 45, 60, 57, 100, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 0, 0, 26, 34, 41, 46, 48, 47, 43, 38, 38, 44, 54, 62, 63, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 16, 31, 42, 46, 45, 46, 53, 62, 68, 63, 49, 30, 12, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 22, 33, 33),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 0, 15, 15, 21, 21, 21, 26, 26, 26, 26, 26, 21, 26, 26, 36, 42, 42, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 6, 37, 50, 12, 0, 3, 6, 12, 21, 37, 50, 56, 53, 43, 31, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 31, 16, 4, 1, 0, 0, 0, 1, 1, 8, 37, 81, 100, 83, 72, 77, 85, 89, 86, 77, 65, 50, 35, 22),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 16, 30, 44, 48, 42, 33, 26, 24, 23, 21, 18, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_supermarket`
--

CREATE TABLE `pois_supermarket` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_supermarket`
--

INSERT INTO `pois_supermarket` (`POIs_ID`) VALUES
('ChIJ8yJ6relJXhMRo2XqEv0keZU'),
('ChIJa4Go5yc2XhMR-30hKzhbx_c'),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc'),
('ChIJKT-X7SA2XhMR2dSVr5pougg'),
('ChIJs26l3KI3XhMR7NBzdimtWlc'),
('ChIJu3rojN5JXhMRF2jtmwJYy04'),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY'),
('ChIJVzAMZC82XhMRbhndkrdgnck'),
('ChIJwdFpF-JJXhMRFRwIQP7phY8'),
('ChIJYQIxGyE2XhMRupS59ERDUNc');

-- --------------------------------------------------------

--
-- Table structure for table `pois_thursday`
--

CREATE TABLE `pois_thursday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_thursday`
--

INSERT INTO `pois_thursday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 51, 61, 61, 48, 32, 0, 0, 38, 64, 74, 51, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 30, 36, 34, 23, 13, 7, 11, 19, 32, 44, 50, 46, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 29, 49, 66, 72, 67, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 29, 38, 27, 27, 0, 0, 0, 65, 93, 81, 43, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 43, 56, 65, 71, 71, 65, 53, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 72, 71, 70, 69, 64, 67, 70, 74, 79, 82, 86, 88, 91, 92, 92, 91, 90, 87, 83, 80, 75, 71, 67, 65),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 56, 73, 52, 56, 56, 30, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 25, 33, 37, 37, 33, 37, 50, 66, 58, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 31, 63, 87, 80, 65, 55, 51, 44, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 1, 8, 28, 57, 80, 94, 82, 41, 10, 0, 0, 28, 48, 48, 28, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 26, 29, 19, 0, 0, 0, 0, 14, 34, 57, 61, 43, 19, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 24, 42, 64, 84, 97, 98, 87, 67, 46, 30, 27, 38, 58, 71, 66, 44, 22, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 17, 30, 42, 53, 61, 69, 74, 73, 63, 50, 42, 46, 55, 60, 52, 34, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 9, 16, 25, 31, 33, 30, 26, 0, 0, 50, 68, 70, 51, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 37, 48, 44, 34, 24, 24, 41, 65, 79, 65, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 68, 84, 80, 60, 42, 42, 61, 80, 76, 48, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 37, 93, 87, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 45, 56, 54, 54, 61, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 55, 66, 51, 44, 55, 55, 40, 18, 14, 37, 81, 92, 55, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 31, 37, 25, 0, 0, 8, 15, 27, 38, 43, 38, 28, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 20, 36, 44, 40, 0, 0, 0, 0, 14, 26, 24, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 18, 32, 47, 57, 61, 65, 76, 82, 73, 52, 34, 29, 37, 50, 60, 64, 60, 48, 34),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 28, 25, 20, 18, 21, 35, 57, 75, 77, 57),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 16, 31, 49, 65, 71, 66, 53, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 70, 100, 80, 50, 40, 50, 55, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 17, 31, 21, 27, 28, 24, 18, 16, 20, 30, 37, 39, 33, 21, 11, 4),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 68, 31, 63, 78, 47, 21, 21, 47, 73, 68, 42, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 27, 37, 50, 61, 70, 76, 76, 70, 62, 52, 45, 45, 52, 63, 66, 59, 43, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 15, 15, 23, 23, 46, 30, 15, 7, 0, 7, 7, 15, 23, 30, 23, 15, 15, 30, 61, 76, 69, 69, 76, 84),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 67, 81, 76, 62, 58, 62, 67, 62, 46, 27, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 9, 0, 0, 0, 0, 3, 3, 9, 12, 18, 21, 21, 21, 0, 0, 46, 68, 75, 62, 46, 43, 46, 0, 0),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 28, 49, 69, 77, 71, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 48, 73, 84, 75, 51, 29, 26, 51, 85, 88, 53, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 6, 2, 0, 0, 0, 0, 0, 19, 25, 33, 42, 51, 59, 61, 51, 37, 29, 36, 59, 87, 98, 83, 51, 24),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 14, 34, 58, 74, 74, 55, 32, 0, 0, 14, 44, 62, 41, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 42, 65, 73, 50, 0, 0, 0, 30, 46, 50, 38, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 71, 94, 94, 76, 48, 28, 23, 41, 74, 97, 94, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 70, 58, 70, 86, 76, 67, 70, 53, 23, 4, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 36, 53, 50, 0, 0, 0, 30, 47, 52, 38, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 38, 58, 79, 88, 82, 67, 47, 38, 41, 50, 52, 44, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 14, 17, 18, 18, 16, 15, 17, 22, 33, 46, 57, 61, 55),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 13, 44, 70, 63, 46, 48, 39, 19, 10, 11, 16, 18, 18, 17, 12, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 61, 61, 49, 44, 54, 69, 73, 62, 40, 20, 6),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 11, 12, 10, 0, 0, 0, 17, 25, 33, 32, 20, 7, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 17, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 32, 64, 92, 100, 85, 64, 50, 42, 35, 28, 25, 21),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 35, 62, 78, 71, 47, 30, 38, 71, 100, 91, 53, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 19, 43, 71, 86, 79, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 71, 89, 83, 78, 77, 65, 0, 0, 0, 40, 54, 55, 41, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 17, 32, 50, 67, 73, 70, 55, 38, 26, 29, 41, 50, 35, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 1, 1, 1, 1, 1, 1, 1, 0, 5, 9, 13, 14, 12, 8, 4, 3, 5, 9, 14, 17, 17, 13, 7, 0),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 4, 13, 25, 36, 44, 48, 48, 47, 46, 46, 47, 46, 42, 35, 26, 17),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 40, 71, 87, 92, 92, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 58, 75, 82, 79, 62, 0, 0, 48, 65, 48, 31, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 11, 21, 33, 43, 50, 54, 53, 49, 43, 40, 43, 45, 38, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 34, 55, 67, 69, 67, 60, 51, 34, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 26, 39, 34, 21, 12, 19, 43, 60, 48, 21, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 16, 24, 36, 51, 65, 70, 62, 44, 29, 32, 51, 55, 30, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 34, 46, 48, 39, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 33, 31, 19),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 2, 9, 39, 85, 100, 78, 78, 80, 43, 0, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 47, 58, 58, 47, 35, 0, 0, 35, 35, 35, 35, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 19, 36, 53, 63, 60, 46, 27, 13, 0, 0, 15, 43, 54, 29, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 14, 31, 22, 26, 42, 50, 42, 24, 10, 8, 19, 33, 31, 17, 5, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 36, 47, 57, 52, 31, 15, 10, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 71, 36, 36, 39, 39, 28, 18, 10, 5, 2, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 11, 19, 28, 40, 50, 59, 61, 59, 51, 48, 55, 76, 100, 98, 67, 32, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 46, 31, 16, 6, 3, 5, 15, 26, 33, 30, 30, 35, 11, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 31, 27, 22, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 29, 36),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 10, 73, 42, 26, 73, 63, 21, 10, 0, 21, 26, 26, 15, 10, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 51, 28, 0, 0, 0, 0, 0, 0, 0, 0, 44, 60, 66, 63, 58, 56, 59, 59, 58, 52, 50, 47, 44, 39),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 85, 73, 63, 37, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 33, 50, 62),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 28, 34, 35, 31, 24, 0, 0, 0, 35, 40, 32, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 63, 79, 82, 73, 60, 53, 55, 60, 60, 50, 33, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 30, 56, 82, 92, 76, 51, 28, 17, 12, 12, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 87, 100, 96, 81, 60, 45, 36, 30, 27, 24, 21, 18),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 34, 39, 40, 38, 32, 30, 38, 57, 80, 85, 68),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 63, 90, 72, 36, 36, 36, 36, 36, 36, 36, 54, 72, 72, 54, 36, 18, 27, 36, 54, 63, 54, 36, 18, 9),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 40, 40, 36, 0, 0, 0, 0, 0, 0, 16, 32, 44, 40, 32, 20, 20, 24, 32, 40, 44, 48, 52, 48, 44),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 35, 25, 19, 19, 19, 25, 32, 35, 35, 35, 35, 35, 38, 45, 51, 54, 54, 54, 48, 41, 32, 22, 16, 9),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 40, 33, 18, 0, 0, 0, 44, 55, 51, 40, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 24, 43, 50, 50, 50, 38, 0, 0, 0, 20, 43, 46, 25, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 54, 62, 59, 45, 29, 0, 0, 5, 24, 45, 45, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 24, 19, 15, 10, 0, 0, 0, 0, 7, 8, 15, 34, 57, 70, 61, 47, 48, 53, 43, 29, 23, 23, 23, 23),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 21, 12, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 45, 61, 63),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 13, 40, 63, 59, 59, 68, 68, 45, 22, 27, 40, 59, 68, 59, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 29, 40, 51, 55, 53, 44, 34, 23, 23, 25, 23, 19, 19, 27, 36, 44, 48),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 26, 20, 0, 0, 0, 0, 0, 0, 6, 6, 13, 26, 33, 26, 13, 6, 0, 13, 33, 53, 60, 40, 20, 6),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 35, 52, 73, 85, 85, 76, 61, 0, 0, 64, 76, 73, 55, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 29, 21, 12, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 19, 32, 37),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 22, 36, 50, 45, 27, 18, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 67, 55, 60, 70, 67, 0, 0, 70, 97, 92, 52, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 3, 13, 34, 55, 65, 51, 34, 27, 41, 62, 72, 65, 55, 44, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 11, 23, 35, 47, 52, 58, 52, 47, 47, 52, 52, 52, 47, 35, 23, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 42, 67, 85, 90, 81, 63, 50, 49, 57, 65, 64, 53, 37, 21, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 17, 25, 36, 48, 58, 66, 72, 72, 67, 62, 61, 75, 96, 100, 74, 37, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 20, 32, 40, 36, 32, 32, 32, 28, 20, 12, 4, 4, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 22, 41, 62, 77, 83, 76, 59, 38, 20, 17, 36, 39, 10, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 87, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 4, 11, 18, 24, 27, 29, 31, 34, 39, 43, 43, 37, 26),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 25, 40, 71, 100, 90, 50, 0, 0, 0, 9, 18, 18, 12, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 16, 35, 51, 51, 36, 26, 31, 30, 0, 0, 22, 26, 24, 15, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 32, 40, 40, 32, 21, 0, 0, 0, 13, 13, 8, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 47, 71, 83, 78, 60, 41, 36, 45, 62, 72, 68, 50, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 4, 26, 16, 8, 12, 14, 18, 18, 18, 16, 14, 18, 36, 66, 74, 46),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 34, 43, 71, 100, 90, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 31, 47, 58, 65, 72, 80, 87, 90, 92, 88, 74, 51, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 4, 78, 8, 17, 30, 52, 73, 82, 82, 69, 52, 34, 47, 56, 17, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 22, 32, 33, 27, 20, 23, 39, 59, 67, 59, 38, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 8, 14, 21, 30, 44, 62, 69, 66, 62, 62, 61, 55, 45, 33, 22, 14, 8),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 45, 80, 70, 61, 73, 80, 77, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 51, 48, 57, 48, 14, 0, 0, 17, 37, 51, 42, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 60, 71, 64, 46, 33, 35, 53, 73, 82, 73, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 68, 67, 68, 75, 79, 69, 46, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 25, 47, 67, 74, 70, 71, 66, 46, 32, 30, 32, 30, 29, 25, 21, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 4, 26, 63, 60, 28, 26, 37, 33, 25, 25, 31, 37, 42, 42, 39, 34, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 3, 11, 25, 37, 40, 33, 18, 7, 3, 7, 29, 66, 77, 40, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 83, 83, 75, 75, 75, 75, 75, 75, 75, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 38, 53, 71, 89, 97, 93, 81, 69, 61, 55, 48, 38, 28, 16, 8, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 41, 58, 41, 0, 0, 0, 33, 62, 58, 29, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 26, 44, 52, 52, 60, 73, 78, 71, 57, 52, 52, 57, 60, 57, 52, 44, 34, 23, 15),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 40, 72, 86, 72, 45, 36, 54, 81, 95, 77, 45, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 43, 57, 49, 43, 63, 84, 66, 30, 14, 19, 36, 48, 46, 32, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 47, 65, 70, 56, 43, 45, 54, 56, 61, 68, 47, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 72, 72, 52, 30, 16, 13, 19, 27, 33, 36, 30, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 37, 27, 15, 8, 12, 31, 65, 97, 100, 70, 34),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 46, 46, 61, 61, 46, 30, 30, 38, 30, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 58, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 23, 23, 22, 24, 26, 26, 25, 36, 61, 79, 69),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 4, 4, 4, 0, 0, 0, 0, 0, 0, 20, 30, 39, 46, 44, 34, 0, 0, 0, 25, 32, 32, 0, 0, 0),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 25, 39, 46, 44, 30, 16, 9, 16, 34, 51, 46, 25, 0, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 62, 69, 59, 39, 24, 26, 44, 60, 55, 33, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 29, 42, 41, 27, 14, 9, 12, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 13, 30, 53, 73, 76, 66, 43, 23, 0, 0, 40, 56, 33, 46, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 12, 18, 25, 31, 50, 62, 68, 62, 50, 31, 18, 6, 25, 25, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 41, 51, 51, 41, 24, 10, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 36, 42, 42, 36, 30, 31, 41, 58, 71, 72, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 8, 3, 1, 0, 1, 0, 0, 7, 14, 25, 40, 54, 60, 54, 40, 30, 30, 43, 63, 74, 68, 48, 26, 11),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 1, 1, 1, 1, 1, 1, 1, 3, 8, 14, 20, 24, 25, 22, 17, 13, 17, 33, 53, 63, 53, 29, 9, 1),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 17, 53, 89, 66, 35, 38, 48, 48, 41, 33, 28, 28, 28, 25, 23, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 7, 8, 9, 7, 6, 4, 4, 5, 7, 9, 9, 7, 4, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 13, 37, 56, 60, 50, 48, 62, 72, 59, 39, 46, 76, 100, 87, 49, 13, 2),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 65, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 22, 33, 39, 37, 32, 34, 51, 79, 100, 97, 73),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 20, 33, 45, 54, 56, 52, 42, 32, 26, 36, 60, 71, 49, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 71, 78, 57, 42, 28, 35, 57, 64, 57, 42, 28, 14, 14),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 34, 34, 25, 15, 0, 0, 0, 3, 37, 100, 34, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 68, 96, 92, 59, 0, 0, 0, 18, 70, 98, 50, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 36, 80, 100, 66, 33, 21, 17, 13, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 15, 24, 37, 53, 68, 81, 86, 84, 75, 65, 56, 63, 84, 100, 93, 67, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 3, 11, 38, 69, 84, 61, 30, 0, 0, 38, 50, 53, 50, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 22, 12, 6, 2, 1, 3, 7, 13, 21, 29, 41, 57, 65, 55, 37, 26, 28, 39, 53, 64, 67, 61, 49, 35),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 13, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 36, 58, 75, 80, 69, 50),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 62, 84, 94, 88, 70, 52, 50, 70, 97, 100, 70, 32, 8, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 2, 2, 21, 10, 2, 2, 2, 2, 2, 29, 37, 37, 51, 70, 75, 67, 48, 35, 27, 27, 29, 32, 32, 29),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 26, 40, 52, 59, 58, 54, 53, 65, 83, 84, 59, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 58, 75, 83, 66, 41, 25, 50, 0, 0, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 8, 23, 52, 78, 82, 60, 32, 13, 6, 0, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 1, 3, 9, 17, 25, 30, 30, 26, 21, 22, 34, 56, 73, 68, 46, 20, 4),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 63, 57, 52, 47, 26, 21, 26, 31, 31, 31, 26),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 37, 87, 100, 62, 18, 6, 12, 43, 75, 50, 12, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 31, 48, 61, 64, 59, 61, 68, 59, 31, 0, 0, 0, 0, 0),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 28, 68, 71, 57, 74, 100, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 11, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 13, 27, 43, 41),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 18, 12, 62, 56, 6, 0, 0, 12, 25, 31, 31, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 79, 84, 65, 38, 0, 0, 50, 86, 94, 65, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 72, 34, 53, 80, 89, 68, 36, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 54, 70, 62, 44, 38, 44, 46, 46, 54, 56, 34, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 43, 36, 24, 21, 29, 34, 36, 34, 29, 24, 21, 36, 78, 95, 56, 17, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 22, 54, 40, 9, 0, 0, 22, 63, 59, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 0, 1, 12, 30, 47, 59, 76, 96, 100, 79, 47, 26, 24, 32, 38, 36, 26, 13, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 27, 47, 63, 66, 55, 36, 21, 15, 22, 37, 55, 68, 67, 53, 34, 18),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 48, 39, 41, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 24, 34, 44, 54, 61, 63, 61, 56, 50, 46, 48, 57, 66, 70, 62, 46, 28, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 9, 14, 17, 21, 20, 13, 6, 3, 4, 10, 20, 33, 42, 43, 35, 22),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 13, 26, 44, 55, 54, 40, 24, 14, 16, 26, 40, 45, 36, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 20, 18, 89, 83, 100, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 2, 2, 10, 29, 52, 72, 81, 78, 67, 52, 40, 41, 61, 84, 86, 54, 17, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 42, 50, 57, 50, 28, 14, 7, 0, 14, 21, 21, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 20, 43, 67, 85, 95, 96, 89, 71, 48, 34, 41, 60, 70, 56, 29, 5, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 38, 52, 56, 51, 36, 21, 23, 46, 63, 52, 25, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 21, 35, 54, 74, 90, 99, 98, 88, 77, 72, 75, 87, 98, 100, 87, 65, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 76, 72, 72, 49, 38, 53, 67, 60, 36, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 53, 57, 48, 33, 30, 48, 22, 21, 19, 18, 15, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 94, 100, 73, 38, 30, 59, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 12, 16, 12, 0, 0, 0, 29, 54, 29, 29, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 15, 30, 53, 69, 76, 53, 0, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 16, 23, 26, 21, 16, 0, 0, 0, 0, 50, 52, 47, 31, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 24, 7, 1, 1, 1, 0, 0, 0, 7, 19, 32, 43, 46, 41, 31, 21, 17, 23, 38, 53, 63, 66, 60, 44),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 20, 51, 74, 71, 61, 51, 35, 18, 6, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 84, 71, 75, 71, 44, 0, 0, 0, 34, 34, 21, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 39, 69, 83, 62, 30, 0, 0, 39, 71, 86, 67, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 29, 45, 58, 54, 45, 0, 0, 0, 41, 79, 87, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 27, 47, 67, 88, 100, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 13, 21, 30, 41, 50, 56, 56, 54, 45, 36, 28, 23, 23, 28, 34, 36, 30, 19, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 73, 65, 69, 91, 60, 0, 0, 26, 30, 34, 34, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 40, 33, 18, 0, 0, 0, 44, 55, 51, 40, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 32, 45, 55, 70, 91, 99, 80, 50, 32, 28, 28, 28, 26, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 100, 70, 60, 58, 52, 41, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 65, 55, 47, 55, 63, 65, 57, 44, 31, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 16, 7, 0, 0, 0, 0, 1, 3, 9, 18, 30, 43, 51, 51, 44, 32, 25, 25, 32, 45, 54, 54, 45, 30),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 77, 78, 58, 0, 0, 0, 55, 89, 93, 62, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 1, 8, 28, 57, 80, 94, 82, 41, 10, 0, 0, 28, 48, 48, 28, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 39, 61, 76, 80, 70, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 42, 0, 0, 0, 0, 0, 0, 4, 12, 29, 53, 72, 72, 55, 34, 17, 10, 14, 31, 57, 82, 95, 87, 61),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 42, 35, 35, 42, 50, 42, 35, 28, 28, 28, 35, 35, 28, 28, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 4, 8, 25, 65, 100, 94, 74, 64, 54, 40, 31, 25, 24, 22, 21, 18, 17, 14, 11),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 48, 60, 58, 47, 28, 12, 8, 24, 60, 84, 65, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 28, 57, 57, 42, 0, 0, 0, 35, 57, 50, 28, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 48, 48, 51, 65, 82, 93, 82, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 64, 70, 57, 0, 0, 0, 57, 79, 79, 55, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 57, 53, 55, 72, 76, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 10, 24, 45, 72, 94, 100, 86, 62, 0, 0, 35, 62, 48, 24, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 32, 93, 51, 34, 48, 62, 65, 58, 51, 46, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 65, 73, 68, 55, 43, 40, 46, 49, 42, 28, 13, 5),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 35, 71, 33, 20, 43, 56, 41, 0, 0, 35, 64, 64, 33, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 14, 36, 63, 80, 76, 57, 38, 29, 27, 27, 29, 27, 25, 23, 19, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 26, 46, 61, 73, 76, 69, 53, 38, 23, 15, 11, 11, 15, 15, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 3, 26, 56, 84, 96, 86, 59, 29, 7, 1, 12, 38, 61, 60, 36, 9, 1),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 50, 71, 75, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 37, 65, 74, 55, 26, 0, 0, 46, 100, 83, 59, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 17, 35, 57, 77, 84, 73, 54, 40, 40, 52, 68, 77, 68, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 17, 48, 75, 70, 56, 73, 58, 0, 0, 14, 36, 46, 31, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 58, 71, 77, 75, 67, 57, 51, 50, 54, 64, 76, 88, 93, 86, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 11, 13, 18, 28, 46, 62, 64, 50, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 46, 57, 59, 54, 48, 51, 66, 78, 70, 46, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 15, 25, 51, 50, 33, 31, 42, 50, 50, 41, 27, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 51, 55, 49, 36, 29, 37, 60, 88, 100, 86, 55),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 65, 97, 94, 80, 82, 91, 82, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 15, 9, 4, 0, 0, 0, 0, 9, 14, 20, 26, 30, 31, 28, 24, 17, 13, 16, 29, 52, 75, 84, 88, 96),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 22, 17, 14, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 11, 11, 17, 22, 31, 37, 40, 34, 28, 20),
('ChIJpS5vquBJXhMR8oU040lFFoU', 19, 8, 3, 0, 0, 0, 0, 0, 0, 0, 9, 16, 21, 21, 17, 15, 18, 23, 28, 33, 41, 51, 51, 39),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 35, 24, 13, 0, 0, 0, 0, 0, 0, 10, 19, 24, 22, 18, 16, 16, 18, 19, 22, 28, 39, 52, 59, 55),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 26, 33, 43, 50, 53, 53, 56, 60, 46, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 8, 12, 20, 28, 36, 48, 60, 68, 68, 64, 56, 44, 72, 88, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 16, 23, 21, 29, 38, 40, 32, 20, 9, 7, 12, 21, 23, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 24, 32, 38, 38, 33, 28, 26, 38, 53, 54, 38, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 27, 50, 72, 85, 81, 63, 43, 30, 27, 30, 31, 30, 25, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 51, 62, 70, 74, 77, 77, 66, 48, 33, 18),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 23, 41, 35, 23, 0, 0, 0, 41, 58, 58, 41, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 55, 82, 95, 85, 0, 0, 0, 51, 86, 100, 75, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 19, 40, 61, 70, 59, 40, 21, 12, 21, 40, 65, 78, 72, 48, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 47, 100, 89, 36, 14, 24, 49, 68, 68, 47, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 17, 12, 17, 25, 24, 16, 10, 32, 43, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 15, 33, 53, 66, 68, 68, 72, 77, 80, 79, 76, 71, 64, 57, 49, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 11, 14, 16, 18, 18, 20, 28, 50, 78, 85, 61),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 28, 46, 61, 71, 66, 53, 38, 33, 41, 48, 43, 28, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 21, 42, 57, 0, 0, 0, 68, 73, 63, 42, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 22, 32, 44, 53, 53, 45, 32, 23, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 17, 47, 70, 64, 41, 17, 29, 70, 100, 76, 29, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 37, 54, 54, 37, 28, 34, 54, 65, 65, 51, 34, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 25, 46, 67, 75, 72, 62, 55, 0, 0, 74, 75, 68, 55, 37, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 41, 52, 56, 60, 60, 53, 50, 58, 65, 60, 40, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 72, 66, 66, 61, 77, 77, 77, 72, 72, 72, 66, 66, 61, 55, 44, 38, 38, 44, 50, 61, 61, 55, 44, 44),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 5, 56, 96, 40, 48, 66, 73, 66, 51, 38, 30, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 5, 6, 9, 15, 21, 22, 16, 10, 8, 9, 11, 12, 13, 12, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 40, 68, 78, 63, 36, 22, 36, 73, 100, 87, 47, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 40, 40, 48, 55, 47, 42, 39, 0, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 69, 86, 80, 57, 42, 45, 61, 72, 65, 45, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 26, 36, 40, 40, 36, 36, 40, 44, 48, 50, 56, 66, 68, 54, 32, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 14, 17, 14, 10, 0, 0, 0, 39, 46, 57, 64, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 14, 62, 60, 42, 51, 54, 45, 31, 20, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 28, 33, 40, 44, 46, 46, 46, 44, 40, 35, 37, 60, 97, 100, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 21, 36, 52, 63, 66, 61, 48, 32, 19, 17, 39, 63, 46, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 42, 49, 43, 17, 10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 20, 33, 42),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 44, 72, 89, 93, 82, 62, 44, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 9, 17, 29, 42, 56, 65, 67, 63, 52, 40, 31, 29, 34, 45, 56, 60, 55, 42, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 46, 80, 80, 65, 0, 0, 0, 21, 65, 75, 31, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 39, 56, 65, 73, 78, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 0, 0, 28, 48, 67, 73, 65, 48, 35, 32, 37, 46, 53, 53, 48, 39, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 29, 47, 62, 69, 64, 49, 32, 0, 0, 34, 54, 61, 44, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 19, 14, 12, 11, 2, 1, 2, 4, 12, 22, 33, 41, 55, 82, 91, 67, 56, 67, 83, 92, 93, 85, 69, 51),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 27, 0, 0, 0, 0, 0, 24, 30, 37, 45, 60, 74, 80, 72, 55, 41, 37, 38, 42, 47, 47, 45, 40, 32),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 17, 35, 52, 62, 57, 45, 25, 0, 0, 0, 32, 75, 72, 30, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 17, 42, 67, 75, 57, 28, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 14, 20, 27, 32, 32, 29, 22, 17, 22, 54, 48, 37, 64, 95, 100, 74, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 30, 32, 34, 39, 48, 74, 100, 88, 60, 53, 58, 65, 65, 60, 48, 34, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 54, 95, 63, 77, 100, 90, 0, 0, 0, 27, 36, 40, 31, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 16, 40, 71, 88, 77, 58, 66, 72, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 71, 78, 78, 57, 0, 0, 78, 100, 78, 35, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 14, 27, 46, 61, 70, 68, 55, 38, 22, 12, 11, 16, 27, 37, 35, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 72, 77, 68, 40, 18, 9, 13, 18, 27, 36, 40, 36, 27),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 56, 68, 62, 56, 62, 0, 0, 0, 12, 18, 12, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 16, 38, 63, 80, 81, 66, 42, 21, 12, 30, 66, 76, 43, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 19, 50, 81, 91, 86, 84, 71, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 14, 32, 47, 42, 25, 9, 4, 14, 34, 39, 26, 23, 27, 21, 9, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 43, 34, 26, 17, 17, 26, 34, 39, 47, 47, 47, 47, 0, 0, 0, 0, 0, 13, 39, 86, 100, 56, 17, 4),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 13, 0, 0, 0, 0, 0, 16, 27, 37, 47, 50, 47, 40, 32, 27, 28, 35, 45, 55, 59, 55, 45, 30, 18),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 23, 52, 76, 75, 52, 36, 44, 55, 50, 30, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 61, 61, 63, 67, 36, 0, 0, 0, 48, 65, 63, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 20, 20, 20, 20, 20, 20, 20, 20, 30, 30, 20, 20, 10, 0),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 18, 33, 48, 54, 48, 36, 21, 15, 12, 12, 12, 24, 30, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 50, 35, 0, 0, 0, 42, 71, 78, 64, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 27, 43, 62, 76, 84, 81, 70, 56, 47, 48, 57, 60, 51, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 63, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 30, 26, 27, 34, 42, 48, 54, 62, 67, 65, 52),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 64, 82, 78, 57, 0, 0, 0, 0, 100, 84, 42, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 5, 50, 44, 33, 50, 61, 66, 61, 44, 27, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 2, 1, 1, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 1, 1, 1, 1, 1, 1, 1, 11, 31, 55, 80, 97, 100, 86, 63, 41, 30, 36, 55, 76, 87, 82, 60, 29),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 92, 100, 94, 82, 70, 60, 49, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 32, 44, 4, 4, 16, 48, 64, 40, 12, 0, 4, 4, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 62, 85, 98, 93, 72, 49, 40, 56, 84, 87, 56, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 65, 75, 62, 38, 0, 0, 60, 88, 90, 64, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 63, 82, 94, 71, 37, 0, 0, 33, 30, 28, 30, 39, 54, 67, 68, 58, 44, 37, 43, 57, 76, 91, 100, 97),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 67, 72, 68, 61, 53, 49, 47, 44, 38, 28, 18, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 37, 50, 50, 37, 20, 0, 22, 62, 100, 83, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 63, 81, 72, 45, 0, 0, 0, 78, 36, 57, 51, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 57, 52, 36, 0, 0, 0, 0, 21, 42, 52, 47, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 11, 1, 0, 0, 0, 0, 0, 1, 9, 25, 34, 36, 36, 39, 43, 44, 42, 40, 44, 58, 79, 92, 85, 58),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 21, 0, 0, 0, 0, 0, 0, 0, 8, 19, 34, 50, 59, 56, 43, 29, 24, 23, 23, 28, 37, 43, 42, 34),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 26, 53, 73, 71, 55, 45, 52, 67, 74, 64, 44, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 11, 22, 40, 51, 51, 40, 33, 37, 59, 77, 62, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 79, 82, 70, 59, 61, 69, 68, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 16, 46, 78, 78, 64, 66, 75, 83, 84, 80, 69, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 16, 28, 38, 50, 56, 60, 60, 56, 48, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 2, 10, 34, 57, 68, 60, 40, 15, 2, 2, 6, 33, 66, 83, 73, 42, 11),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 22, 32, 42, 52, 58, 61, 58, 52, 45, 45, 54, 62, 53, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 73, 100, 100, 63, 21, 10, 0, 0, 15, 26, 47, 57, 57, 42, 31, 31, 36, 47, 57, 63, 63, 57, 47, 36),
('ChIJWUxdrelJXhMRfiIBLlftogk', 44, 32, 20, 12, 0, 0, 0, 0, 0, 0, 21, 24, 25, 26, 26, 25, 23, 21, 19, 20, 30, 50, 69, 68),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 33, 51, 62, 66, 55, 37, 48, 55, 14, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 72, 59, 59, 54, 0, 0, 0, 22, 40, 31, 9, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 5, 13, 23, 35, 40, 35, 26, 19, 0, 0, 14, 14, 14, 13, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 86, 81, 69, 68, 71, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 1, 9, 35, 66, 65, 45, 37, 35, 30, 22, 17, 17, 20, 22, 22, 21, 17, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 40, 46, 50, 55, 57, 51, 51, 85, 0, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 15, 24, 34, 44, 54, 60, 64, 63, 60, 59, 62, 69, 81, 91, 91, 81, 62, 41),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 11, 27, 55, 77, 72, 44, 0, 0, 0, 66, 100, 66, 16, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 33, 79, 100, 61, 84, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 38, 42, 39, 30, 24, 29, 49, 68, 65, 41, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 0, 10, 33, 56, 55, 33, 11, 0, 0, 0, 0, 26, 24, 4, 4, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 21, 41, 65, 82, 82, 69, 51, 41, 40, 45, 48, 43, 32, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 0, 0, 0, 0, 0, 0, 0, 20, 55, 88, 80, 62, 73, 88, 66, 31, 15, 22, 42, 66, 88, 95, 86, 0),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 5, 18, 43, 67, 68, 48, 0, 0, 0, 15, 58, 82, 46, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 16, 31, 49, 65, 71, 66, 53, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 36, 47, 42, 27, 17, 20, 35, 48, 50, 38, 22, 8, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 14, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 31, 47, 53, 44, 28),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 30, 50, 80, 90, 100, 90, 70, 50, 30, 0, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 21, 35, 51, 65, 72, 69, 58, 43, 0, 0, 46, 67, 80, 73, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 44, 61, 70, 64, 50, 50, 61, 76, 76, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 41, 50, 54, 45, 33, 0, 0, 0, 4, 0, 0, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 39, 50, 55, 57, 55, 55, 61, 63, 60, 77, 84, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 4, 5, 9, 8, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 33, 45, 52, 56, 62, 72, 77, 67, 47, 33, 36, 50, 67, 81, 86, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 2, 17, 37, 59, 78, 87, 87, 80, 73, 71, 77, 83, 82, 69, 49, 26, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 44, 22, 11, 22, 22, 11, 11, 11, 22, 33, 44, 44, 55, 44),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 0, 0, 15, 26, 42, 47, 42, 31, 21, 15, 21, 31, 47, 57, 63, 63, 57, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 38, 61, 75, 69, 46, 0, 0, 15, 59, 100, 67, 17, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 12, 12, 9, 9, 12, 21, 50, 62, 46, 34, 31, 9, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 33, 45, 41, 25, 12, 0, 0, 50, 87, 100, 75, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 31, 58, 71, 54, 0, 0, 0, 36, 50, 41, 42, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 22, 22, 16, 5, 0, 0, 0, 22, 50, 72, 66, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 9, 1, 1, 1, 0, 0, 0, 1, 16, 39, 67, 90, 97, 87, 69, 55, 54, 66, 81, 91, 88, 73, 52, 29),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 3, 10, 19, 32, 52, 82, 97, 74, 39, 25, 32, 47, 60, 63, 55, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_tourist_attraction`
--

CREATE TABLE `pois_tourist_attraction` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_tourist_attraction`
--

INSERT INTO `pois_tourist_attraction` (`POIs_ID`) VALUES
('ChIJGyYZay82XhMRYIH_uvIjIH8');

-- --------------------------------------------------------

--
-- Table structure for table `pois_town_square`
--

CREATE TABLE `pois_town_square` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_town_square`
--

INSERT INTO `pois_town_square` (`POIs_ID`) VALUES
('ChIJVQ35PeJJXhMRfqL9-SJiiv0');

-- --------------------------------------------------------

--
-- Table structure for table `pois_travel_agency`
--

CREATE TABLE `pois_travel_agency` (
  `POIs_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_travel_agency`
--

INSERT INTO `pois_travel_agency` (`POIs_ID`) VALUES
('ChIJR4O6Q5VJXhMR4aymPeXvaJA'),
('ChIJVVVVFd1JXhMRDi-W13sWrzg');

-- --------------------------------------------------------

--
-- Table structure for table `pois_tuesday`
--

CREATE TABLE `pois_tuesday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_tuesday`
--

INSERT INTO `pois_tuesday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 32, 64, 77, 64, 35, 0, 0, 51, 96, 100, 54, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 28, 28, 23, 15, 7, 3, 3, 17, 48, 76, 71, 36, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 45, 65, 72, 76, 82, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 13, 25, 47, 47, 0, 0, 0, 13, 68, 100, 43, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 62, 71, 78, 90, 93, 87, 71, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 59, 59, 59, 61, 62, 61, 64, 69, 77, 86, 91, 90, 83, 74, 64, 61, 66, 80, 93, 100, 95, 82, 71, 65),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 39, 39, 100, 69, 26, 17, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 25, 41, 62, 75, 70, 54, 70, 100, 58, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 23, 63, 100, 91, 70, 61, 53, 42, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 0, 0, 30, 62, 73, 78, 92, 75, 33, 0, 0, 26, 50, 55, 35, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 30, 30, 16, 0, 0, 0, 0, 14, 41, 74, 83, 56, 24, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 20, 40, 62, 82, 90, 87, 74, 57, 43, 37, 39, 46, 54, 58, 58, 52, 42, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 7, 19, 34, 57, 79, 95, 100, 90, 71, 49, 34, 38, 55, 71, 66, 44, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 13, 24, 37, 47, 50, 44, 33, 0, 0, 28, 69, 100, 72, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 55, 55, 41, 27, 17, 17, 34, 75, 96, 62, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 70, 73, 57, 42, 34, 38, 52, 62, 58, 42, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 100, 81, 81, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 42, 61, 68, 68, 69, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 55, 92, 96, 70, 59, 62, 51, 29, 22, 48, 81, 74, 37, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 12, 11, 7, 0, 0, 10, 24, 43, 55, 52, 36, 20, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 28, 44, 46, 30, 0, 0, 0, 0, 22, 28, 30, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 9, 18, 30, 48, 67, 82, 90, 88, 77, 61, 46, 36, 34, 37, 43, 46, 45, 38, 28),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 17, 10, 3, 2, 10, 24, 37, 48, 49, 41),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 14, 36, 55, 59, 60, 68, 70, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 25, 45, 70, 65, 65, 70, 65, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 19, 44, 59, 49, 25, 14, 19, 29, 28, 16, 13, 29, 44, 25, 5, 0),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 15, 26, 31, 26, 21, 31, 73, 100, 73, 31, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 26, 38, 50, 56, 61, 68, 75, 76, 65, 48, 33, 29, 33, 38, 44, 44, 40, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 53, 53, 53, 46, 53, 46, 38, 30, 23, 15, 7, 7, 7, 7, 7, 15, 15, 23, 23, 30, 30, 30, 30, 38),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 72, 79, 81, 81, 72, 69, 88, 90, 55, 18, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 28, 37, 0, 0, 59, 56, 53, 53, 56, 59, 56, 0, 0),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 23, 59, 73, 89, 97, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 45, 70, 75, 55, 30, 19, 26, 44, 56, 55, 39, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 6, 3, 0, 0, 0, 0, 0, 18, 22, 27, 32, 35, 37, 38, 37, 35, 31, 27, 25, 35, 53, 67, 59, 35),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 16, 40, 68, 87, 84, 62, 35, 0, 0, 37, 54, 55, 38, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 38, 57, 61, 46, 0, 0, 0, 53, 88, 88, 50, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 71, 94, 89, 64, 33, 15, 12, 28, 56, 82, 92, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 96, 82, 56, 56, 75, 86, 76, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 45, 51, 44, 0, 0, 0, 47, 100, 76, 47, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 38, 64, 91, 100, 94, 82, 76, 64, 50, 38, 52, 64, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 13, 0, 0, 0, 0, 0, 0, 0, 0, 9, 13, 15, 17, 17, 16, 16, 19, 23, 28, 31, 34, 38, 39, 36),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 17, 32, 47, 56, 55, 45, 29, 16, 7, 6, 10, 18, 22, 19, 11, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 74, 77, 57, 38, 44, 73, 93, 78, 41, 12, 1),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 2, 0, 0, 0, 4, 12, 21, 23, 16, 7, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 46, 75, 85, 71, 67, 71, 75, 71, 60, 50, 39, 28),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 35, 52, 58, 50, 34, 24, 28, 44, 60, 63, 51, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 29, 52, 69, 83, 90, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 55, 83, 85, 77, 71, 56, 0, 0, 0, 34, 45, 46, 37, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 5, 26, 52, 58, 47, 41, 38, 26, 20, 38, 67, 85, 76, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 1, 1, 1, 1, 1, 1, 1, 3, 9, 13, 15, 13, 10, 6, 3, 3, 4, 7, 10, 12, 11, 9, 5, 0),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 16, 27, 36, 40, 39, 35, 34, 38, 46, 51, 46, 32, 16, 4),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 53, 90, 96, 94, 96, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 31, 58, 75, 68, 41, 0, 0, 24, 55, 62, 37, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 14, 26, 38, 48, 55, 55, 52, 44, 37, 42, 62, 70, 43, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 53, 65, 55, 58, 79, 100, 88, 51, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 26, 14, 7, 9, 12, 24, 65, 82, 34, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 18, 33, 49, 64, 73, 73, 64, 51, 41, 42, 50, 53, 39, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 42, 78, 100, 85, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17, 16, 11),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 9, 0, 31, 46, 56, 68, 75, 68, 48, 0, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 58, 70, 58, 35, 17, 0, 0, 23, 76, 70, 100, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 6, 18, 39, 61, 71, 61, 38, 18, 0, 0, 38, 79, 76, 35, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 8, 15, 22, 26, 24, 17, 12, 10, 17, 29, 40, 38, 26, 12, 3, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 68, 100, 73, 26, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 44, 39, 31, 36, 31, 15, 5, 2, 2, 2, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 17, 25, 38, 53, 69, 76, 71, 57, 42, 32, 30, 36, 42, 44, 36, 25, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 40, 25, 10, 3, 1, 3, 16, 41, 61, 56, 46, 56, 40, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 42, 34, 21, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 21, 28),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 15, 36, 57, 57, 47, 42, 26, 10, 0, 15, 26, 21, 5, 0, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 51, 36, 0, 0, 0, 0, 0, 0, 0, 0, 44, 56, 66, 68, 64, 58, 54, 55, 63, 72, 77, 72, 64, 56),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 71, 64, 50, 26, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 37, 69, 83),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 25, 20, 25, 30, 18, 0, 0, 0, 21, 20, 15, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 61, 85, 100, 97, 80, 58, 47, 54, 73, 76, 54, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 20, 48, 74, 71, 46, 58, 48, 17, 17, 17, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 75, 81, 81, 72, 57, 42, 30, 24, 21, 24, 27, 30),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 15, 35, 45, 40, 30, 70, 25, 0, 10, 15, 15, 10, 10, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 17, 26, 46, 53, 36, 27, 38, 55, 69, 72, 60),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 0, 0, 0, 0, 0, 0, 0, 0, 9, 27, 36, 45, 36, 27, 18, 18, 18, 27, 27, 36, 36, 36, 36, 27),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 8, 4, 4, 0, 0, 0, 0, 0, 8, 20, 48, 80, 96, 80, 52, 36, 32, 36, 40, 40, 40, 36, 32, 24),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 25, 29, 29, 29, 25, 38, 54, 61, 54, 45, 35, 35, 38, 45, 45, 38, 32, 22, 16, 9, 9, 9, 16, 22),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 29, 33, 29, 0, 0, 0, 7, 14, 14, 7, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 11, 53, 100, 95, 80, 62, 0, 0, 0, 22, 25, 27, 25, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 43, 43, 40, 40, 37, 0, 0, 24, 45, 54, 35, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 10, 9, 8, 8, 0, 0, 0, 0, 5, 7, 9, 12, 13, 14, 14, 15, 15, 16, 17, 18, 19, 21, 23, 23),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 16, 10, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 11, 22, 25),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 4, 27, 68, 68, 54, 86, 68, 18, 13, 27, 40, 45, 40, 27, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 14, 19, 42, 76, 82, 53, 25, 19, 21, 25, 29, 34, 38, 40, 42, 44, 42),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 33, 100, 66, 20, 0, 6, 0, 20, 40, 66, 53, 20, 6),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 32, 50, 70, 82, 82, 73, 58, 0, 0, 73, 85, 79, 58, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 16, 10, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 19, 33, 26),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 55, 72, 75, 77, 77, 0, 0, 70, 85, 90, 72, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 17, 27, 37, 41, 31, 20, 17, 20, 27, 31, 31, 27, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 17, 23, 29, 35, 41, 47, 52, 52, 52, 52, 47, 41, 47, 64, 58, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 35, 58, 72, 85, 91, 76, 52, 41, 44, 50, 52, 47, 36, 24, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 18, 33, 51, 68, 79, 79, 69, 52, 38, 35, 46, 67, 82, 78, 56, 30, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 32, 40, 40, 40, 52, 64, 64, 52, 36, 28, 32, 28, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 40, 55, 65, 66, 61, 63, 75, 60, 24, 13, 26, 31, 13, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 4, 11, 16, 20, 24, 31, 42, 52, 48, 28),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 18, 43, 71, 84, 65, 37, 0, 0, 0, 12, 12, 12, 12, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 4, 10, 22, 36, 46, 43, 31, 16, 0, 0, 16, 30, 31, 20, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 32, 48, 51, 43, 24, 0, 0, 0, 21, 32, 24, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 44, 63, 70, 64, 47, 27, 18, 29, 59, 82, 78, 45, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 8, 12, 18, 22, 24, 24, 22, 20, 30, 60, 90, 82, 46),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 12, 34, 71, 100, 96, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 31, 53, 66, 69, 71, 79, 92, 100, 96, 83, 63, 42, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 13, 17, 21, 21, 21, 17, 17, 17, 4, 13, 26, 8, 0, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 25, 27, 28, 25, 18, 16, 29, 53, 70, 65, 43, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 0, 2, 7, 18, 36, 53, 57, 49, 39, 36, 34, 33, 30, 25, 19, 14, 9),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 29, 56, 75, 85, 87, 91, 89, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 51, 77, 77, 54, 28, 0, 0, 54, 85, 51, 68, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 33, 48, 77, 86, 68, 42, 28, 35, 51, 48, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 61, 59, 61, 71, 78, 75, 57, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 54, 100, 83, 47, 42, 46, 45, 40, 36, 35, 32, 30, 26, 23, 19, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 8, 37, 66, 45, 21, 34, 50, 36, 18, 19, 32, 49, 60, 59, 46, 30, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 0, 11, 33, 70, 81, 59, 40, 40, 40, 51, 81, 100, 100, 77, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 75, 75, 75, 75, 75, 75, 58, 50, 33, 25, 25, 25, 41, 50, 66, 66, 66, 66, 66, 66, 75, 75, 83, 75),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 44, 55, 61, 59, 51, 44, 59, 87, 89, 48, 14, 8, 16, 12, 2, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 91, 100, 70, 33, 0, 0, 0, 58, 83, 70, 33, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 42, 52, 39, 28, 39, 55, 68, 71, 63, 52, 42, 36, 36, 36, 36, 34, 28, 23, 15),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 50, 81, 95, 77, 59, 50, 54, 63, 68, 59, 40, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 36, 64, 80, 73, 64, 70, 63, 35, 14, 12, 22, 33, 39, 36, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 50, 63, 59, 52, 56, 70, 81, 86, 81, 70, 47, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 66, 72, 61, 41, 22, 13, 16, 33, 44, 38, 25, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 28, 24, 18, 14, 15, 25, 44, 65, 72, 60, 37),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 38, 61, 76, 69, 61, 61, 61, 61, 53, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 37, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 8, 10, 11, 12, 13, 14, 18, 30, 51, 69, 66),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 6, 4, 2, 0, 0, 0, 0, 0, 0, 13, 25, 37, 39, 34, 25, 18, 18, 20, 23, 25, 23, 20, 16, 11),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 18, 25, 27, 0, 0, 0, 0, 0, 20, 25, 20, 0, 0, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 61, 64, 50, 30, 17, 21, 44, 67, 63, 35, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 28, 35, 34, 25, 14, 7, 5, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 23, 43, 63, 73, 76, 90, 90, 40, 0, 0, 23, 36, 46, 40, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 25, 37, 50, 56, 56, 56, 50, 43, 37, 31, 31, 25, 12, 12, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 20, 51, 65, 44, 20, 51, 100, 48, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 1, 0, 0, 0, 0, 0, 0, 10, 18, 30, 42, 50, 51, 45, 35, 26, 22, 28, 39, 49, 49, 39, 24, 11),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 1, 1, 1, 1, 1, 1, 1, 1, 4, 8, 12, 15, 15, 14, 11, 10, 13, 23, 38, 49, 47, 34, 17, 4),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 7, 20, 35, 53, 61, 61, 51, 41, 35, 35, 33, 30, 25, 20, 15, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 7, 9, 10, 10, 8, 7, 6, 6, 7, 7, 7, 6, 4, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 2, 26, 61, 73, 67, 56, 41, 26, 16, 19, 34, 53, 67, 68, 54, 34, 13),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 38, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 14, 18, 21, 24, 27, 33, 45, 63, 80, 86, 74),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 17, 30, 44, 56, 63, 63, 55, 43, 33, 40, 64, 79, 56, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 85, 100, 71, 0, 0, 0, 50, 78, 85, 64, 0, 0, 0),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 46, 46, 43, 31, 0, 0, 0, 12, 37, 53, 28, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 50, 53, 75, 87, 0, 0, 0, 27, 29, 29, 27, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 29, 61, 84, 67, 37, 25, 30, 29, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 25, 37, 55, 74, 89, 98, 98, 89, 75, 63, 58, 68, 84, 94, 84, 63, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 11, 26, 46, 61, 61, 50, 34, 0, 0, 34, 38, 38, 34, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 18, 14, 9, 5, 3, 2, 4, 10, 21, 37, 53, 61, 58, 46, 30, 19, 18, 29, 44, 54, 51, 39, 27, 20),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 38, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 47, 69, 80, 75, 58, 36),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 37, 60, 72, 67, 49, 30, 24, 36, 67, 92, 87, 55, 22, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 5, 2, 2, 2, 2, 2, 2, 2, 13, 37, 64, 81, 78, 59, 35, 16, 8, 10, 16, 16, 10, 2, 2, 2),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 25, 44, 56, 56, 54, 53, 48, 44, 63, 76, 43, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 4, 17, 41, 69, 76, 56, 28, 15, 36, 10, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 1, 6, 10, 17, 30, 40, 40, 31, 21, 22, 39, 62, 80, 79, 59, 34, 13),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 47, 63, 52, 31, 10, 0, 10, 15, 21, 21, 10),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 25, 31, 37, 31, 25, 18, 12, 37, 62, 31, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 100, 98, 92, 81, 64, 46, 42, 55, 62, 50, 27, 0, 0, 0),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 42, 71, 62, 57, 68, 77, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 19, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 13, 16, 16, 14),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 50, 100, 68, 18, 0, 0, 0, 12, 37, 62, 25, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 69, 85, 78, 54, 0, 0, 42, 80, 100, 76, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 72, 46, 57, 80, 89, 74, 46, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 42, 76, 84, 60, 32, 22, 36, 56, 62, 48, 26, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 46, 39, 17, 9, 17, 29, 41, 48, 48, 39, 29, 29, 51, 78, 70, 39, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 27, 27, 18, 9, 4, 0, 0, 0, 27, 86, 100, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 0, 1, 3, 23, 47, 61, 60, 56, 61, 62, 46, 23, 13, 17, 29, 35, 32, 20, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 21, 43, 57, 53, 44, 41, 33, 27, 33, 48, 62, 67, 63, 50, 34, 20),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 51, 22, 35, 40, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 23, 31, 40, 51, 61, 69, 72, 68, 62, 58, 62, 75, 85, 81, 63, 39, 19, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 17, 19, 16, 11, 6, 2, 1, 4, 11, 24, 35, 36, 26, 13),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 9, 18, 32, 47, 55, 49, 36, 23, 18, 24, 32, 32, 20, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 6, 6, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 2, 2, 9, 27, 47, 63, 69, 65, 50, 30, 11, 7, 22, 44, 47, 25, 2, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 0, 28, 42, 57, 64, 57, 42, 28, 14, 7, 35, 64, 28, 64, 92, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 9, 27, 45, 58, 67, 68, 57, 35, 17, 17, 34, 56, 64, 52, 28, 7, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 36, 53, 62, 60, 46, 30, 21, 26, 38, 42, 28, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 20, 34, 52, 70, 85, 92, 89, 77, 63, 51, 48, 55, 66, 71, 65, 48, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 96, 100, 81, 58, 47, 53, 63, 60, 41, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 50, 60, 56, 45, 40, 39, 37, 34, 30, 25, 21, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 5, 0, 0, 30, 61, 90, 95, 71, 38, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 41, 70, 79, 58, 0, 0, 0, 20, 58, 79, 54, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 12, 13, 13, 0, 0, 0, 0, 54, 65, 53, 30, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 13, 4, 1, 1, 1, 0, 0, 1, 7, 18, 31, 42, 46, 41, 30, 19, 15, 22, 39, 53, 58, 56, 51, 38),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 34, 85, 86, 58, 60, 66, 51, 28, 12, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 78, 100, 98, 75, 44, 0, 0, 0, 26, 25, 15, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 35, 50, 56, 49, 33, 0, 0, 56, 96, 100, 62, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 20, 41, 54, 54, 37, 0, 0, 0, 58, 66, 58, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 26, 51, 78, 95, 92, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 15, 23, 32, 39, 47, 58, 69, 76, 71, 54, 32, 21, 23, 43, 60, 60, 41, 19, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 69, 39, 34, 82, 47, 0, 0, 30, 43, 52, 52, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 29, 33, 29, 0, 0, 0, 7, 14, 14, 7, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 42, 65, 58, 56, 99, 100, 50, 33, 37, 41, 43, 42, 38, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 41, 50, 53, 50, 41, 30, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 57, 50, 55, 65, 71, 71, 63, 52, 39, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 12, 8, 0, 0, 0, 0, 4, 6, 8, 9, 15, 37, 68, 54, 22, 14, 19, 25, 32, 35, 36, 33, 26, 19),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 71, 76, 63, 0, 0, 0, 59, 91, 99, 72, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 0, 0, 30, 62, 73, 78, 92, 75, 33, 0, 0, 26, 50, 55, 35, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 56, 80, 88, 93, 93, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 38, 0, 0, 0, 0, 0, 0, 10, 10, 10, 14, 44, 100, 82, 29, 17, 21, 31, 44, 61, 72, 74, 63, 48),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 21, 21, 21, 21, 21, 21, 28, 42, 50, 35, 21, 7, 7, 7, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 1, 4, 17, 38, 61, 70, 62, 51, 41, 31, 24, 22, 25, 31, 35, 35, 32, 25, 18),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 45, 65, 70, 58, 37, 17, 8, 22, 67, 100, 72, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 14, 21, 28, 35, 28, 21, 0, 0, 0, 35, 78, 57, 14, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 65, 41, 72, 86, 68, 55, 55, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 41, 67, 75, 60, 0, 0, 0, 61, 81, 69, 37, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 48, 70, 70, 70, 78, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 0, 24, 45, 64, 72, 64, 43, 24, 0, 0, 10, 21, 32, 37, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 32, 86, 97, 65, 58, 67, 74, 76, 74, 65, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 87, 97, 78, 51, 37, 38, 44, 46, 41, 31, 20, 10),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 28, 51, 71, 87, 87, 71, 51, 0, 0, 41, 71, 74, 41, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 25, 38, 53, 59, 61, 55, 48, 51, 57, 51, 34, 29, 38, 36, 17, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 53, 80, 88, 80, 65, 57, 53, 50, 46, 38, 30, 19, 11, 7, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 1, 17, 46, 65, 71, 67, 53, 29, 7, 1, 11, 41, 62, 52, 21, 1, 1),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 53, 82, 85, 60, 0, 0, 0, 0, 3, 7, 3, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 85, 67, 59, 79, 44, 0, 0, 55, 88, 94, 65, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 36, 50, 59, 75, 84, 71, 47, 29, 28, 47, 75, 92, 82, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 50, 65, 75, 76, 68, 57, 45, 41, 42, 50, 60, 68, 72, 70, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 13, 13, 12, 11, 19, 42, 72, 85, 64, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 63, 78, 77, 64, 54, 60, 76, 87, 79, 55, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 23, 31, 33, 26, 20, 27, 50, 66, 60, 60, 40, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 20, 20, 14, 8, 12, 31, 32, 34, 41, 36, 21),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 82, 85, 82, 91, 100, 91, 65, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 4, 1, 0, 0, 0, 0, 0, 10, 16, 18, 22, 28, 31, 27, 17, 12, 14, 20, 30, 37, 38, 35, 27, 18),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 20, 22, 20, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 22, 20, 17, 14, 14, 20, 28, 34, 37, 31),
('ChIJpS5vquBJXhMR8oU040lFFoU', 26, 15, 7, 2, 0, 0, 0, 0, 0, 0, 12, 16, 19, 21, 19, 15, 11, 10, 15, 29, 45, 53, 51, 45),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 20, 11, 4, 0, 0, 0, 0, 0, 0, 8, 13, 18, 20, 20, 16, 11, 8, 9, 14, 24, 36, 46, 49, 44),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 40, 56, 56, 40, 0, 0, 0, 46, 73, 83, 70, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 8, 16, 28, 36, 44, 48, 44, 40, 36, 44, 68, 96, 100, 72, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 9, 18, 32, 47, 54, 49, 34, 20, 10, 16, 36, 49, 29, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 22, 40, 50, 49, 38, 36, 50, 69, 70, 50, 24, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 42, 53, 53, 65, 85, 89, 65, 35, 19, 23, 41, 53, 50, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 62, 59, 55, 59, 66, 62, 51, 40, 29, 22),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 41, 61, 63, 46, 0, 0, 0, 35, 63, 73, 52, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 27, 48, 68, 76, 68, 48, 27, 12, 12, 42, 78, 74, 91, 100, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 39, 40, 26, 21, 27, 34, 40, 40, 36, 30, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 22, 28, 28, 23, 19, 21, 27, 26, 17, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 21, 84, 53, 47, 62, 71, 72, 69, 66, 65, 67, 69, 68, 64, 56, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 10, 12, 14, 15, 19, 29, 49, 70, 75, 57),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 15, 28, 46, 61, 61, 56, 48, 46, 43, 41, 35, 30, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 63, 47, 57, 0, 0, 0, 5, 15, 26, 15, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 19, 30, 39, 43, 41, 35, 27, 18, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 41, 70, 76, 64, 52, 47, 52, 58, 64, 64, 58, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 40, 37, 34, 31, 31, 42, 62, 77, 77, 54, 28, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 55, 75, 72, 87, 89, 74, 56, 0, 0, 56, 60, 58, 51, 41, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 28, 51, 68, 69, 57, 47, 51, 65, 72, 61, 37, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 72, 72, 77, 72, 72, 88, 100, 100, 94, 83, 72, 66, 61, 61, 61, 61, 55, 55, 50, 38, 33, 27, 22, 22),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 10, 31, 60, 61, 48, 46, 50, 50, 46, 38, 28, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 6, 9, 13, 16, 17, 17, 15, 12, 8, 7, 9, 16, 22, 18, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 21, 40, 47, 38, 29, 38, 57, 70, 75, 87, 75, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 57, 42, 44, 44, 42, 47, 50, 36, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 64, 72, 66, 53, 41, 42, 54, 68, 67, 49, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 20, 34, 46, 46, 36, 26, 30, 52, 76, 84, 74, 64, 52, 34, 16, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 17, 17, 14, 0, 0, 0, 46, 64, 53, 32, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 65, 40, 45, 62, 60, 60, 60, 51, 34, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 24, 31, 40, 48, 55, 60, 60, 55, 48, 40, 35, 51, 86, 91, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 20, 36, 53, 67, 74, 71, 60, 45, 35, 38, 52, 59, 47, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 15, 12, 8, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 25, 38),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 62, 65, 75, 65, 51, 48, 48, 48, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 9, 14, 21, 33, 48, 61, 68, 65, 54, 41, 33, 31, 36, 42, 46, 45, 38, 29, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 34, 65, 92, 90, 0, 0, 0, 9, 24, 34, 21, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 45, 54, 65, 92, 100, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 0, 0, 20, 40, 64, 78, 73, 53, 32, 20, 23, 45, 73, 84, 70, 45, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 36, 48, 59, 63, 61, 52, 41, 0, 0, 37, 56, 65, 51, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 22, 18, 17, 17, 8, 0, 8, 18, 32, 40, 37, 27, 34, 66, 74, 48, 38, 45, 54, 61, 65, 64, 58, 49),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 17, 0, 0, 0, 0, 0, 21, 27, 35, 48, 62, 74, 75, 67, 52, 38, 31, 31, 37, 42, 48, 48, 44, 37),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 15, 42, 67, 55, 47, 62, 50, 0, 0, 0, 45, 67, 57, 27, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 21, 17, 10, 7, 0, 32, 64, 67, 60, 42, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 33, 40, 46, 50, 50, 48, 46, 45, 45, 48, 53, 59, 64, 62, 56, 45, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 23, 25, 32, 41, 55, 65, 62, 48, 32, 27, 30, 41, 48, 48, 39, 27, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 50, 90, 50, 68, 86, 72, 0, 0, 0, 45, 68, 77, 59, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 48, 98, 100, 79, 79, 80, 67, 45, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 57, 57, 57, 50, 0, 0, 35, 57, 92, 92, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 12, 24, 33, 44, 59, 68, 62, 42, 22, 9, 5, 14, 40, 62, 53, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 13, 4, 0, 0, 0, 0, 0, 0, 0, 0, 81, 45, 63, 90, 63, 22, 0, 0, 4, 13, 27, 40, 45, 36),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 56, 87, 100, 87, 56, 0, 0, 0, 0, 6, 0, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 21, 39, 57, 69, 73, 65, 49, 31, 18, 23, 52, 74, 54, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 18, 51, 73, 81, 91, 93, 73, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 15, 20, 22, 22, 19, 15, 14, 21, 42, 70, 88, 79, 52, 25, 8, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 52, 78, 82, 65, 34, 17),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 13, 0, 0, 0, 0, 0, 8, 16, 30, 45, 54, 54, 45, 33, 28, 28, 33, 40, 45, 47, 44, 35, 27, 18),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 23, 53, 81, 84, 61, 41, 40, 52, 60, 55, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 67, 76, 75, 65, 48, 0, 0, 0, 78, 96, 63, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 0, 0, 0, 0, 0, 10, 10, 10, 10, 0, 20, 70, 50, 10, 10, 20, 30, 30, 30, 20, 10, 0, 0, 0),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 15, 42, 69, 72, 51, 27, 15, 15, 21, 27, 30, 30, 24, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 28, 42, 50, 35, 0, 0, 0, 42, 64, 57, 35, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 36, 49, 64, 77, 86, 88, 83, 71, 56, 47, 54, 69, 60, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 25, 14, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 32, 39, 43, 42, 41, 40, 44, 52, 59, 62, 57, 46),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 49, 73, 87, 89, 0, 0, 0, 0, 35, 22, 7, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 27, 44, 61, 66, 66, 61, 44, 38, 33, 27, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 7, 1, 1, 1, 1, 1, 16, 34, 47, 56, 63, 68, 70, 65, 55, 43, 36, 38, 48, 60, 68, 64, 50, 29),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 68, 60, 68, 76, 76, 64, 47, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 24, 44, 48, 32, 20, 16, 20, 20, 24, 20, 20, 16, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 65, 82, 88, 78, 59, 42, 39, 52, 69, 70, 52, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 59, 63, 50, 28, 0, 0, 35, 55, 60, 44, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 82, 75, 64, 51, 41, 0, 0, 22, 22, 25, 29, 33, 36, 39, 41, 42, 42, 43, 44, 48, 55, 63, 71, 77),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 59, 73, 80, 77, 66, 50, 36, 33, 43, 52, 40, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 66, 64, 43, 20, 8, 0, 29, 68, 75, 35, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 51, 51, 75, 45, 0, 0, 0, 30, 66, 75, 45, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 42, 36, 26, 0, 0, 0, 0, 31, 89, 100, 42, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 16, 1, 0, 0, 0, 0, 0, 0, 43, 21, 16, 28, 38, 41, 38, 29, 18, 10, 11, 24, 44, 60, 61, 44),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 20, 0, 0, 0, 0, 0, 0, 0, 2, 9, 22, 38, 50, 47, 36, 27, 23, 21, 20, 25, 36, 46, 46, 35),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 25, 44, 55, 51, 36, 22, 24, 44, 68, 74, 55, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 18, 25, 33, 40, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 87, 86, 70, 57, 60, 71, 73, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, 28, 48, 58, 52, 34, 18, 12, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 8, 31, 60, 84, 94, 82, 52, 18, 2, 2, 2, 30, 57, 65, 47, 15, 2),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 24, 39, 54, 66, 72, 73, 69, 62, 53, 49, 61, 77, 63, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 42, 36, 21, 10, 26, 21, 10, 10, 10, 15, 21, 21, 21, 15, 15, 15, 21, 26, 26, 26, 26, 26, 26, 31),
('ChIJWUxdrelJXhMRfiIBLlftogk', 49, 37, 23, 12, 0, 0, 0, 0, 0, 0, 26, 30, 32, 31, 28, 24, 21, 20, 24, 33, 44, 52, 52, 44),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 37, 51, 66, 92, 100, 88, 59, 33, 14, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 68, 77, 77, 81, 0, 0, 0, 18, 22, 22, 22, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 5, 19, 35, 43, 50, 67, 55, 23, 0, 0, 14, 16, 11, 5, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 72, 78, 75, 67, 53, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 1, 9, 44, 75, 72, 84, 100, 95, 72, 47, 31, 25, 26, 27, 27, 25, 22, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 51, 48, 35, 0, 0, 0, 0, 42, 83, 100, 75, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 17, 26, 36, 48, 56, 62, 64, 62, 56, 53, 53, 58, 65, 70, 67, 54, 37, 21),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 16, 38, 72, 100, 94, 61, 0, 0, 0, 33, 66, 72, 38, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 1, 1, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 0, 1, 12, 17, 11, 9, 9, 1, 0, 0, 1, 4, 13, 14, 4, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 25, 42, 61, 77, 86, 85, 74, 60, 52, 56, 65, 62, 43, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 0, 0, 0, 0, 0, 0, 0, 8, 22, 42, 64, 77, 73, 57, 42, 35, 40, 48, 60, 68, 73, 71, 62, 0),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 13, 34, 34, 37, 72, 74, 0, 0, 0, 27, 72, 79, 36, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 14, 36, 55, 59, 60, 68, 70, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 11, 26, 39, 39, 27, 16, 17, 35, 57, 58, 38, 16, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 24, 44, 49, 32),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 70, 20, 20, 50, 70, 60, 70, 100, 90, 50, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 24, 46, 72, 93, 99, 85, 61, 36, 0, 0, 28, 50, 66, 61, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 64, 91, 100, 88, 73, 64, 61, 58, 44, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 75, 33, 58, 100, 83, 0, 0, 0, 4, 12, 12, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 39, 49, 50, 42, 33, 30, 42, 73, 98, 90, 55, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 42, 60, 70, 66, 58, 56, 60, 63, 57, 48, 47, 56, 71, 83, 86, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 10, 29, 40, 47, 61, 75, 78, 67, 56, 59, 75, 93, 100, 90, 67, 40, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 22, 22, 11, 11, 22, 22, 33, 33, 44, 44, 44, 44, 44, 33, 33, 44, 44, 44, 44, 22, 11, 11, 11, 11),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 0, 5, 21, 42, 47, 31, 68, 78, 21, 15, 21, 31, 42, 52, 52, 52, 47, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 44, 67, 86, 82, 51, 0, 0, 34, 46, 51, 46, 30, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 6, 9, 9, 12, 12, 12, 18, 40, 78, 100, 84, 46, 15, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 16, 29, 33, 25, 12, 0, 0, 25, 45, 20, 16, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 45, 60, 49, 69, 0, 0, 0, 26, 54, 68, 52, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 50, 22, 22, 44, 0, 0, 0, 33, 66, 100, 100, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 7, 0, 1, 1, 0, 0, 0, 4, 16, 33, 52, 68, 73, 65, 52, 42, 41, 51, 63, 71, 68, 55, 36, 18),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 6, 12, 25, 43, 62, 76, 77, 65, 47, 30, 24, 29, 42, 49, 40, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_visit`
--

CREATE TABLE `pois_visit` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `name_of_pois` varchar(50) NOT NULL,
  `id_of_pois` varchar(50) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `num_of_people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_visit`
--

INSERT INTO `pois_visit` (`user_id`, `user_username`, `name_of_pois`, `id_of_pois`, `Timestamp`, `num_of_people`) VALUES
(0, 'strikecy', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-07-19 12:49:31', 0),
(0, 'strikecy', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-19 12:59:40', 0),
(0, 'strikecy', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-19 12:59:58', 10),
(0, 'strikecy', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-07-19 21:31:29', 20),
(1, 'str', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-22 09:49:02', 0),
(1, 'str', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-19 11:50:09', 0),
(2, 'str1', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-19 14:00:00', 0),
(1, 'str', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-19 12:10:52', 0),
(1, 'str', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-07-19 12:23:58', 0),
(0, 'strikecy', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-07-24 18:48:20', 5),
(0, 'strikecy', 'Happytails', 'ChIJ-f8_0B82XhMRGO3574T-GbY', '2022-07-28 17:39:23', 15),
(0, 'strikecy', 'Happytails', 'ChIJ-f8_0B82XhMRGO3574T-GbY', '2022-07-28 17:40:45', 19),
(0, 'strikecy', 'Flocafe', 'ChIJ4bvbRlU3XhMRizrDqc9I6fU', '2022-07-28 17:43:03', 1000),
(3, 'kous', 'Coffeebrands', 'ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', '2022-08-24 13:01:34', 0),
(1, 'strikecy', 'Coffeebrands', 'ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', '2022-08-24 13:01:51', 10),
(3, 'kous', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-08-25 11:46:18', 0),
(5, 'str1', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-09-08 18:54:05', 15),
(1, 'strikecy', 'Mary Flogera Hairdressing Room', 'ChIJw1cp-C9JXhMR8v9XtGbMjCc', '2022-09-08 18:54:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pois_wednesday`
--

CREATE TABLE `pois_wednesday` (
  `POIs_ID` varchar(255) NOT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `num5` int(11) DEFAULT NULL,
  `num6` int(11) DEFAULT NULL,
  `num7` int(11) DEFAULT NULL,
  `num8` int(11) DEFAULT NULL,
  `num9` int(11) DEFAULT NULL,
  `num10` int(11) DEFAULT NULL,
  `num11` int(11) DEFAULT NULL,
  `num12` int(11) DEFAULT NULL,
  `num13` int(11) DEFAULT NULL,
  `num14` int(11) DEFAULT NULL,
  `num15` int(11) DEFAULT NULL,
  `num16` int(11) DEFAULT NULL,
  `num17` int(11) DEFAULT NULL,
  `num18` int(11) DEFAULT NULL,
  `num19` int(11) DEFAULT NULL,
  `num20` int(11) DEFAULT NULL,
  `num21` int(11) DEFAULT NULL,
  `num22` int(11) DEFAULT NULL,
  `num23` int(11) DEFAULT NULL,
  `num24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pois_wednesday`
--

INSERT INTO `pois_wednesday` (`POIs_ID`, `num1`, `num2`, `num3`, `num4`, `num5`, `num6`, `num7`, `num8`, `num9`, `num10`, `num11`, `num12`, `num13`, `num14`, `num15`, `num16`, `num17`, `num18`, `num19`, `num20`, `num21`, `num22`, `num23`, `num24`) VALUES
('ChIJ-4tRPOhJXhMRR26MqYYWG5o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 51, 67, 64, 41, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-f8_0B82XhMRGO3574T-GbY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 50, 48, 36, 23, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ-TKYmx02XhMRhtJ7X9WTjPI', 0, 0, 0, 0, 0, 0, 0, 0, 52, 79, 87, 77, 91, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0-KER9xJXhMRl3X7zCQ1yks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 45, 47, 63, 65, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ04Xm-h02XhMRovY8-bw3Cpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 59, 81, 93, 100, 93, 81, 62, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0a4YHeBJXhMRgESyORq9JSo', 65, 66, 67, 65, 69, 69, 70, 71, 74, 75, 77, 79, 81, 82, 83, 85, 85, 85, 83, 82, 81, 79, 77, 75),
('ChIJ0RiAPOJJXhMR9e-rNN13X9o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 73, 39, 73, 78, 52, 21, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0SLujdJJXhMReoZCMz2q5gU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 8, 29, 83, 62, 70, 87, 70, 37, 0, 0, 0),
('ChIJ0We6ISc2XhMR0JstwP2xC6s', 0, 0, 0, 0, 0, 0, 0, 0, 21, 55, 91, 97, 74, 48, 42, 44, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ0xg-_4BJXhMRADzrgzcpuh4', 0, 0, 0, 0, 0, 0, 0, 0, 35, 69, 73, 62, 64, 50, 21, 0, 0, 30, 48, 50, 33, 0, 0, 0),
('ChIJ0YP89yw3XhMRu0_gcptybS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 18, 24, 22, 0, 0, 0, 0, 32, 68, 94, 81, 44, 16, 0),
('ChIJ17ejkhk2XhMRPsEejntj8Mc', 0, 0, 0, 0, 0, 0, 32, 50, 71, 90, 100, 97, 83, 63, 44, 31, 28, 37, 52, 64, 62, 47, 29, 0),
('ChIJ1f_1SOJJXhMRgrZ3x59ZKNw', 0, 0, 0, 0, 0, 0, 11, 28, 53, 74, 77, 65, 60, 58, 39, 17, 14, 31, 58, 76, 69, 44, 0, 0),
('ChIJ24KnIg83XhMRX_b9V6y7PKE', 0, 0, 0, 0, 0, 0, 0, 0, 19, 42, 46, 42, 47, 50, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ2aLsIN1JXhMRNfKoa1o78hc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 55, 58, 44, 31, 34, 58, 72, 65, 65, 37, 0, 0, 0),
('ChIJ2fQFR91JXhMRBBb8ue5OBy0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 73, 88, 82, 61, 40, 31, 35, 40, 37, 24, 0, 0, 0),
('ChIJ2_CkENxJXhMRqwrQ2tx2tfg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 62, 81, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ310hRBU2XhMRpBbkVZZbYIo', 0, 0, 0, 0, 0, 0, 0, 0, 48, 77, 72, 80, 91, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ34_kIOBJXhMR7imf2tRjF3o', 0, 0, 0, 0, 0, 0, 0, 0, 33, 59, 85, 96, 85, 62, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3f25nudJXhMRVQoX1IsZr1w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 14, 11, 6, 0, 0, 5, 13, 27, 40, 42, 31, 17, 0, 0),
('ChIJ3Qc7_udJXhMR0fkjJjvXKFU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 24, 68, 100, 74, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag', 0, 0, 0, 0, 0, 15, 23, 36, 48, 60, 67, 67, 61, 51, 38, 29, 27, 35, 50, 59, 52, 35, 18, 9),
('ChIJ3X7CiOBJXhMRbxx85eY4QPk', 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 25, 25, 24, 22, 24, 29, 40, 59, 72, 54),
('ChIJ47FVOOhJXhMRbXLg96azRkk', 0, 0, 0, 0, 0, 0, 0, 16, 40, 67, 74, 66, 78, 91, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ49E6U91JXhMR6q8NxVCECY0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 70, 75, 85, 95, 90, 60, 30, 0, 0, 0),
('ChIJ4bvbRlU3XhMRizrDqc9I6fU', 0, 0, 0, 0, 0, 0, 0, 0, 12, 21, 32, 36, 33, 24, 16, 12, 15, 22, 30, 33, 29, 20, 11, 5),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 31, 52, 57, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ4e-5v05JXhMRDZp4UgNSSqg', 0, 0, 0, 0, 0, 23, 37, 52, 68, 77, 81, 77, 66, 52, 41, 33, 31, 34, 40, 44, 43, 36, 0, 0),
('ChIJ5-bc-wc3XhMRtRMtoIpDJDw', 38, 46, 46, 53, 30, 38, 38, 38, 23, 15, 7, 0, 7, 76, 7, 7, 7, 15, 15, 15, 0, 15, 15, 15),
('ChIJ53SyUV83XhMRKCtMj0KPkBI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 72, 60, 58, 69, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ57Qhcd1JXhMRhxjGS5QRDTU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 37, 43, 28, 0, 0, 12, 46, 90, 100, 71, 50, 40, 34, 21),
('ChIJ59AOJyY2XhMR8N2c37sYaTg', 0, 0, 0, 0, 0, 0, 0, 0, 49, 74, 77, 94, 100, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6-7xGd1JXhMRQ5DGHRSSD0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 52, 83, 100, 88, 59, 35, 30, 41, 51, 47, 30, 0, 0, 0),
('ChIJ6-g47SM2XhMRoBC9mS6dkKE', 15, 5, 0, 0, 0, 0, 0, 18, 24, 31, 36, 40, 42, 42, 40, 36, 35, 42, 59, 79, 84, 67, 40, 18),
('ChIJ63usud1JXhMRUS8wsjnW_cE', 0, 0, 0, 0, 0, 0, 0, 0, 9, 34, 73, 100, 89, 54, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64p0Wd1JXhMRtZmt58iRp1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 57, 34, 46, 80, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ64pWe9xJXhMRZIPVqpAvdrA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 92, 79, 87, 84, 79, 74, 69, 61, 51, 35, 23, 0, 0, 0),
('ChIJ663QGt5JXhMRLpPwwCgD6po', 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 86, 59, 56, 88, 100, 80, 77, 66, 29, 6, 0, 0, 0, 0),
('ChIJ6aiJL91JXhMRdtCJALBOZl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 48, 52, 46, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ6S0nj9tJXhMRWs2HqE67BJ4', 0, 0, 0, 0, 0, 0, 0, 0, 47, 61, 64, 61, 64, 73, 76, 70, 55, 38, 20, 11, 0, 0, 0, 0),
('ChIJ6yqEUtxJXhMR1KLGF_rOGsE', 29, 0, 0, 0, 0, 0, 0, 0, 0, 14, 15, 17, 17, 17, 16, 14, 13, 12, 13, 21, 37, 52, 52, 37),
('ChIJ71wmUS82XhMRKso4jVV3SaI', 0, 0, 0, 0, 0, 0, 0, 11, 64, 92, 52, 43, 40, 31, 19, 8, 4, 8, 24, 38, 34, 17, 0, 0),
('ChIJ7f_lJyY2XhMRnOqNQJfMj3g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 65, 69, 58, 44, 47, 71, 86, 65, 29, 6, 1),
('ChIJ7SdGoCg2XhMRGcnVpa4dU0g', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 11, 8, 0, 0, 0, 13, 22, 25, 20, 11, 4, 0),
('ChIJ7XfBJtlJXhMRU_FCeJJQTUI', 21, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 39, 60, 78, 89, 89, 78, 67, 57, 46, 39, 32, 25),
('ChIJ7yhfRt1JXhMRPkdnvSSHNA8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 36, 57, 66, 58, 39, 23, 20, 32, 49, 54, 41, 0, 0, 0),
('ChIJ82GEusJJXhMRX7-8PM_0UZQ', 0, 0, 0, 0, 0, 0, 0, 0, 34, 63, 80, 89, 97, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ876i5edJXhMR67q92o6fTlw', 0, 0, 0, 0, 0, 0, 0, 0, 65, 98, 77, 56, 84, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ88kULCM2XhMRXqQTjKQz9-s', 0, 0, 0, 0, 0, 0, 0, 0, 32, 50, 70, 82, 79, 64, 44, 26, 17, 23, 44, 52, 38, 0, 0, 0),
('ChIJ8e14Y_k3XhMRwkBFeA4sA44', 1, 1, 1, 1, 1, 1, 1, 1, 5, 9, 12, 12, 11, 8, 6, 4, 4, 6, 9, 11, 12, 10, 5, 1),
('ChIJ8ShAw91JXhMRVTCotrEjofM', 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 22, 35, 44, 49, 50, 50, 49, 48, 45, 40, 33, 25, 17, 10),
('ChIJ8Uhwphk2XhMR0eyLMUIgSEk', 0, 0, 0, 0, 0, 0, 0, 0, 74, 100, 74, 80, 96, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ8YFRQhs3XhMRSTMUbYu6zCw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 62, 75, 72, 51, 27, 0, 0, 24, 58, 79, 48, 0, 0, 0),
('ChIJ8yJ6relJXhMRo2XqEv0keZU', 0, 0, 0, 0, 0, 0, 0, 0, 21, 38, 59, 77, 86, 84, 73, 55, 41, 49, 84, 100, 58, 0, 0, 0),
('ChIJ8_W90oNJXhMRYjcEwMb3FzI', 0, 0, 0, 0, 0, 0, 0, 0, 39, 67, 81, 81, 86, 97, 86, 51, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJA0rrId1JXhMRkMcQDP_FF9U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 29, 41, 39, 21, 7, 2, 9, 31, 46, 34, 12, 0, 0, 0),
('ChIJa4Go5yc2XhMR-30hKzhbx_c', 0, 0, 0, 0, 0, 0, 0, 0, 24, 37, 48, 56, 62, 68, 69, 62, 49, 48, 74, 86, 51, 0, 0, 0),
('ChIJA5DOIt9JXhMRJLGwefvfnYk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 67, 81, 72, 48, 0),
('ChIJa6-4NuhJXhMRQXmJpfRb8ck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 16, 19, 9),
('ChIJA8EOiMk3XhMRfLK_6kRsJS4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 19, 9, 2, 7, 17, 34, 53, 65, 60, 43, 24, 0, 0),
('ChIJA8XmnCc2XhMRoA2h45hqTg4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 52, 76, 76, 58, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeHBPuBJXhMRuNbzVocLWWA', 0, 0, 0, 0, 0, 0, 0, 21, 36, 51, 62, 65, 58, 45, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaeM-2txJXhMR-jNLpMJiuS8', 0, 0, 0, 0, 0, 0, 0, 0, 8, 17, 28, 33, 31, 24, 17, 21, 26, 21, 26, 35, 26, 10, 1, 0),
('ChIJaf7ny95JXhMREjCDphUgY9k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 26, 47, 73, 57, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaSelXrpJXhMRn8muKjS7tz8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 65, 78, 63, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJaVrgkCU2XhMRvIk-RC18hoM', 0, 0, 0, 0, 0, 0, 7, 13, 23, 40, 59, 75, 76, 69, 57, 50, 53, 65, 75, 71, 55, 36, 0, 0),
('ChIJAVs4m443XhMRBbxmCCI6f5Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 36, 20, 3, 0, 0, 0, 0, 30, 73, 100, 76, 35, 13, 0),
('ChIJAxo6z91JXhMRW0HHI55w3YY', 31, 27, 19, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 25, 31),
('ChIJb-UU-uBJXhMR3im-80UB9EU', 0, 0, 0, 0, 0, 0, 0, 0, 26, 47, 42, 36, 63, 68, 26, 5, 0, 15, 26, 10, 0, 0, 0, 0),
('ChIJB0BpiiM2XhMR0j9vb-iKkoc', 45, 32, 0, 0, 0, 0, 0, 0, 0, 0, 45, 64, 72, 68, 59, 55, 62, 63, 54, 47, 58, 74, 81, 71),
('ChIJB28Vo-dJXhMRGvJkMDFm1oA', 71, 53, 42, 30, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 46, 85, 100),
('ChIJb2vum-dJXhMRHv6ovkdcrbA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 25, 31, 32, 28, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJB5_cotlJXhMRYU5IInw7QSQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 54, 77, 95, 100, 90, 71, 54, 52, 65, 65, 40, 0, 0, 0),
('ChIJb6ZtRxw2XhMR3wPLklk4dic', 0, 0, 0, 0, 0, 0, 0, 0, 35, 51, 61, 71, 74, 61, 43, 30, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJb8dRjuBJXhMRn7kXnVAElMs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 45, 66, 84, 84, 66, 42, 27, 24, 30, 39, 45, 42),
('ChIJB9uOmYM3XhMRcG8fh_Xmz7o', 0, 0, 0, 0, 0, 0, 0, 0, 20, 30, 35, 30, 25, 60, 100, 35, 30, 40, 40, 35, 30, 0, 0, 0),
('ChIJbaPLFeJJXhMRYPqDu15HzSs', 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 39, 44, 47, 47, 44, 42, 46, 59, 76, 82, 67),
('ChIJBdeGxd1JXhMRFO_jl8ZxPvc', 27, 18, 9, 9, 18, 9, 18, 18, 27, 36, 36, 36, 36, 36, 27, 27, 18, 27, 54, 90, 100, 72, 45, 36),
('ChIJBfAfbxA2XhMRwQp5GijpdHg', 20, 16, 12, 0, 0, 0, 0, 0, 0, 32, 40, 48, 56, 60, 56, 52, 40, 32, 28, 0, 20, 24, 28, 36),
('ChIJbxPEONlJXhMRa8kVlAv7xO4', 22, 22, 16, 16, 25, 38, 51, 54, 51, 38, 25, 19, 25, 41, 67, 90, 100, 90, 74, 58, 51, 51, 51, 45),
('ChIJbzH1X0E3XhMRIZIsCrlLqgY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 62, 48, 25, 0, 0, 0, 14, 14, 11, 3, 0, 0, 0),
('ChIJC2jRLtxJXhMRV6S5dLnEOC8', 0, 0, 0, 0, 0, 0, 0, 0, 9, 20, 38, 54, 54, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJC5wDAOhJXhMRbEJgpo45o_o', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 54, 81, 91, 75, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcbyyvvBJXhMRSm_GgkofFOg', 20, 17, 12, 7, 0, 0, 0, 0, 4, 6, 9, 13, 15, 16, 15, 14, 19, 38, 30, 23, 26, 28, 28, 27),
('ChIJCcFHo-dJXhMRigcvlaY-Aaw', 18, 9, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 24, 29, 28),
('ChIJCcwj8udJXhMRSx5MEED6Ng8', 0, 0, 0, 0, 0, 0, 0, 13, 45, 77, 81, 63, 54, 45, 36, 31, 45, 0, 0, 0, 0, 0, 0, 0),
('ChIJCdQRw0Y3XhMRHeQx2bwPEAw', 0, 0, 0, 0, 0, 0, 0, 10, 21, 51, 80, 85, 57, 25, 8, 4, 8, 8, 12, 21, 29, 40, 48, 55),
('ChIJCw-wuz5JXhMRd2DwyJ14sxg', 6, 0, 0, 0, 0, 0, 0, 0, 6, 13, 20, 33, 33, 33, 20, 13, 13, 26, 46, 53, 40, 40, 40, 40),
('ChIJcWjkR91JXhMR9oP34Ui6bqA', 0, 0, 0, 0, 0, 0, 0, 0, 35, 58, 85, 100, 100, 88, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCX9HZedJXhMRg5p7O7JXVxo', 26, 17, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 17, 25, 31),
('ChIJcXR0Xd5JXhMRAy9XmfDeTDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 40, 54, 100, 95, 27, 4, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJcXYYN9xJXhMRjd3iZ2N9fl8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 85, 95, 97, 100, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJCyeO-eBJXhMRAkMflWn6zlU', 0, 0, 0, 0, 0, 0, 0, 0, 17, 31, 41, 44, 37, 34, 34, 34, 34, 31, 27, 20, 13, 6, 0, 0),
('ChIJD12aA_c3XhMR3g61s7cKpQc', 0, 0, 0, 0, 0, 0, 0, 11, 11, 23, 29, 35, 41, 47, 52, 52, 52, 52, 58, 58, 47, 35, 0, 0),
('ChIJd6BFedxJXhMRn7tE7kY38uw', 0, 0, 0, 0, 0, 0, 0, 0, 40, 67, 90, 100, 91, 72, 57, 56, 69, 84, 86, 72, 48, 25, 0, 0),
('ChIJdRnTGehJXhMRC_2WB2YrFVc', 0, 0, 0, 0, 0, 0, 16, 27, 42, 60, 75, 85, 83, 73, 56, 39, 33, 53, 97, 100, 51, 15, 0, 0),
('ChIJDU4ldCU2XhMRhYQRDJHqYB8', 0, 0, 0, 0, 0, 0, 0, 0, 48, 88, 84, 48, 40, 72, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJdwNXM-hJXhMRi_BfcTlRcpU', 0, 0, 0, 0, 0, 0, 0, 0, 53, 65, 60, 69, 91, 100, 80, 44, 15, 5, 26, 29, 1, 0, 0, 0),
('ChIJDz-T9N1JXhMRmGSyHsfpq5A', 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 11, 21, 31, 40, 45, 46, 44, 43, 52, 77, 100),
('ChIJdz60KyA2XhMRiCVdmLDxyx8', 0, 0, 0, 0, 0, 0, 0, 0, 12, 18, 28, 40, 43, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJD_GT-iQ2XhMRbFWExhIn4sI', 0, 0, 0, 0, 0, 0, 0, 11, 17, 24, 31, 36, 40, 37, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe-PPlfpJXhMREHnWmKLXhLo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 45, 59, 54, 35, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJe1mo9ttJXhMRFDnfMS1zBEo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 32, 44, 52, 51, 43, 32, 25, 29, 41, 54, 52, 35, 0, 0),
('ChIJE5rqhOFJXhMREi7B5EA45Dw', 0, 0, 0, 0, 0, 0, 0, 0, 10, 14, 18, 22, 26, 28, 26, 24, 18, 12, 8, 10, 40, 100, 82, 22),
('ChIJe6e_jdxJXhMR8_viy49sZBo', 0, 0, 0, 0, 0, 0, 0, 0, 62, 50, 40, 71, 87, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeePefNxJXhMRfsPuJU5hSXs', 0, 0, 0, 0, 0, 0, 0, 0, 45, 66, 52, 50, 64, 80, 92, 98, 96, 87, 72, 55, 0, 0, 0, 0),
('ChIJeRBLIEo3XhMRJQF6V6sC6MI', 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 13, 17, 21, 26, 26, 21, 17, 13, 0, 13, 17, 17, 17, 0),
('ChIJESBMBBk2XhMRi2SbsZ_zvMU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 30, 33, 29, 22, 17, 23, 48, 81, 100, 86, 53, 0, 0),
('ChIJESy5R-hJXhMRLxB4IK1HxUU', 0, 0, 0, 0, 0, 0, 0, 4, 9, 18, 28, 43, 56, 67, 73, 71, 62, 49, 33, 22, 15, 13, 14, 14),
('ChIJeT2kxTo2XhMRCntpyoHXt2A', 0, 0, 0, 0, 0, 0, 0, 22, 68, 98, 87, 82, 92, 100, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeWquqyE2XhMRLB_819PA_b0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 37, 45, 48, 40, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJeyeosMJJXhMRtDLyzhTEbGk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 44, 75, 91, 77, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJEyYBg5lJXhMRKgt4ZJBJpR0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 77, 82, 71, 63, 79, 100, 86, 0, 0, 0, 0, 0),
('ChIJEzGdRic2XhMRYTCEu8QXinw', 0, 0, 0, 0, 0, 0, 38, 59, 66, 59, 57, 70, 70, 50, 35, 30, 29, 28, 25, 23, 19, 0, 0, 0),
('ChIJF-Rg6dI3XhMRMNxaFTBLchg', 0, 0, 0, 0, 0, 0, 20, 38, 63, 86, 100, 95, 77, 53, 31, 20, 20, 30, 43, 49, 45, 32, 0, 0),
('ChIJf0kcnSc2XhMRu-Lg9p3PZjI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 25, 40, 48, 44, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJf1c-xyU2XhMRQaIzEdB_B7k', 75, 66, 75, 75, 75, 75, 75, 75, 66, 66, 58, 50, 50, 50, 58, 66, 75, 83, 91, 91, 100, 91, 91, 91),
('ChIJf3-AwtxJXhMRQw5tNnZ7858', 0, 0, 0, 0, 0, 0, 53, 71, 83, 89, 87, 83, 87, 89, 83, 61, 38, 32, 46, 51, 30, 0, 0, 0),
('ChIJF4cVh95JXhMRQOmhXwyCjRw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 75, 62, 83, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFaU1TBw2XhMRq87NWxs61hA', 0, 0, 0, 0, 0, 34, 57, 73, 71, 60, 57, 55, 47, 36, 34, 39, 50, 60, 63, 57, 47, 36, 23, 13),
('ChIJfdC04No3XhMR8JrkZLvazh4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 68, 100, 95, 63, 36, 36, 54, 63, 50, 31, 13, 0, 0, 0),
('ChIJfQQHiudJXhMR-4G7rHZsOF4', 0, 0, 0, 0, 0, 0, 0, 45, 100, 81, 51, 59, 61, 45, 28, 24, 28, 36, 40, 41, 37, 0, 0, 0),
('ChIJFUgUqwY3XhMR_pCBkFi8rdI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 43, 38, 36, 63, 72, 47, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 58, 83, 72, 44, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJG-nbR95JXhMRn-Nt0pw6n38', 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 26, 20, 13, 9, 11, 28, 59, 89, 91, 64, 31),
('ChIJG4E8Nd1JXhMRZKzBgeqv7oE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 38, 46, 46, 46, 38, 53, 53, 38, 23, 0, 0, 0, 0, 0),
('ChIJG5AcGCY2XhMRmpnpUDVG6Lc', 44, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 14, 18, 20, 21, 19, 18, 25, 45, 74, 93, 87),
('ChIJg67Oa4g3XhMRfLQlSnNC9hg', 6, 4, 2, 0, 0, 0, 0, 0, 0, 13, 25, 37, 44, 44, 34, 23, 11, 6, 9, 30, 34, 13, 4, 4),
('ChIJgaNhRt1JXhMRpJTd4HCQbmc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 39, 51, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGb49U91JXhMRVTXGitn-18A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 84, 100, 74, 39, 21, 17, 0, 0, 0, 0, 0, 0, 0),
('ChIJgfsxwudJXhMRKnbcZM8BvL0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 31, 35, 32, 25, 16, 10, 7, 0, 0, 0, 0, 0),
('ChIJGfuRsONJXhMRQ-9vUU0WSjI', 0, 0, 0, 0, 0, 0, 0, 26, 46, 70, 90, 90, 76, 53, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJgSRoV1BJXhMRVdH2YsKI4hY', 0, 0, 0, 0, 0, 0, 18, 25, 37, 62, 87, 100, 100, 81, 56, 37, 25, 18, 18, 18, 0, 0, 0, 0),
('ChIJgwBl6SU2XhMRMjbygjBSboQ', 0, 0, 0, 0, 0, 0, 0, 0, 24, 41, 65, 82, 86, 79, 62, 44, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJGYPtKyY2XhMRDq5n0hrb108', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 41, 46, 43, 35, 28, 28, 42, 62, 75, 69, 0, 0, 0),
('ChIJGyvrM91JXhMRcWNtBtoQDOo', 4, 1, 0, 0, 0, 0, 0, 9, 21, 37, 54, 64, 61, 48, 32, 21, 18, 22, 30, 37, 39, 34, 25, 15),
('ChIJGyYZay82XhMRYIH_uvIjIH8', 1, 1, 1, 1, 1, 1, 0, 4, 10, 17, 23, 26, 24, 19, 13, 10, 15, 29, 48, 60, 56, 38, 19, 6),
('ChIJgzsL5S5JXhMRGNrT3szvqVA', 0, 0, 0, 0, 0, 0, 23, 43, 56, 51, 33, 41, 87, 87, 33, 15, 25, 41, 43, 33, 17, 0, 0, 0),
('ChIJh003YSY2XhMRXA3c9sHdMAw', 0, 0, 0, 0, 0, 0, 0, 0, 37, 63, 88, 100, 93, 71, 44, 23, 10, 6, 7, 10, 11, 9, 5, 0),
('ChIJH1FcPxw2XhMRzjMDiIppoZg', 0, 0, 0, 0, 0, 0, 0, 14, 35, 46, 45, 51, 75, 74, 37, 14, 17, 34, 51, 63, 64, 56, 39, 20),
('ChIJh23mZNxJXhMR_FJs8zkMjSc', 51, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 15, 20, 25, 30, 35, 44, 59, 78, 95, 100, 88),
('ChIJH2IPqSU2XhMRx52dM-Uwiwc', 0, 0, 0, 0, 0, 0, 0, 0, 19, 32, 48, 62, 70, 69, 61, 47, 36, 41, 71, 88, 57, 0, 0, 0),
('ChIJH50SYN5JXhMRNZ0H3mKanto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 64, 78, 100, 64, 42, 42, 50, 0, 0, 0, 0, 0, 0),
('ChIJHbwHNtxJXhMROpsRtSXroJ0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 72, 100, 94, 62, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 30, 63, 82, 69, 39, 19, 13, 13, 0, 0, 0, 0),
('ChIJhTC7IiA2XhMRDXXA5keTbkU', 0, 0, 0, 0, 0, 0, 6, 15, 34, 56, 72, 81, 84, 72, 48, 34, 36, 48, 62, 72, 79, 81, 0, 0),
('ChIJhVyNxiU2XhMR-047iPt8FPY', 0, 0, 0, 0, 0, 0, 0, 0, 15, 42, 57, 61, 76, 80, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJHWDmpd9JXhMRXEiXYFeZNy8', 15, 12, 8, 5, 1, 2, 6, 15, 27, 38, 48, 56, 56, 44, 29, 21, 24, 35, 47, 58, 62, 58, 48, 35),
('ChIJHWqsdxBJXhMRV07tc6vTu0Q', 19, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 25, 38, 36, 30, 27, 25),
('ChIJhYRbv8JJXhMRhO8shM1QpIw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 50, 67, 68, 55, 39, 34, 47, 65, 74, 64, 41, 19, 5, 0),
('ChIJHz0GwiY2XhMRl8CM130I0qw', 2, 2, 2, 2, 2, 2, 2, 2, 2, 40, 78, 100, 91, 62, 27, 5, 2, 16, 32, 45, 45, 35, 16, 2),
('ChIJi-PbLN1JXhMRAlEw_WH3wVY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 37, 53, 65, 67, 57, 47, 56, 79, 90, 72, 39, 0, 0, 0),
('ChIJidZ1J-hJXhMREOf2Hl6LtjE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 50, 75, 66, 50, 50, 41, 0, 0, 0, 0, 0, 0),
('ChIJIT-L1txJXhMR-LdLSRGIw64', 0, 0, 0, 0, 0, 0, 0, 0, 6, 21, 54, 89, 100, 76, 41, 15, 4, 0, 0, 0, 0, 0, 0, 0),
('ChIJiw9IeNxJXhMRN3ktBePQ55A', 0, 0, 0, 0, 0, 0, 0, 5, 11, 14, 15, 22, 31, 35, 31, 25, 29, 45, 66, 80, 76, 56, 32, 13),
('ChIJizF4o5o3XhMRYFqw0tvXBHM', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 26, 36, 57, 68, 47, 31, 36, 42, 36, 21, 10),
('ChIJJ0oVneBJXhMRanPNTLt5Fbo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJj56MreNJXhMRWAsKa0J8W4k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 57, 55, 62, 46, 25, 12, 11, 11, 11, 9, 9, 7, 5, 3),
('ChIJJaO96txJXhMRRvExSYtoakQ', 0, 0, 0, 0, 0, 0, 0, 0, 28, 65, 77, 60, 68, 91, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJja_lJOdJXhMRFlKclQ0f_RM', 11, 7, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 6, 6, 5, 4, 3, 0, 0, 9, 17, 24, 25, 19),
('ChIJjdavRtxJXhMR6Lsap2NAPjM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJjStkv95JXhMRUoCUguhw85A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 86, 97, 90, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJJU-orzo2XhMRWpzclnuGfzw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 80, 59, 72, 82, 82, 72, 55, 0, 0, 0, 0, 0, 0, 0),
('ChIJJUpxVdxJXhMRdAh6eagtvZk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 58, 70, 58, 42, 40, 46, 56, 78, 100, 88, 46, 0, 0, 0),
('ChIJJXZNNjtJXhMR_2Oug8KxoHw', 0, 0, 0, 0, 0, 0, 58, 39, 14, 12, 21, 31, 41, 46, 46, 41, 39, 53, 82, 100, 78, 39, 0, 0),
('ChIJJZn-y95JXhMR2IkOdpYfMgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 13, 22, 27, 22, 13, 9, 0, 0, 9, 18, 27, 0, 0, 0),
('ChIJJ_A_iudJXhMRUJgkCMds8Iw', 0, 0, 0, 0, 0, 1, 3, 29, 62, 74, 64, 64, 76, 66, 35, 14, 15, 26, 35, 37, 29, 16, 0, 0),
('ChIJk0zmsB82XhMRaUVxT1MhpGY', 0, 0, 0, 0, 0, 0, 0, 0, 28, 36, 45, 50, 48, 35, 23, 15, 16, 21, 27, 31, 32, 30, 26, 20),
('ChIJK2mtFN9JXhMRQgGlzRIXc6k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 81, 100, 85, 51, 0, 0),
('ChIJK9JxXd5JXhMRGFctHHOYk9U', 0, 0, 0, 0, 0, 0, 27, 37, 47, 56, 62, 66, 65, 60, 52, 43, 37, 37, 50, 62, 59, 40, 19, 0),
('ChIJkRhinSg2XhMRipOQ12_hPzI', 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 18, 19, 16, 11, 6, 3, 4, 10, 23, 40, 51, 50, 38, 21),
('ChIJKT-X7SA2XhMR2dSVr5pougg', 0, 0, 0, 0, 0, 0, 0, 0, 21, 30, 40, 46, 48, 44, 37, 33, 34, 40, 45, 44, 34, 0, 0, 0),
('ChIJkU0A9d1JXhMR9T_4O5CNFvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16),
('ChIJkWR0G-hJXhMROoDIrRsTL_4', 0, 0, 0, 0, 0, 0, 2, 2, 8, 26, 47, 63, 70, 65, 52, 39, 33, 35, 43, 46, 38, 24, 7, 0),
('ChIJKy7R3SY2XhMReaxikN_Jbb0', 0, 0, 0, 0, 0, 0, 0, 21, 21, 21, 35, 50, 50, 50, 35, 28, 28, 28, 28, 28, 28, 0, 0, 0),
('ChIJkyMAAtxJXhMReRGaeAMIras', 0, 0, 0, 0, 0, 0, 0, 12, 31, 49, 61, 67, 68, 61, 45, 27, 17, 22, 35, 44, 37, 19, 2, 0),
('ChIJkzc4SdlJXhMR9vuZ2mvkGic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 53, 81, 83, 68, 48, 30, 20, 26, 47, 61, 48, 0, 0, 0),
('ChIJkzfBJtlJXhMREAFzqdAmezs', 0, 0, 0, 0, 0, 0, 26, 48, 72, 89, 96, 98, 97, 92, 81, 67, 59, 60, 64, 64, 58, 46, 0, 0),
('ChIJL0fNGehJXhMRlVU3gQjfRdM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 98, 96, 73, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJL3fOG-hJXhMRU1V_0dOrsvk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 37, 46, 54, 59, 59, 56, 50, 40, 31, 22, 15, 0, 0, 0),
('ChIJl4E8Nd1JXhMRIItSjXdfOXo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 11, 7, 4, 0, 0, 31, 42, 50, 62, 55, 26, 0, 0),
('ChIJl7UuQ91JXhMR1v-v16uKft0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 29, 37, 29, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbeqKhk2XhMRKRTbz6Mkha4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 23, 61, 100, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLbEvNt5JXhMRFhliuqrrGNE', 0, 0, 0, 0, 0, 0, 0, 0, 13, 41, 42, 30, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLdeECdxJXhMRQebIGUOpSeA', 19, 3, 1, 1, 1, 0, 0, 1, 6, 18, 31, 42, 45, 39, 27, 17, 14, 22, 37, 50, 58, 60, 56, 43),
('ChIJlQV3HyY2XhMRpjjYBlws0d4', 0, 0, 0, 0, 0, 0, 0, 0, 44, 77, 92, 86, 76, 66, 53, 35, 20, 0, 0, 0, 0, 0, 0, 0),
('ChIJlQzUWic2XhMRRj2o3g9QiWw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 65, 73, 92, 78, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJLUQ4UdxJXhMRgMPndSLOmOA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 43, 54, 49, 35, 18, 9, 0, 0, 0, 0, 0, 0, 0),
('ChIJLzvSjNtJXhMRaLcN70J3l3k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 75, 70, 70, 83, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMe6qq95JXhMRQnl3pHRF_fM', 0, 0, 0, 0, 0, 0, 0, 0, 40, 68, 84, 91, 88, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMQP6EbU3XhMRBtsPNWT_DiQ', 0, 0, 0, 0, 0, 10, 21, 39, 58, 78, 91, 91, 78, 58, 39, 26, 23, 30, 45, 54, 54, 41, 23, 0),
('ChIJMScYXd1JXhMRgS_fSOwp_Zw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 47, 65, 69, 52, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJMSeG8hk2XhMRRhwsF8fhP3Y', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 62, 48, 25, 0, 0, 0, 14, 14, 11, 3, 0, 0, 0),
('ChIJmxF_PCc2XhMRJpnrz44FtbU', 0, 0, 0, 0, 0, 0, 0, 0, 31, 49, 67, 81, 84, 76, 62, 50, 42, 40, 39, 36, 30, 0, 0, 0),
('ChIJmxlfhcJJXhMRQj9Jq3IJ6LI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 64, 66, 64, 58, 53, 43, 0, 0, 0, 0, 0, 0),
('ChIJmzSR7SA2XhMRpWcgvrhnQEY', 0, 0, 0, 0, 0, 0, 0, 39, 44, 65, 84, 94, 94, 81, 65, 50, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn-oVOT1JXhMRXanG5trXMNM', 12, 7, 0, 0, 0, 0, 3, 6, 8, 10, 16, 38, 70, 61, 25, 9, 13, 25, 41, 56, 63, 60, 47, 31),
('ChIJn51UoxY2XhMRf1wTCw8qdLI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 81, 88, 74, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn65BbOJJXhMRRvBmSjqKNX0', 0, 0, 0, 0, 0, 0, 0, 0, 35, 69, 73, 62, 64, 50, 21, 0, 0, 30, 48, 50, 33, 0, 0, 0),
('ChIJN7wFo95JXhMR4o70bbRt3ow', 0, 0, 0, 0, 0, 0, 0, 0, 45, 69, 88, 98, 90, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJNce1WSQ2XhMRCxdWbKOr_8M', 34, 0, 0, 0, 0, 0, 0, 6, 19, 44, 70, 74, 57, 29, 12, 8, 12, 21, 34, 46, 59, 63, 63, 55),
('ChIJncMSgNxJXhMR4DF_487vzUE', 0, 0, 0, 0, 0, 0, 0, 0, 14, 21, 35, 42, 50, 57, 57, 57, 50, 42, 35, 28, 28, 21, 0, 0),
('ChIJNQv7Pxw2XhMReRJTJFtt4xc', 0, 0, 0, 0, 0, 11, 22, 40, 55, 64, 58, 45, 35, 32, 28, 17, 14, 18, 25, 30, 31, 27, 21, 14),
('ChIJnVTNXd1JXhMRL_8V2BHiIhw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 44, 65, 78, 75, 62, 45, 32, 22, 15, 0, 0, 0, 0, 0),
('ChIJnwe6K-hJXhMRHtx9OxScQ50', 0, 0, 0, 0, 0, 0, 0, 0, 14, 35, 57, 57, 78, 100, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyLA8iM2XhMR2MQ82SsQXww', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 79, 96, 86, 79, 96, 100, 68, 0, 0, 0, 0, 0, 0, 0),
('ChIJnyp2TjJJXhMRqALyopTO6RA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 57, 85, 57, 57, 57, 71, 57, 57, 42, 28, 28, 28, 42, 42),
('ChIJNZ1UauhJXhMRkTlRze9u1xg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 53, 74, 81, 73, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnZEloN5JXhMRyRL2ZJSuP2g', 0, 0, 0, 0, 0, 0, 0, 0, 50, 68, 71, 80, 92, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJnzMzbC5JXhMRqCFJuOnFPBk', 0, 0, 0, 0, 0, 0, 0, 8, 24, 48, 75, 86, 78, 62, 51, 43, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJn_SgKe03XhMRvsbE3xFr8Ao', 0, 0, 0, 0, 0, 0, 0, 0, 39, 65, 83, 88, 83, 76, 69, 62, 62, 67, 0, 0, 0, 0, 0, 0),
('ChIJO80-Xd5JXhMRlyaMy0oiVyE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 93, 100, 69, 51, 44, 40, 37, 34, 28, 21, 13, 6),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 0, 0, 0, 0, 0, 0, 0, 0, 38, 66, 89, 100, 97, 82, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOfXygiQ2XhMRZmdy1DIIEg4', 0, 0, 0, 0, 0, 0, 0, 8, 80, 51, 29, 38, 38, 29, 25, 25, 34, 44, 51, 51, 44, 31, 0, 0),
('ChIJoSfaJdlJXhMRkvnzmN4fq3k', 0, 0, 0, 0, 0, 0, 0, 30, 53, 65, 61, 61, 100, 73, 38, 34, 34, 30, 30, 26, 23, 0, 0, 0),
('ChIJOWm2Id1JXhMRp2eZn4eANX8', 0, 0, 0, 0, 0, 0, 0, 1, 37, 79, 82, 86, 100, 74, 26, 0, 2, 15, 31, 42, 43, 32, 16, 1),
('ChIJowSURxM3XhMRmbAxgMezpuk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 67, 100, 92, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOZMLiudJXhMR5Yzounsbock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 47, 64, 71, 65, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJOztsXBk2XhMRIu0EEdF27js', 0, 0, 0, 0, 0, 0, 0, 0, 38, 50, 47, 56, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJoZu2ICE2XhMRaYhwPdvHLkY', 0, 0, 0, 0, 0, 0, 0, 0, 41, 75, 70, 75, 87, 82, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJP-URlSY2XhMRXXseyEczfzI', 0, 0, 0, 0, 0, 0, 0, 0, 63, 87, 100, 92, 70, 49, 38, 42, 52, 65, 75, 78, 71, 58, 0, 0),
('ChIJP1bzTS82XhMRKDyRa4_p-j4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 16, 14, 11, 14, 28, 54, 83, 100, 95, 0, 0, 0, 0),
('ChIJp69bRt1JXhMRLcacpegzEHM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 67, 91, 100, 89, 72, 69, 84, 96, 80, 45, 0, 0, 0),
('ChIJp6BIfNxJXhMR7BIEIygVugA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 18, 26, 32, 36, 37, 38, 62, 84, 47, 68, 68, 0, 0, 0),
('ChIJP95VVTRJXhMRCHXgsht_cOE', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 38, 34, 21, 7, 1, 5, 18, 36, 52, 54, 42),
('ChIJpfoFo8JJXhMRiG28gW6dEDk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 74, 68, 54, 68, 77, 68, 48, 0, 0, 0, 0, 0, 0, 0),
('ChIJpfoFo8JJXhMRo_WwvJOMWj0', 10, 5, 2, 0, 0, 0, 0, 6, 21, 18, 23, 41, 52, 48, 31, 18, 13, 17, 24, 30, 33, 33, 28, 22),
('ChIJpRuijI9JXhMR8QWStdLh_oc', 22, 17, 11, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 37, 22, 8, 5, 11, 25, 40, 48, 45, 34),
('ChIJpS5vquBJXhMR8oU040lFFoU', 31, 13, 3, 0, 0, 0, 0, 0, 0, 0, 15, 21, 24, 24, 21, 15, 12, 13, 21, 34, 47, 53, 47, 33),
('ChIJpUKWctxJXhMRpG8wNzBnwE0', 33, 21, 11, 0, 0, 0, 0, 0, 0, 9, 14, 18, 20, 20, 18, 16, 16, 19, 24, 28, 31, 35, 39, 40),
('ChIJpxBoqb43XhMRPoXjQGIk2C0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 56, 70, 63, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJPxOeftxJXhMR-yriXsgge7w', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 24, 40, 48, 48, 48, 56, 64, 72, 72, 64, 52, 0, 0),
('ChIJpYe_5iM2XhMRxwCviSFImLA', 0, 0, 0, 0, 0, 0, 0, 18, 32, 58, 83, 87, 63, 36, 21, 21, 25, 27, 27, 25, 0, 0, 0, 0),
('ChIJPzt7ad1JXhMRGFvhsh_u14k', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 38, 40, 48, 60, 56, 37, 21, 21, 40, 53, 38, 0, 0, 0),
('ChIJQ3qt9uBJXhMRxxS46q7tIKw', 0, 0, 0, 0, 0, 0, 0, 0, 33, 51, 59, 61, 64, 66, 61, 50, 38, 34, 38, 39, 31, 0, 0, 0),
('ChIJq5JL5dtJXhMRB6c5ycxvvmU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 59, 51, 48, 59, 74, 74, 66, 66, 62, 55),
('ChIJq8ifLjQ3XhMRwe_o9v8rl_M', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJqf86hOdJXhMRRbJprshqh38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 45, 72, 81, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJQRupKd9JXhMR76eGV2uPCyU', 0, 0, 0, 0, 0, 0, 0, 0, 10, 29, 63, 93, 93, 63, 31, 14, 21, 46, 76, 97, 91, 63, 0, 0),
('ChIJQSyU1MJJXhMRoim9HkdlBrM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 39, 44, 44, 40, 33, 40, 59, 0, 0, 0, 0, 0, 0),
('ChIJqXfObCc2XhMRnI9QBuMheio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 100, 94, 70, 49, 36, 28, 0, 0, 0, 0, 0, 0, 0),
('ChIJqXT_xCU2XhMRc5ulGeOpCoc', 0, 0, 0, 0, 0, 0, 13, 53, 95, 85, 75, 86, 93, 89, 77, 64, 55, 51, 50, 49, 46, 0, 0, 0),
('ChIJqXwupd9JXhMRbLAlCLbTKR0', 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 12, 14, 13, 10, 7, 9, 21, 43, 64, 69, 53),
('ChIJQZbR3xQ3XhMRyaR2SBYu29I', 0, 0, 0, 0, 0, 0, 0, 0, 28, 48, 79, 100, 100, 82, 61, 48, 41, 38, 33, 28, 0, 0, 0, 0),
('ChIJQ_LStsJJXhMRenKaHK-PKUI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 84, 73, 78, 73, 47, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR-21pd1JXhMRuPef1Jr3S0s', 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 32, 42, 45, 44, 43, 40, 31, 19, 0, 0, 0, 0, 0, 0),
('ChIJR4O6Q5VJXhMR4aymPeXvaJA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 76, 82, 76, 64, 47, 35, 17, 11, 29, 58, 52, 0, 0, 0),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 37, 74, 100, 94, 71, 60, 57, 57, 42, 25, 11, 0, 0, 0),
('ChIJR56ibOhJXhMRc3gu6QZZ8ek', 0, 0, 0, 0, 0, 0, 0, 0, 34, 56, 68, 84, 96, 89, 70, 51, 43, 0, 0, 0, 0, 0, 0, 0),
('ChIJR5AWLd1JXhMR0obEMueRTlU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 28, 56, 74, 75, 61, 51, 52, 58, 57, 45, 25, 0, 0, 0),
('ChIJRb9uAz43XhMRexZ2BgsH0cs', 22, 27, 38, 55, 55, 44, 38, 33, 33, 61, 94, 77, 38, 22, 27, 33, 38, 44, 50, 55, 61, 66, 72, 72),
('ChIJRbfvEiY2XhMRy1BekwIyAC4', 0, 0, 0, 0, 0, 0, 0, 8, 25, 50, 58, 51, 45, 46, 46, 41, 33, 25, 0, 0, 0, 0, 0, 0),
('ChIJReMkcU03XhMRHtlq-RGG_Mc', 0, 0, 0, 0, 0, 0, 0, 14, 36, 66, 92, 100, 85, 58, 31, 15, 11, 12, 14, 14, 12, 0, 0, 0),
('ChIJrf91Ut1JXhMRTpuQVMuJyz4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 28, 56, 77, 77, 59, 40, 29, 26, 0, 0, 0, 0, 0, 0),
('ChIJRRUAM-hJXhMRVoRgymr08ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 42, 48, 43, 47, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJRTEamHO-oRQRG1JF5zvvqd4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 76, 92, 91, 75, 60, 62, 76, 78, 57, 28, 0, 0, 0),
('ChIJRwdOzNhJXhMR__8CRQPCUc0', 0, 0, 0, 0, 0, 0, 0, 0, 20, 60, 58, 42, 44, 46, 52, 60, 68, 76, 76, 68, 56, 40, 26, 0),
('ChIJrXkslMFJXhMRgyfrmSEgAqI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 14, 35, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJR_N2telJXhMRYj3MLKzzwQ8', 0, 0, 0, 0, 0, 0, 0, 0, 40, 100, 71, 48, 60, 68, 65, 54, 37, 0, 0, 0, 0, 0, 0, 0),
('ChIJs13fMVdJXhMRdfoTBribjjc', 0, 0, 0, 0, 0, 0, 0, 26, 33, 46, 68, 88, 95, 82, 57, 33, 24, 35, 57, 73, 68, 0, 0, 0),
('ChIJs26l3KI3XhMR7NBzdimtWlc', 0, 0, 0, 0, 0, 0, 0, 0, 24, 41, 58, 70, 75, 71, 59, 46, 37, 37, 43, 43, 33, 0, 0, 0),
('ChIJS35t8d1JXhMRs-NcRKrkiDY', 41, 32, 18, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 15, 28, 38),
('ChIJS6ysv95JXhMRAp3oWsdGk5c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 75, 100, 89, 72, 75, 79, 65, 41, 0, 0, 0, 0, 0, 0),
('ChIJS8X0pWY3XhMRzrGX7803y-8', 0, 0, 0, 0, 0, 6, 16, 34, 56, 74, 81, 77, 65, 52, 39, 30, 29, 36, 44, 51, 51, 46, 35, 0),
('ChIJSap7relJXhMRUkopSQsXwuI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 56, 90, 100, 78, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJse48wcJJXhMRJLB3qdkZp64', 0, 0, 0, 0, 0, 0, 0, 0, 48, 83, 81, 74, 79, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSfhTP95JXhMR-zVAEzOU464', 0, 0, 0, 0, 0, 0, 0, 4, 17, 42, 75, 92, 84, 60, 43, 37, 37, 37, 35, 31, 23, 17, 0, 0),
('ChIJsTB4eiQ2XhMRYHsB0svbUhI', 0, 0, 0, 0, 0, 0, 0, 0, 31, 68, 63, 47, 75, 83, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSV15sMJJXhMR2lFWUwnBmAE', 39, 29, 19, 13, 11, 11, 11, 11, 11, 11, 12, 18, 37, 61, 65, 50, 45, 56, 71, 80, 76, 62, 45, 29),
('ChIJsVkvueNJXhMRB3fJo2F0Eg8', 30, 0, 0, 0, 0, 0, 22, 32, 45, 58, 67, 68, 62, 51, 38, 30, 28, 35, 48, 60, 62, 58, 47, 35),
('ChIJSWbYERM3XhMRX5qduCDaczY', 0, 0, 0, 0, 0, 0, 0, 2, 12, 35, 62, 72, 55, 27, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJSxcz2FI2XhMRkB05AbcRmlI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 14, 25, 35, 67, 100, 78, 0, 0, 0),
('ChIJt-jvWxk2XhMRmqTBLN1y4Fg', 0, 0, 0, 0, 0, 0, 0, 33, 46, 51, 48, 38, 32, 29, 33, 37, 40, 46, 61, 83, 96, 88, 59, 0),
('ChIJt7LpHPs3XhMRn1RE73k4Bbs', 0, 0, 0, 0, 0, 0, 0, 25, 27, 25, 23, 25, 48, 90, 95, 55, 27, 30, 41, 53, 53, 48, 37, 0),
('ChIJTe4rjNhJXhMRWUC_aCYYXEM', 0, 0, 0, 0, 0, 0, 0, 0, 68, 95, 54, 31, 68, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJTyCVWvA3XhMRnNgdFRaTWE8', 0, 0, 0, 0, 0, 0, 0, 0, 20, 41, 64, 75, 77, 80, 77, 56, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJtzoQaN1JXhMRN3UWhJWJeo4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 78, 85, 92, 92, 71, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu-vWGU03XhMRQPtHWoqT688', 0, 0, 0, 0, 0, 0, 12, 25, 38, 46, 46, 42, 38, 31, 20, 14, 16, 22, 31, 38, 40, 0, 0, 0),
('ChIJU2cC_5A3XhMRTltBi0TpJVo', 18, 9, 0, 0, 0, 0, 0, 0, 0, 0, 100, 72, 45, 45, 45, 27, 13, 4, 9, 13, 18, 22, 18, 9),
('ChIJu3E6_NtJXhMRThQBLQwqhow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 93, 75, 68, 75, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu3rojN5JXhMRF2jtmwJYy04', 0, 0, 0, 0, 0, 0, 0, 0, 15, 35, 62, 86, 100, 95, 75, 53, 45, 61, 84, 82, 48, 0, 0, 0),
('ChIJu4RiQNxJXhMRAQUqW9MVAVI', 0, 0, 0, 0, 0, 0, 0, 25, 56, 84, 93, 89, 94, 94, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJu8vyBuJJXhMRfm0zkEgJDWU', 0, 0, 0, 0, 0, 0, 0, 0, 47, 85, 80, 39, 9, 2, 3, 9, 17, 29, 41, 46, 44, 33, 21, 0),
('ChIJU9iH_p83XhMRvlOk16boN8k', 30, 39, 8, 0, 8, 4, 0, 0, 8, 21, 43, 60, 0, 0, 0, 0, 0, 47, 60, 65, 69, 69, 65, 56),
('ChIJU9lb5SQ2XhMRC-mT4k-qJ5I', 11, 0, 0, 0, 0, 0, 15, 23, 33, 44, 49, 50, 45, 38, 30, 25, 27, 35, 45, 54, 55, 49, 37, 23),
('ChIJUb5ZXC82XhMRXaOkeHvXc_Y', 0, 0, 0, 0, 0, 0, 0, 0, 24, 41, 55, 66, 72, 70, 64, 52, 38, 27, 0, 0, 0, 0, 0, 0),
('ChIJUf_lbyY2XhMRg9OS_Tm8jC4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 82, 63, 86, 100, 55, 19, 9, 0, 0, 0, 0, 0, 0, 0),
('ChIJU_nWAOk3XhMRiIye0cMSMTE', 0, 0, 0, 0, 0, 0, 10, 20, 20, 20, 20, 10, 0, 0, 0, 0, 0, 0, 10, 30, 10, 0, 0, 0),
('ChIJV-Z3PRw2XhMRP_npsTE0kOI', 0, 0, 0, 0, 0, 0, 0, 0, 3, 12, 36, 69, 87, 75, 48, 30, 27, 0, 0, 0, 0, 0, 0, 0),
('ChIJv08FZ9xJXhMRRjkMwp1FjIU', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 42, 64, 78, 64, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJv6i6xt9JXhMRVp9vNGd6MLY', 0, 0, 0, 0, 0, 0, 0, 0, 37, 54, 72, 85, 90, 85, 72, 55, 38, 30, 43, 71, 69, 0, 0, 0),
('ChIJv6X8lPtJXhMRceVYtL2dNJE', 31, 19, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 22, 27, 31, 33, 33, 32, 31, 38, 60, 73, 55, 40),
('ChIJv9c17udJXhMR4Wfccn7HIws', 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 68, 73, 52, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVeODuCE2XhMRcDFqFETdzdw', 0, 0, 0, 0, 0, 0, 0, 0, 27, 33, 33, 38, 61, 61, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJVfLnrMVJXhMRkzUAT7CxG4U', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 3, 2, 1, 0, 0, 1, 2, 2, 1, 0, 0),
('ChIJVQ35PeJJXhMRfqL9-SJiiv0', 5, 1, 1, 1, 1, 1, 9, 28, 47, 62, 70, 70, 62, 50, 38, 30, 29, 35, 45, 55, 57, 51, 35, 15),
('ChIJvSmvgd1JXhMRFmsdMFQRQR8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 74, 68, 68, 66, 54, 41, 25, 0, 0, 0, 0, 0, 0),
('ChIJVVVVFd1JXhMRDi-W13sWrzg', 0, 0, 0, 0, 0, 0, 0, 0, 12, 60, 60, 24, 24, 36, 48, 52, 44, 36, 24, 16, 0, 0, 0, 0),
('ChIJVVVVVSY2XhMR6tbTcBXsYAk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 92, 100, 88, 75, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvXsLLNxJXhMRIJvrwlA58MA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 62, 73, 59, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJvxymD99JXhMRZa9GDUjgifQ', 79, 74, 64, 53, 35, 0, 0, 17, 24, 31, 39, 45, 50, 53, 53, 51, 47, 43, 47, 59, 77, 89, 83, 66),
('ChIJVzAMZC82XhMRbhndkrdgnck', 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 79, 88, 85, 74, 61, 55, 53, 53, 49, 38, 25, 0, 0, 0),
('ChIJV_4IWd1JXhMRYeQYVYtdnow', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 60, 93, 83, 41, 16, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW0cahd1JXhMRhjG4WP18Wmk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 63, 60, 72, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw1cp-C9JXhMR8v9XtGbMjCc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW1GXGt9JXhMRKCKV3m0UOYg', 20, 1, 0, 0, 0, 0, 0, 1, 16, 24, 23, 34, 48, 56, 56, 49, 41, 37, 39, 46, 51, 50, 41, 26),
('ChIJw1kkdXdJXhMRetIwLyVDE6s', 21, 0, 0, 0, 0, 0, 0, 0, 2, 11, 31, 58, 74, 65, 41, 24, 19, 21, 24, 27, 31, 37, 40, 34),
('ChIJW2MRl91JXhMRZKkwwIR0xGY', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 38, 63, 73, 66, 52, 40, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJW3ewRd1JXhMR24JhBJLE98A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 51, 77, 48, 18, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJw3Fe5Cc2XhMRHcQgQkfA6ok', 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 71, 60, 56, 74, 89, 84, 82, 0, 0, 0, 0, 0, 0, 0),
('ChIJW42MUT03XhMRGUH6OjHcTac', 0, 0, 0, 0, 0, 0, 0, 15, 44, 81, 100, 87, 76, 81, 92, 92, 76, 56, 0, 0, 0, 0, 0, 0),
('ChIJW666Vxk2XhMRo_D2yOU6YsY', 0, 0, 0, 0, 0, 0, 0, 0, 8, 30, 46, 48, 40, 48, 74, 64, 30, 0, 0, 0, 0, 0, 0, 0),
('ChIJw7aMQeJJXhMR4F6A4HR7Kio', 2, 2, 2, 2, 2, 2, 2, 2, 19, 48, 71, 79, 66, 39, 12, 2, 6, 35, 71, 92, 83, 49, 11, 2),
('ChIJwdFpF-JJXhMRFRwIQP7phY8', 0, 0, 0, 0, 0, 0, 0, 0, 31, 44, 57, 69, 77, 78, 74, 64, 54, 50, 58, 66, 52, 0, 0, 0),
('ChIJWQ__HeBJXhMRAKH10ZawcdQ', 42, 42, 42, 36, 26, 0, 0, 0, 0, 0, 0, 0, 10, 21, 31, 26, 10, 5, 5, 15, 26, 36, 42, 52),
('ChIJWUxdrelJXhMRfiIBLlftogk', 31, 18, 9, 4, 0, 0, 0, 0, 0, 0, 20, 26, 32, 35, 35, 31, 26, 24, 28, 36, 48, 57, 60, 56),
('ChIJWz0kmCU2XhMR4zd8MYHwoOQ', 0, 0, 0, 0, 0, 0, 0, 0, 29, 48, 62, 74, 74, 66, 51, 33, 18, 0, 0, 0, 0, 0, 0, 0),
('ChIJWzSxwiY2XhMR0MLasqi7eJs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 59, 95, 100, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJx3OiIMg3XhMRFJiKIFiuXjs', 0, 0, 0, 0, 0, 0, 0, 14, 38, 37, 16, 17, 31, 34, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJXbvE1iNJXhMRqFkdjtYdGZs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 87, 90, 85, 73, 56, 0, 0, 0, 0, 0, 0),
('ChIJXw7utONJXhMRtc156JXTs80', 0, 0, 0, 0, 0, 5, 16, 34, 51, 57, 50, 41, 35, 32, 30, 28, 28, 31, 33, 32, 26, 18, 0, 0),
('ChIJxyaKVWlJXhMRKU0T1zcjjBo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 29, 33, 53, 55, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJxZ_BF0lJXhMRgcQowKpjoQ8', 0, 0, 0, 0, 0, 0, 15, 22, 32, 41, 51, 58, 63, 63, 60, 59, 59, 62, 68, 72, 70, 60, 46, 30),
('ChIJY4432yU2XhMR2jrWEN7aWls', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJy6_1791JXhMRxDeYnQPCLYc', 3, 4, 4, 3, 18, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9),
('ChIJYdZBLCY2XhMRZRAQwVO1aEg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 43, 44, 41, 41, 40, 38, 45, 73, 88, 54, 0, 0, 0),
('ChIJYezHP91JXhMRerXmnLRu6xs', 0, 0, 0, 0, 0, 0, 0, 1, 7, 9, 9, 11, 9, 2, 0, 0, 0, 2, 3, 4, 4, 0, 0, 0),
('ChIJYQIxGyE2XhMRupS59ERDUNc', 0, 0, 0, 0, 0, 0, 0, 0, 26, 46, 68, 86, 92, 82, 65, 52, 50, 59, 68, 66, 50, 0, 0, 0),
('ChIJyRizl0hJXhMRYIWm34jaikk', 0, 0, 0, 0, 0, 0, 0, 20, 33, 48, 62, 71, 71, 64, 53, 37, 28, 31, 51, 77, 93, 86, 57, 0),
('ChIJYTN3rt1JXhMRwPer72FVYjw', 0, 0, 0, 0, 0, 0, 0, 0, 22, 37, 43, 58, 100, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 0, 0, 0, 0, 0, 0, 0, 16, 40, 67, 74, 66, 78, 91, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJyxjU_edJXhMRvAQgTvJ1AQw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 13, 22, 27, 30, 27, 23, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJz9K0zqqkoRQRAVOEwsvyMlA', 12, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 20, 34, 43, 40, 28),
('ChIJZfOTMwhJXhMRacg9z9GL3As', 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 30, 40, 50, 50, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJZSZOWxk2XhMRx_ZGHpVteCc', 0, 0, 0, 0, 0, 0, 0, 26, 45, 67, 85, 92, 85, 67, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzTq70N1JXhMRIVAT4ThgxSw', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 47, 85, 85, 64, 55, 55, 55, 50, 0, 0, 0, 0, 0),
('ChIJZxabsd5JXhMRYSDHkWwENxM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 66, 87, 95, 83, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJzxNiQN5JXhMRKmxPJMORUZI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 46, 55, 53, 46, 39, 49, 76, 100, 92, 57, 20, 0, 0),
('ChIJzYO1YAKDoRQRHB44RW2S--I', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6),
('ChIJz_07-W03XhMRvRymy1Ccda0', 0, 0, 0, 0, 0, 0, 32, 51, 68, 77, 80, 87, 97, 93, 69, 45, 40, 53, 73, 91, 100, 0, 0, 0),
('ChIJ_1hdfNxJXhMROQHnwImcpxE', 0, 0, 0, 0, 0, 0, 0, 23, 49, 65, 68, 71, 81, 87, 84, 75, 71, 77, 85, 85, 73, 51, 28, 0),
('ChIJ_75wXd5JXhMR3nEZgNwpaso', 11, 11, 11, 11, 11, 11, 11, 11, 33, 55, 77, 88, 88, 77, 55, 44, 33, 44, 44, 44, 33, 11, 11, 11),
('ChIJ_7nx_mxJXhMRSrp68dDU67M', 0, 0, 0, 0, 0, 0, 100, 68, 21, 21, 26, 31, 36, 42, 47, 52, 57, 63, 63, 57, 47, 31, 21, 0),
('ChIJ_8wVL-hJXhMRQb31tkPLz48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 44, 51, 51, 76, 61, 0, 0, 28, 30, 30, 28, 23, 0, 0),
('ChIJ_9gdMOhJXhMRcZAwfbyb4MQ', 0, 0, 0, 0, 0, 0, 0, 0, 9, 15, 21, 25, 25, 21, 15, 12, 15, 31, 50, 56, 40, 18, 6, 0),
('ChIJ_9GKeS9JXhMRGlmhr9oWmks', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 16, 20, 45, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_aH-l91JXhMRTIMZDyA117U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 58, 71, 100, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_cM58sE3XhMRCHVgkJkjUeQ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ChIJ_T3emuBJXhMRFbT9YL3j32E', 4, 1, 1, 1, 0, 0, 0, 5, 18, 35, 55, 71, 79, 77, 67, 58, 54, 58, 67, 74, 72, 60, 42, 23),
('ChIJ__q6ENxJXhMR4K6jWL3W7Jw', 0, 0, 0, 0, 0, 0, 0, 5, 23, 57, 87, 93, 81, 57, 33, 22, 23, 28, 33, 33, 29, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`) VALUES
(1, 'strikecy', 'rnicolaouceng@gmail.com', '$2a$08$7VLZYUBY04.LDUs4ddeEPeXu2zNPr.CIxeFD3CLZHxbrIk9NgHsRe', 0),
(2, 'str', 'rnicolaouceng@gmail.com', 'strike123', 1),
(3, 'kous', 'kous@gmail.com', '$2a$08$JlokQ6i4LCV9tH7rnNHkA.GNcGYEBoqcNj4VYNJI7d1bSiNLCqcAC', 0),
(4, 'Nikoleta', 'nik@gmail.com', '$2a$08$uCze/X1xjDEvfMSf2uNfMeU84C657txjQkFKjoYH70bnv77Iu8KBK', 0),
(5, 'str1', 'asda@gmail.com', '$2a$08$t657gRcSPImb7FBhY3fFyeb/yCAJ1HHfY44IrBZPp70lzYVNh1jsS', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pois`
--
ALTER TABLE `pois`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pois_accounting`
--
ALTER TABLE `pois_accounting`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_atm`
--
ALTER TABLE `pois_atm`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_bakery`
--
ALTER TABLE `pois_bakery`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_bank`
--
ALTER TABLE `pois_bank`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_bar`
--
ALTER TABLE `pois_bar`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_beauty_salon`
--
ALTER TABLE `pois_beauty_salon`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_book_store`
--
ALTER TABLE `pois_book_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_cafe`
--
ALTER TABLE `pois_cafe`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_car_dealer`
--
ALTER TABLE `pois_car_dealer`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_car_repair`
--
ALTER TABLE `pois_car_repair`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_car_wash`
--
ALTER TABLE `pois_car_wash`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_casino`
--
ALTER TABLE `pois_casino`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_church`
--
ALTER TABLE `pois_church`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_city_hall`
--
ALTER TABLE `pois_city_hall`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_clothing_store`
--
ALTER TABLE `pois_clothing_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_convenience_store`
--
ALTER TABLE `pois_convenience_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_dentist`
--
ALTER TABLE `pois_dentist`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_department_store`
--
ALTER TABLE `pois_department_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_doctor`
--
ALTER TABLE `pois_doctor`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_drugstore`
--
ALTER TABLE `pois_drugstore`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_electronics_store`
--
ALTER TABLE `pois_electronics_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_establishment`
--
ALTER TABLE `pois_establishment`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_finance`
--
ALTER TABLE `pois_finance`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_food`
--
ALTER TABLE `pois_food`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_friday`
--
ALTER TABLE `pois_friday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_furniture_store`
--
ALTER TABLE `pois_furniture_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_general_contractor`
--
ALTER TABLE `pois_general_contractor`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_grocery_or_supermarket`
--
ALTER TABLE `pois_grocery_or_supermarket`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_gym`
--
ALTER TABLE `pois_gym`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_hair_care`
--
ALTER TABLE `pois_hair_care`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_hardware_store`
--
ALTER TABLE `pois_hardware_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_health`
--
ALTER TABLE `pois_health`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_home_goods_store`
--
ALTER TABLE `pois_home_goods_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_hospital`
--
ALTER TABLE `pois_hospital`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_jewelry_store`
--
ALTER TABLE `pois_jewelry_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_laundry`
--
ALTER TABLE `pois_laundry`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_lawyer`
--
ALTER TABLE `pois_lawyer`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_liquor_store`
--
ALTER TABLE `pois_liquor_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_local_government_office`
--
ALTER TABLE `pois_local_government_office`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_lodging`
--
ALTER TABLE `pois_lodging`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_meal_delivery`
--
ALTER TABLE `pois_meal_delivery`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_meal_takeaway`
--
ALTER TABLE `pois_meal_takeaway`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_monday`
--
ALTER TABLE `pois_monday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_moving_company`
--
ALTER TABLE `pois_moving_company`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_night_club`
--
ALTER TABLE `pois_night_club`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_park`
--
ALTER TABLE `pois_park`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_pet_store`
--
ALTER TABLE `pois_pet_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_pharmacy`
--
ALTER TABLE `pois_pharmacy`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_physiotherapist`
--
ALTER TABLE `pois_physiotherapist`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_place_of_worship`
--
ALTER TABLE `pois_place_of_worship`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_post_office`
--
ALTER TABLE `pois_post_office`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_restaurant`
--
ALTER TABLE `pois_restaurant`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_saturday`
--
ALTER TABLE `pois_saturday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_school`
--
ALTER TABLE `pois_school`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_shoe_store`
--
ALTER TABLE `pois_shoe_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_shopping_mall`
--
ALTER TABLE `pois_shopping_mall`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_spa`
--
ALTER TABLE `pois_spa`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_storage`
--
ALTER TABLE `pois_storage`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_store`
--
ALTER TABLE `pois_store`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_sunday`
--
ALTER TABLE `pois_sunday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_supermarket`
--
ALTER TABLE `pois_supermarket`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_thursday`
--
ALTER TABLE `pois_thursday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_tourist_attraction`
--
ALTER TABLE `pois_tourist_attraction`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_town_square`
--
ALTER TABLE `pois_town_square`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_travel_agency`
--
ALTER TABLE `pois_travel_agency`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_tuesday`
--
ALTER TABLE `pois_tuesday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `pois_wednesday`
--
ALTER TABLE `pois_wednesday`
  ADD PRIMARY KEY (`POIs_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
