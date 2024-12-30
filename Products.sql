-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 30, 2024 alle 01:10
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
-- Struttura della tabella `Products`
--

CREATE TABLE `products` (
  `Product Name` text NOT NULL,
  `Category` text NOT NULL,
  `Series` text NOT NULL,
  `File Name` text NOT NULL,
  `Packaging` text NOT NULL,
  `Skin Type` text NOT NULL,
  `Ingredients` text NOT NULL,
  `Product Efficacy` text NOT NULL,
  `Video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Products`
--

INSERT INTO `Products` (`Product Name`, `Category`, `Series`, `File Name`, `Packaging`, `Skin Type`, `Ingredients`, `Product Efficacy`, `Video`) VALUES
('Cooleey Absolute Radiance Revitalizing Essence Gel', 'Daily Home', 'Anti-Aging Series', 'dh-aas-cooleey-absolute-radiance-revitalizing-essence-gel.png', '5ml×5', 'All skin types', 'Hyaluronic acid (sodium hyaluronate), plant extract allantoin, lactic acid, etc.', 'Deep hydration, repair, skin renewal agent', 'dh-aas-cooleey-absolute-radiance-revitalizing-essence-gel.mp4'),
('Cooleey Absolute Rare Beauty Anti Wrinkle Concentrate', 'Daily Home', 'Anti-aging Series', 'dh-aas-cooleey-absolute-rare-beauty-anti-wrinkle-concentrate.png', '5ml×5', 'All skin types, especially sagging, fine lines, and mature skin', 'Patented ingredient Anxinjia, 5-fold anti-wrinkle complex peptide, Swiss biomimetic conotoxin (arginine/lysine peptides), 3-fold Centella asiatica complex, blue copper peptide (tripeptide-1 copper), patented ingredient Italian sunflower extract (oil phosphoinositol choline salt),\r\nFrench Eryngium maritime callus culture, French sea fennel callus culture, Swiss apple cell culture extract\r\n', 'Firming and plumping, repairing, anti-allergic, improving skin color', ''),
('Cooleey Absolute Radiant Purifying Cleanser', 'Daily House', 'Cleansing Series', 'dh-cs-cooleey-absolute-radiant-purifying-cleanser.png', '120ml', 'All skin types', '15 amino acids, Japanese evening cherry blossom extract, patented ingredient niacinamide, 3 plant extracts xylitol, silver ear extract, etc.', 'deep cleansing, anti-oxidation, anti-aging, barrier repair, moisturizing', ''),
('Cooleey Absolute 24 Hour Radiance Vitality Intensive Anti Wrinkle Cream', 'Daily Home', 'Firming and Anti-wrinkle Series', 'dh-faws-cooleey-absolute-24-hour-radiance-vitality-intensive-anti-wrinkle-cream.png', '50ml', 'All skin types, especially sagging, wrinkled, and mature skin', 'Patented ingredient Deminshu, Korean 6-fold ceramide, fibronectin, 5-fold anti-wrinkle complex peptide, 3-fold ketoglutarate*', 'Anti-wrinkle, firming and lifting, repairing inflammation, moisture-locking magic', 'dh-faws-cooleey-absolute-24-hour-radiance-vitality-intensive-anti-wrinkle-cream.mp4'),
('Cooleey Absolute Luxurious Intensive All In One Mask', 'Daily Home', 'Firming and Anti-wrinkle Series', 'dh-faws-cooleey-absolute-luxurious-intensive-all-in-one-mask.png', '30mlx5', 'All skin types, especially sagging and fine-lined skin', 'Sodium guaiac azulene sulfonate, trehalose, anti-wrinkle complex peptide*, French Eryngium marinum callus culture filtrate, French sea fennel callus culture filtrate, Swiss apple fruit cell culture extract, Opuntia ficus-indica stem extract, hyaluronic acid (sodium hyaluronate)', 'Repair sensitive skin, anti-aging, anti-oxidation, brighten skin tone, moisturize and reduce moisture', ''),
('Cooleey Absolute Radiance Vitality Essence', 'Daily Home', 'Firming and Anti-wrinkle Series', 'dh-faws-cooleey-absolute-radiance-vitality-essence.png', '5ml×5', 'All skin types, especially sagging, wrinkled, and mature skin', 'Peruvian black orchid (lily lip orchid extract), blue copper peptide (tripeptide-1 copper), Swiss biomimetic cono peptide (arginine/lysine peptide), hydrolyzed soy protein, triple hyaluronic acid', 'collagen regeneration, firming and plumping, ultimate anti-aging experience, anti-aging, revitalizing radiance', 'dh-faws-cooleey-absolute-radiance-vitality-essence.mp4'),
('Cooleey Absolute Rare Beauty Vitality Anti Aging Eye Mask', 'Daily Home', 'Firming and Anti-wrinkle Series', 'dh-faws-cooleey-absolute-rare-beauty-vitality-anti-aging-eye-mask', '8mlx5', 'All eye skin, especially loose and fine-line skin', 'Swiss biomimetic conotoxin (arginine/lysine), eye bag complex, caffeine, patented ingredient niacinamide, Swiss apple fruit cell culture extract, French sea fennel callus culture filtrate, French Eryngium marinum callus culture filtrate, etc.', 'Stretch eye wrinkles, reduce dark circles, tighten eye bags', ''),
('Cooleey Absolute Radiance Energy Fortifying Lotion', 'Daily Home', 'Moisturizing Series', 'dh-ms-cooleey-absolute-radiance-energy-fortifying-lotion.png\r\n', '120ml', 'All skin types, especially sensitive skin, inflammatory skin, dry and fragile skin', 'Fission yeast fermentation product filtrate, 4D hyaluronic acid*, patented plant hyaluronic acid (European water chestnut bud extract), patented ingredient Poetic Skin Repair*, various natural plant extracts, South African honeysuckle leaf/stem extract, Korean ceramide NP, etc.', 'Three-dimensional hydration and moisture retention, repair inflammation and firming, anti-aging', 'dh-ms-cooleey-absolute-radiance-energy-fortifying-lotion.mp4'),
('Cooleey Aqua Brightening Essence Cushion Bb', 'Daily Home', 'Perfect Makeup Series', 'dh-pms-cooleey-aqua-brightening-essence-cushion-bb.png', '15gx2', 'All skin types', 'B5 (panthenol), Indian Solanum azedarach root essential oil, Anxinjia, Bitter orange flower essential oil', 'Freeze skin\'s translucent and shimmering feeling, make-up does not look fake, 8 ', ''),
('Cooleey Radiance Revitalizing Serum Foundation', 'Daily Home', 'Perfect Makeup Series', 'dh-pms-cooleey-radiance-revitalizing-serum-foundation.png', '35ml', 'All skin types', 'Seaweed polysaccharide + quintuple ceramide, PatcH2O patented moisturizing technology - large and small molecular polysaccharides, panthenol, Italian immortelle anti-inflammatory and stress-relieving essence', 'Transparent oxygen makeup, delicate shimmer on the face, long-lasting makeup without floating, sticking or drying', ''),
('Cooleey Absolute Radiance Intensive Activating Cream', 'Daily Home', 'Protection Series', 'dh-ps-cooleey-absolute-radiance-intensive-activating-cream.png', '50ml', 'All skin types, especially sagging and fine-line skin', 'Swiss apple cell culture extract, grapefruit cell extract, butter, wild bean oil, avocado oil, gardenia fruit extract, etc.', 'Anti-aging, skin tone improvement, skin protection', ''),
('Cooleey Absolute Radiance Breakout Oil', 'Daily Home', 'Whitening Series', 'dh-ws-cooleey-absolute-radiance-breakout-oil.png', '18ml', 'dry, mixed, especially rough and dull skin', 'German coenzyme Q10 (ubiquinone), American jojoba seed oil, etc.', 'Super strong antioxidant, cell anti-aging, super penetration, no residue, oil-based skin care, essential for anti-aging', 'dh-ws-cooleey-absolute-radiance-breakout-oil.mp4'),
('Cooleey Absolute Radiance Intensive Anti Aging Emulsion Moisture', 'Daily Home', 'Whitening Series', 'dh-ws-cooleey-absolute-radiance-intensive-anti-aging-emulsion-moisture.png', '100ml', 'All skin types, suitable for dry and fragile skin', 'Fission yeast fermentation product filtrate, hydrolyzed bean shell protein, plant boscin (European water chestnut bud extract), ectoine (Egyptian salt lake tetrahydromethylpyrimidine carboxylic acid), patented ingredient niacinamide, 13 kinds of plant extracts*, etc.', 'Anti-aging, barrier repair, whitening', ''),
('Cooleey Absolute Radiance Vitality Intensive Anti Aging Eye Cream', 'Daily Home', 'Firming and Anti-wrinkle Series', 'faws-cooleey-absolute-radiance-vitality-intensive-anti-aging-eye-cream.png', '50ml', 'All skin types, especially sagging, wrinkled, and mature skin', 'Fission fermentation product filtrate, patented ingredient niacinamide, Swiss biomimetic cono peptide (arginine/lysine peptide), (animal) umbilical cord extract, Swiss apple fruit cell culture extract, anti-wrinkle complex peptide, French Eryngium callus culture, patented ingredient Linlan Runlu, French sea fennel callus culture', 'Lighten eye wrinkles, eliminate edema, and lighten dark circles around the eyes', 'faws-cooleey-absolute-radiance-vitality-intensive-anti-aging-eye-cream.mp4'),
('Cooleey Absolute Double Serum Concentrated Infusion', 'High-end Efficacy', 'Ultimate Anti-Aging Serum Series', 'he-aass-cooleey-absolute-double-serum-concentrated-infusion.png', '12mlx4', 'All skin types, especially sagging, wrinkled, and mature skin', 'Multi-molecular hyaluronic acid, including sodium hyaluronate, hydrolyzed', 'Strongly supplement collagen, promote self-synthesis of collagen, increase collagen fiber support, reduce lines, and tighten and plump skin', 'he-aass-cooleey-absolute-double-serum-concentrated-infusion.mp4'),
('Cooleey Caviar Revitalizing Anti Wrinkle Cream', 'High-end Efficacy', 'Luxury Caviar Series', 'he-lcs-cooleey-caviar-revitalizing-anti-wrinkle-cream.png', '50g', 'All skin types, especially sagging, wrinkled, and mature skin\r\n', 'Caviar extract, hyaluronic acid, LUMISKIN, EPS Seafill', 'Anti-wrinkle and anti-aging, instant firming, improving sagging, activating skin aging cells, and revitalizing the skin', ''),
('Cooleey Caviar Super Luster Lifting Cream', 'High-end Efficacy', 'Luxury Caviar Series', 'he-lcs-cooleey-caviar-super-luster-lifting-cream.png', '50g', 'All skin types, especially loose, fragile, and mature skin', 'Caviar extract, Shea butter, Meadowfoam seed oil, EPS Seafill', 'Anti-oxidation, even skin tone, improve dullness, tighten and lift, restore skin radiance', ''),
('Cooleey Precious Caviar Anti Age Serum', 'High-end Efficacy', 'Luxury Caviar Series', 'he-lcs-cooleey-precious-caviar-anti-age-serum.png', '30ml', 'All skin types, especially sagging, wrinkled, and mature skin', 'Caviar extract, meadowfoam seed oil, Chlorella vulgaris, EPS marine extract (EPS Seafill)', 'Maintains stability and brightens, reduces wrinkles and tightens, and delays aging', ''),
('Cooleey Activated Corrective Serum', 'High-end Efficacy', 'Selected Essence Series', 'he-ses-cooleey-activated-corrective-serum.png', '30ml', 'All skin types, especially fragile, sensitive, and dehydrated skin', 'Chamomile extract, various ceramides, aloe extract, sodium hyaluronate, Italian immortelle extract', 'Soothes and moisturizes sensitive skin, increases the thickness of the sebum membrane, and gradually restores the skin to health and vitality', ''),
('Cooleey Anti Age Firming Concentrated Serum', 'High-end Efficacy', 'Selected Essence Series', 'he-ses-cooleey-anti-age-firming-concentrated-serum.png', '30ml', 'All skin types, especially sagging and wrinkled mature skin', 'Anti-wrinkle complex peptide*, French Eryngium marinum callus culture filtrate, French sea fennel callus culture filtrate, Swiss apple fruit cell culture extract, European Fagus sylvatica bud extract', 'Promotes collagen regeneration, firming and plumping, reduces wrinkles, and revitalizes the skin to a youthful state', ''),
('Cooleey Radiance Revitalizing Serum', 'High-end Efficacy', 'Selected Essence Series', 'he-ses-cooleey-radiance-revitalizing-serum.png', '30ml', 'All skin types, especially those with rough or uneven skin tone', 'Niacinamide, hydrolyzed bean shell protein, plant boscin (European water chestnut bud extract), ectoine', 'Helps improve the rough and dull skin condition, making the skin translucent, shiny, bright and even', ''),
('Cooleey Mild Intense Cleansing Oil', 'Medical Product', 'Cleansing Series', 'mp-cs-cooleey-mild-intense-cleansing-oil.png', '200ml', 'Any skin type, suitable for eye, lip and facial makeup removal', 'Jojoba seed oil, grape seed oil, calendula extract, lotus extract, β-carrot extract', 'Gentle and light makeup removal, easy and clean removal of eyebrow, eye and lip makeup, while removing base makeup, it is more moisturizing and brightening the skin', ''),
('Cooleey Anti Age Firming Concentrated Serum', 'Medical Products', 'Professional Anti-aging Series', 'mp-paas-cooleey-anti-age-firming-concentrated-serum.png', '5mlx10', 'All skin types, especially sagging, wrinkled, and mature skin', 'Blue copper peptide (tripeptide-1 copper), Swiss biomimetic cono peptide (arginine/lysine peptide), hydrolyzed soy protein, triple hyaluronic acid', 'This product is used for professional care to improve skin quality, collagen regeneration, firming and plumping, reducing wrinkles, and making the skin revitalized and radiant', ''),
('Cooleey Absolute Radiant Vitality Stabilizing Pre-Essence', 'Medical Products', 'Professional repair anti-wrinkle series', 'mp-praws-cooleey-absolute-radiant-vitality-stabilizing-pre-essence.png', '5mlx5', 'All skin types, especially sensitive skin, inflammatory skin, dry and fragile skin', 'Italian Immortelle extract, small molecule oligopeptide-1, hydrolyzed soy protein, oat glucan*, Korean patented ingredient ginseng root extract, French roselle flower extract, French baobab fruit extract, white fan bean seed extract', 'A one-time sterile solution for improving and repairing sensitivity, inflammation, reducing wrinkles, anti-oxidation and brightening, making the skin healthy and shiny', 'mp-praws-cooleey-absolute-radiant-vitality-stabilizing-pre-essence.mp4'),
('Cooleey Revitalizing Skin Boosting Serum', 'Medical Products', 'Professional Water Light Series', 'mp-pwls-cooleey-revitalizing-skin-boosting-serum.png', '5ml×10', 'All skin types, especially dehydrated skin and mature skin', 'Sodium hyaluronate, glutathione, 5-fold anti-wrinkle complex peptide*, Swiss biomimetic conotoxin (arginine/lysine peptide)', 'A one-time sterile solution used to improve skin dehydration, uneven skin tone, sagging and aging, making the skin crystal clear.', ''),
('Cooleey Orchid Radiance Vitality Essence Cream', 'Medical Products', 'Whitening Series', 'mp-ws-cooleey-orchid-radiance-vitality-essence-cream.png', '100ml', 'All skin types, especially dehydrated skin and mature skin', 'Black orchid extract, stem cells of unripe grapes (grape fruit meristem cells), vitamin A, peptides, lotus and beech bud extracts', 'Luxurious intensive mask Black orchid mask\r\nPrevents, repairs damage and restores cells to a youthful state by regulating reduction, immune and inflammatory processes and awakening dormant cells.\r\nBLACK ORKID MASK is the best answer to correcting signs of aging.\r\nImprove skin health, reduce inflammation, promote the reawakening of dormant cells, increase collagen content, and make the skin brighter.\r\n', '');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`File Name`(100));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
