-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 07, 2025 alle 20:06
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooleey`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `FileName` text NOT NULL,
  `ProductName` text NOT NULL,
  `Category` text NOT NULL,
  `Series` text NOT NULL,
  `Packaging` text NOT NULL,
  `SkinTypes` text NOT NULL,
  `Ingredients` text NOT NULL,
  `ProductEfficacy` text NOT NULL,
  `Video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`ProductID`, `FileName`, `ProductName`, `Category`, `Series`, `Packaging`, `SkinTypes`, `Ingredients`, `ProductEfficacy`, `Video`) VALUES
(1, 'dh-ws-cooleey-absolute-radiance-breakout-oil.png', 'Cooleey Absolute Radiance Breakout Oil', 'Daily Home', 'Whitening Series', '18ml', 'dry, mixed, especially rough and dull skin', 'German coenzyme Q10 (ubiquinone), American jojoba seed oil, etc.', 'Super strong antioxidant, cell anti-aging, super penetration, no residue, oil-based skin care, essential for anti-aging', 'dh-ws-cooleey-absolute-radiance-breakout-oil.mp4'),
(2, 'dh-cs-cooleey-absolute-radiant-purifying-cleanser.png', 'Cooleey Absolute Radiant Purifying Cleanser', 'Daily Home', 'Cleansing Series', '120ml', 'All skin types', '15 amino acids, Japanese evening cherry blossom extract, patented ingredient niacinamide, 3 plant extracts xylitol, silver ear extract, etc.', 'deep cleansing, anti-oxidation, anti-aging, barrier repair, moisturizing', ''),
(3, 'dh-faws-cooleey-absolute-radiance-vitality-essence.png', 'Cooleey Absolute Radiance Vitality Essence', 'Daily Home', 'Firming and Anti-wrinkle Series', '5ml×5', 'All skin types, especially sagging, wrinkled, and mature skin', 'Peruvian black orchid (lily lip orchid extract), blue copper peptide (tripeptide-1 copper), Swiss biomimetic cono peptide (arginine/lysine peptide), hydrolyzed soy protein, triple hyaluronic acid', 'collagen regeneration, firming and plumping, ultimate anti-aging experience, anti-aging, revitalizing radiance', 'dh-faws-cooleey-absolute-radiance-vitality-essence.mp4'),
(4, 'dh-pms-cooleey-aqua-brightening-essence-cushion-bb.jpg', 'Cooleey Aqua Brightening Essence Cushion Bb', 'Daily Home', 'Perfect Makeup Series', '15gx2', 'All skin types', 'B5 (panthenol), Indian Solanum azedarach root essential oil, Anxinjia, Bitter orange flower essential oil', 'Freeze skin\'s translucent and shimmering feeling, make-up does not look fake, 8 ', ''),
(5, 'dh-pms-cooleey-radiance-revitalizing-serum-foundation.jpg', 'Cooleey Radiance Revitalizing Serum Foundation', 'Daily Home', 'Perfect Makeup Series', '35ml', 'All skin types', 'Seaweed polysaccharide + quintuple ceramide, PatcH2O patented moisturizing technology - large and small molecular polysaccharides, panthenol, Italian immortelle anti-inflammatory and stress-relieving essence', 'Transparent oxygen makeup, delicate shimmer on the face, long-lasting makeup without floating, sticking or drying', ''),
(6, 'dh-aas-cooleey-absolute-radiance-revitalizing-essence-gel.png', 'Cooleey Absolute Radiance Revitalizing Essence Gel', 'Daily Home', 'Anti-Aging Series', '5ml×5', 'All skin types', 'Hyaluronic acid (sodium hyaluronate), plant extract allantoin, lactic acid, etc.', 'Deep hydration, repair, skin renewal agent', 'dh-aas-cooleey-absolute-radiance-revitalizing-essence-gel.mp4'),
(7, 'dh-ms-cooleey-absolute-radiance-energy-fortifying-lotion.png\r\n', 'Cooleey Absolute Radiance Energy Fortifying Lotion', 'Daily Home', 'Moisturizing Series', '120ml', 'All skin types, especially sensitive skin, inflammatory skin, dry and fragile skin', 'Fission yeast fermentation product filtrate, 4D hyaluronic acid*, patented plant hyaluronic acid (European water chestnut bud extract), patented ingredient Poetic Skin Repair*, various natural plant extracts, South African honeysuckle leaf/stem extract, Korean ceramide NP, etc.', 'Three-dimensional hydration and moisture retention, repair inflammation and firming, anti-aging', 'dh-ms-cooleey-absolute-radiance-energy-fortifying-lotion.mp4'),
(8, 'dh-ps-cooleey-absolute-radiance-intensive-activating-cream.png', 'Cooleey Absolute Radiance Intensive Activating Cream', 'Daily Home', 'Protection Series', '50ml', 'All skin types, especially sagging and fine-line skin', 'Swiss apple cell culture extract, grapefruit cell extract, butter, wild bean oil, avocado oil, gardenia fruit extract, etc.', 'Anti-aging, skin tone improvement, skin protection', ''),
(9, 'dh-aas-cooleey-absolute-rare-beauty-anti-wrinkle-concentrate.png', 'Cooleey Absolute Rare Beauty Anti Wrinkle Concentrate', 'Daily Home', 'Anti-aging Series', '5ml×5', 'All skin types, especially sagging, fine lines, and mature skin', 'Patented ingredient Anxinjia, 5-fold anti-wrinkle complex peptide, Swiss biomimetic conotoxin (arginine/lysine peptides), 3-fold Centella asiatica complex, blue copper peptide (tripeptide-1 copper), patented ingredient Italian sunflower extract (oil phosphoinositol choline salt),\r\nFrench Eryngium maritime callus culture, French sea fennel callus culture, Swiss apple cell culture extract\r\n', 'Firming and plumping, repairing, anti-allergic, improving skin color', ''),
(10, 'dh-faws-cooleey-absolute-luxurious-intensive-all-in-one-mask.png', 'Cooleey Absolute Luxurious Intensive All In One Mask', 'Daily Home', 'Firming and Anti-wrinkle Series', '30mlx5', 'All skin types, especially sagging and fine-lined skin', 'Sodium guaiac azulene sulfonate, trehalose, anti-wrinkle complex peptide*, French Eryngium marinum callus culture filtrate, French sea fennel callus culture filtrate, Swiss apple fruit cell culture extract, Opuntia ficus-indica stem extract, hyaluronic acid (sodium hyaluronate)', 'Repair sensitive skin, anti-aging, anti-oxidation, brighten skin tone, moisturize and reduce moisture', ''),
(11, 'dh-faws-cooleey-absolute-rare-beauty-vitality-anti-aging-eye-mask.jpg', 'Cooleey Absolute Rare Beauty Vitality Anti Aging Eye Mask', 'Daily Home', 'Firming and Anti-wrinkle Series', '8mlx5', 'All eye skin, especially loose and fine-line skin', 'Swiss biomimetic conotoxin (arginine/lysine), eye bag complex, caffeine, patented ingredient niacinamide, Swiss apple fruit cell culture extract, French sea fennel callus culture filtrate, French Eryngium marinum callus culture filtrate, etc.', 'Stretch eye wrinkles, reduce dark circles, tighten eye bags', ''),
(12, 'dh-ws-cooleey-absolute-radiance-intensive-anti-aging-emulsion-moisture.png', 'Cooleey Absolute Radiance Intensive Anti Aging Emulsion Moisture', 'Daily Home', 'Whitening Series', '100ml', 'All skin types, suitable for dry and fragile skin', 'Fission yeast fermentation product filtrate, hydrolyzed bean shell protein, plant boscin (European water chestnut bud extract), ectoine (Egyptian salt lake tetrahydromethylpyrimidine carboxylic acid), patented ingredient niacinamide, 13 kinds of plant extracts*, etc.', 'Anti-aging, barrier repair, whitening', ''),
(13, 'dh-faws-cooleey-absolute-radiance-vitality-intensive-anti-aging-eye-cream.png', 'Cooleey Absolute Radiance Vitality Intensive Anti Aging Eye Cream', 'Daily Home', 'Firming and Anti-wrinkle Series', '50ml', 'All skin types, especially sagging, wrinkled, and mature skin', 'Fission fermentation product filtrate, patented ingredient niacinamide, Swiss biomimetic cono peptide (arginine/lysine peptide), (animal) umbilical cord extract, Swiss apple fruit cell culture extract, anti-wrinkle complex peptide, French Eryngium callus culture, patented ingredient Linlan Runlu, French sea fennel callus culture', 'Lighten eye wrinkles, eliminate edema, and lighten dark circles around the eyes', 'faws-cooleey-absolute-radiance-vitality-intensive-anti-aging-eye-cream.mp4'),
(14, 'dh-faws-cooleey-absolute-24-hour-radiance-vitality-intensive-anti-wrinkle-cream.png', 'Cooleey Absolute 24 Hour Radiance Vitality Intensive Anti Wrinkle Cream', 'Daily Home', 'Firming and Anti-wrinkle Series', '50ml', 'All skin types, especially sagging, wrinkled, and mature skin', 'Patented ingredient Deminshu, Korean 6-fold ceramide, fibronectin, 5-fold anti-wrinkle complex peptide, 3-fold ketoglutarate*', 'Anti-wrinkle, firming and lifting, repairing inflammation, moisture-locking magic', 'dh-faws-cooleey-absolute-24-hour-radiance-vitality-intensive-anti-wrinkle-cream.mp4'),
(15, 'he-ses-cooleey-activated-corrective-serum.png', 'Cooleey Activated Corrective Serum', 'High-end Efficacy', 'Selected Essence Series', '30ml', 'All skin types, especially fragile, sensitive, and dehydrated skin', 'Chamomile extract, various ceramides, aloe extract, sodium hyaluronate, Italian immortelle extract', 'Soothes and moisturizes sensitive skin, increases the thickness of the sebum membrane, and gradually restores the skin to health and vitality', ''),
(16, 'he-ses-cooleey-radiance-revitalizing-serum.png', 'Cooleey Radiance Revitalizing Serum', 'High-end Efficacy', 'Selected Essence Series', '30ml', 'All skin types, especially those with rough or uneven skin tone', 'Niacinamide, hydrolyzed bean shell protein, plant boscin (European water chestnut bud extract), ectoine', 'Helps improve the rough and dull skin condition, making the skin translucent, shiny, bright and even', ''),
(17, 'he-lcs-cooleey-precious-caviar-anti-age-serum.png', 'Cooleey Precious Caviar Anti Age Serum', 'High-end Efficacy', 'Luxury Caviar Series', '30ml', 'All skin types, especially sagging, wrinkled, and mature skin', 'Caviar extract, meadowfoam seed oil, Chlorella vulgaris, EPS marine extract (EPS Seafill)', 'Maintains stability and brightens, reduces wrinkles and tightens, and delays aging', ''),
(18, 'he-lcs-cooleey-caviar-super-luster-lifting-cream.jpg', 'Cooleey Caviar Super Luster Lifting Cream', 'High-end Efficacy', 'Luxury Caviar Series', '50g', 'All skin types, especially loose, fragile, and mature skin', 'Caviar extract, Shea butter, Meadowfoam seed oil, EPS Seafill', 'Anti-oxidation, even skin tone, improve dullness, tighten and lift, restore skin radiance', ''),
(19, 'he-ses-cooleey-anti-age-firming-concentrated-serum.png', 'Cooleey Anti Age Firming Concentrated Serum', 'High-end Efficacy', 'Selected Essence Series', '30ml', 'All skin types, especially sagging and wrinkled mature skin', 'Anti-wrinkle complex peptide*, French Eryngium marinum callus culture filtrate, French sea fennel callus culture filtrate, Swiss apple fruit cell culture extract, European Fagus sylvatica bud extract', 'Promotes collagen regeneration, firming and plumping, reduces wrinkles, and revitalizes the skin to a youthful state', ''),
(20, 'he-lcs-cooleey-caviar-revitalizing-anti-wrinkle-cream.jpg', 'Cooleey Caviar Revitalizing Anti Wrinkle Cream', 'High-end Efficacy', 'Luxury Caviar Series', '50g', 'All skin types, especially sagging, wrinkled, and mature skin\r\n', 'Caviar extract, hyaluronic acid, LUMISKIN, EPS Seafill', 'Anti-wrinkle and anti-aging, instant firming, improving sagging, activating skin aging cells, and revitalizing the skin', ''),
(21, 'he-aass-cooleey-absolute-double-serum-concentrated-infusion.png', 'Cooleey Absolute Double Serum Concentrated Infusion', 'High-end Efficacy', 'Ultimate Anti-Aging Serum Series', '12mlx4', 'All skin types, especially sagging, wrinkled, and mature skin', 'Multi-molecular hyaluronic acid, including sodium hyaluronate, hydrolyzed', 'Strongly supplement collagen, promote self-synthesis of collagen, increase collagen fiber support, reduce lines, and tighten and plump skin', 'he-aass-cooleey-absolute-double-serum-concentrated-infusion.mp4'),
(22, 'mp-cs-cooleey-mild-intense-cleansing-oil.jpg', 'Cooleey Mild Intense Cleansing Oil', 'Medical Products', 'Cleansing Series', '200ml', 'Any skin type, suitable for eye, lip and facial makeup removal', 'Jojoba seed oil, grape seed oil, calendula extract, lotus extract, β-carrot extract', 'Gentle and light makeup removal, easy and clean removal of eyebrow, eye and lip makeup, while removing base makeup, it is more moisturizing and brightening the skin', ''),
(23, 'mp-pwls-cooleey-revitalizing-skin-boosting-serum.jpg', 'Cooleey Revitalizing Skin Boosting Serum', 'Medical Products', 'Professional Water Light Series', '5ml×10', 'All skin types, especially dehydrated skin and mature skin', 'Sodium hyaluronate, glutathione, 5-fold anti-wrinkle complex peptide*, Swiss biomimetic conotoxin (arginine/lysine peptide)', 'A one-time sterile solution used to improve skin dehydration, uneven skin tone, sagging and aging, making the skin crystal clear.', ''),
(24, 'mp-paas-cooleey-anti-age-firming-concentrated-serum.jpg', 'Cooleey Anti Age Firming Concentrated Serum', 'Medical Products', 'Professional Anti-aging Series', '5mlx10', 'All skin types, especially sagging, wrinkled, and mature skin', 'Blue copper peptide (tripeptide-1 copper), Swiss biomimetic cono peptide (arginine/lysine peptide), hydrolyzed soy protein, triple hyaluronic acid', 'This product is used for professional care to improve skin quality, collagen regeneration, firming and plumping, reducing wrinkles, and making the skin revitalized and radiant', ''),
(25, 'mp-ws-cooleey-orchid-radiance-vitality-essence-cream.jpg', 'Cooleey Orchid Radiance Vitality Essence Cream', 'Medical Products', 'Whitening Series', '100ml', 'All skin types, especially dehydrated skin and mature skin', 'Black orchid extract, stem cells of unripe grapes (grape fruit meristem cells), vitamin A, peptides, lotus and beech bud extracts', 'Luxurious intensive mask Black orchid mask\r\nPrevents, repairs damage and restores cells to a youthful state by regulating reduction, immune and inflammatory processes and awakening dormant cells.\r\nBLACK ORKID MASK is the best answer to correcting signs of aging.\r\nImprove skin health, reduce inflammation, promote the reawakening of dormant cells, increase collagen content, and make the skin brighter.\r\n', ''),
(26, 'mp-praws-cooleey-absolute-radiant-vitality-stabilizing-pre-essence.png', 'Cooleey Absolute Radiant Vitality Stabilizing Pre-Essence', 'Medical Products', 'Professional repair anti-wrinkle series', '5mlx5', 'All skin types, especially sensitive skin, inflammatory skin, dry and fragile skin', 'Italian Immortelle extract, small molecule oligopeptide-1, hydrolyzed soy protein, oat glucan*, Korean patented ingredient ginseng root extract, French roselle flower extract, French baobab fruit extract, white fan bean seed extract', 'A one-time sterile solution for improving and repairing sensitivity, inflammation, reducing wrinkles, anti-oxidation and brightening, making the skin healthy and shiny', 'mp-praws-cooleey-absolute-radiant-vitality-stabilizing-pre-essence.mp4');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
