/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : zonahe

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 14/11/2019 07:27:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mountains
-- ----------------------------
DROP TABLE IF EXISTS `mountains`;
CREATE TABLE `mountains`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `altitude` int(255) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wikitablem4p_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mountains
-- ----------------------------
INSERT INTO `mountains` VALUES (1, 'Aconcagua', 6960, 'https://en.wikipedia.org/wiki/Aconcagua', 'Aconcagua is the highest mountain\noutside of Asia, being the highest in both the Southern and Western\nHemispheres with a summit elevation of 6,960.8 metres (22,837 ft). It is\nlocated in the Principal Cordillera of the Andes mountain range, in the\nMendoza Province, Argentina, and lies 112 km (70 mi) northwest of its capital,\nthe city of Mendoza, about five km (3.1 mi) from San Juan Province and 15 km\n(9.3 mi) from the international border with Chile. The mountain itself lies\nentirely within Argentina, immediately east of Argentina\'s border with Chile.', '005HmCZIly1fz2n32fqpxj30qo1407d0.jpg');
INSERT INTO `mountains` VALUES (2, 'Adams Peak', 2243, 'https://en.wikipedia.org/wiki/Adam%27s_Peak', 'Adam\'s Peak is a 2,243 m (7,359 ft) tall conical mountain located in\ncentral Sri Lanka. It is well known for the Sri Pada , i.e., \"sacred\nfootprint\", a 1.8 m (5 ft 11 in) rock formation near the summit, which in\nBuddhist tradition is held to be the footprint of the Buddha, in Hindu\ntradition that of Hanuman or Shiva and in some Islamic and Christian tradition\nthat of Adam, or that of St. Thomas.', '005HmCZIly1g29axqwc4xj31x81a5x6p.jpg');
INSERT INTO `mountains` VALUES (3, 'Ailefroide', 3954, 'https://en.wikipedia.org/wiki/Ailefroide', 'The Ailefroide (3,954 m) is a mountain in the Massif des Ã‰crins in the\nFrench Alps, and is the third highest peak in the DauphinÃ© Alps after the\nBarre des Ã‰crins and La Meije. It lies at the south-western end of the Mont\nPelvouxâ€“Pic Sans Nomâ€“Ailefroide ridge.\n\nThere are three main summits on the mountain:\n\n  * _L\'Ailefroide Occidentale_ (3,954 m): first ascent by W. A. B. Coolidge with guides Christian Almer and Ulrich Almer on 7 July 1870\n  * _L\'Ailefroide Centrale_ (3,928 m): first ascent by Auguste Reynier', '005tHDnEgy1g3n8n3kjbij33402c04qq.jpg');
INSERT INTO `mountains` VALUES (4, 'Annapurna', 8091, 'https://en.wikipedia.org/wiki/Annapurna_Massif', 'Annapurna is a massif in the\nHimalayas in north-central Nepal that includes one peak over 8,000 metres\n(26,000 ft), thirteen peaks over 7,000 metres (23,000 ft), and sixteen more\nover 6,000 metres (20,000 ft). The massif is 55 kilometres (34 mi) long, and\nis bounded by the Kali Gandaki Gorge on the west, the Marshyangdi River on the\nnorth and east, and by Pokhara Valley on the south. At the western end the\nmassif encloses a high basin called the Annapurna Sanctuary. **Annapurna I\nMain** is the tenth highest mountain in the world at 8,091 metres (26,5', '005TxZhqly1fy1oi2hs2zj33vc2kxe88.jpg');
INSERT INTO `mountains` VALUES (5, 'Baltoro Kangri', 7312, 'https://en.wikipedia.org/wiki/Baltoro_Kangri', 'Baltoro Kangri  is a mountain of the Karakoram mountain range in Gilgit-Baltistan, Pakistan.\nBaltoro Kangri is the 82nd highest mountain in the world with an elevation of\n7,312 metres (23,990 ft). It lies to the south of the Gasherbrums and east of\nChogolisa Peak (7,665 m). The huge Baltoro Glacier (which is one of the\nlargest glaciers outside polar regions) rises from the foot of Baltoro Kangri.\nIn the north of Baltoro Kangri is the Abruzzi Glacier.\n\nIn 1963, a Japanese expedition made the first ascent of Baltoro Kangri. The\nexped', '0066VPXagy1g2xr9ajh4bj318y0u0gy3.jpg');
INSERT INTO `mountains` VALUES (6, 'Bowfell', 902, 'https://en.wikipedia.org/wiki/Bowfell', ' Bowfell  (named _Bow Fell_ on Ordnance Survey maps) is a pyramid-shaped\nmountain lying at the heart of the English Lake District, in the Southern\nFells area. It is the sixth-highest mountain in the Lake District and one of\nthe most popular of the Lake District fells for walkers. It is listed in\nAlfred Wainwright\'s \'best half dozen\' Lake District fells.', '0067jFSOgy1fxv3e4yq73j30zk0qo11j.jpg');
INSERT INTO `mountains` VALUES (7, 'Jbel Toubkal', 4167, 'https://en.wikipedia.org/wiki/Toubkal', ' Toubkal is a mountain peak in southwestern Morocco, located in the Toubkal\nNational Park. At 4,167 metres (13,671 ft), it is the highest peak in the\nAtlas Mountains, Morocco, North Africa and the Arab World. Located 63 km (39\nmi) south of the city of Marrakesh, and visible from it, Toubkal is an ultra\nprominent peak, the highest for over 2,000 km (1,200 mi). For climbers it is\n\"the most popular mountain objective in the Atlas mountains\".', '006F6Gvply1g309ea7etij33pc2gwe83.jpg');
INSERT INTO `mountains` VALUES (8, 'Khumbutse', 6636, 'https://en.wikipedia.org/wiki/Khumbutse', 'Khumbutse  is the first mountain\nwest (6 km) of Mount Everest. It lies at the border between Nepal and China.', '006F6Gvply1g309ety3soj33jo2d41kz.jpg');
INSERT INTO `mountains` VALUES (9, 'Melungtse', 7181, 'https://en.wikipedia.org/wiki/Melungtse', 'Melungtse  is the highest mountain of the Rolwaling Himal in the Himalayas.\n\nThe peak has a long summit ridge capped by the east (main) summit and the west\nsummit, also known as Melungtse II, 7,023m. The mountain\'s steep faces make it\nmore difficult than its elevation would suggest.', '006v3DOKly1g2xhj557wdj32c03404qw.jpg');
INSERT INTO `mountains` VALUES (10, 'Mont Pourri', 3779, 'https://en.wikipedia.org/wiki/Mont_Pourri', 'Mont Pourri (3,779 m) is a mountain in the Vanoise Massif in the Graian\nAlps. It is located in the Vanoise National Park.', '0071OtsWly1g26zclgc2rj31900u0qv6.jpg');
INSERT INTO `mountains` VALUES (11, 'Mount Antero', 4351, 'https://en.wikipedia.org/wiki/Mount_Antero', 'Mount Antero is the highest summit of the southern Sawatch Range of the\nRocky Mountains of North America. The prominent 14,276-foot (4351.4 m)\nfourteener is located in San Isabel National Forest, 12.2 miles (19.6 km)\nsouthwest by south (bearing 208Â°) of the Town of Buena Vista in Chaffee\nCounty, Colorado, United States. The mountain is named in honor of Chief\nAntero of the Uintah band of the Ute people.', '007hSTJPgy1g3n8o7smsbj34mo334kjl.jpg');
INSERT INTO `mountains` VALUES (12, 'Mount Elbrus', 5642, 'https://en.wikipedia.org/wiki/Mount_Elbrus', 'Mount Elbrus is a dormant volcano in\nthe Caucasus Mountains in Southern Russia, near the border with Georgia. It\ncould be considered the highest mountain in Europe, notwithstanding that the\nCaucasus mountains are at the intersection of Europe and Asia', '007pBATPly1fxv0dlvfhej32ds1schdz.jpg');
INSERT INTO `mountains` VALUES (13, 'Mount Larrabee', 2397, 'https://en.wikipedia.org/wiki/Mount_Larrabee', 'Mount Larrabee is a 7,865-foot (2,397-metre) Skagit Range mountain\nsituated 1.4 mile south of the Canadaâ€“United States border, in the North\nCascades of Washington state. It is located immediately southeast of American\nBorder Peak within the Mount Baker Wilderness, which is part of the Mount\nBaker-Snoqualmie National Forest, and near North Cascades National Park. It is\nnotable for its reddish coloring caused by oxidation of Iron in the rock. The\nrock consists of reddish interbedded and interfolded phyllites and greenstone.\nOriginally known as Red Mountain, the name was changed in 1951 to ho', '007pBATPly1g0yqg6hhotj356o3gg4qv.jpg');
INSERT INTO `mountains` VALUES (14, 'Mount Paget', 2935, 'https://en.wikipedia.org/wiki/Mount_Paget', 'Mount Paget is a summit of Allardyce Range on the South Atlantic/Antarctic\nisland of South Georgia. It is the highest peak on the island, and also the\nhighest peak in any territory under the sovereignty of the United Kingdom\n(except the British Antarctic Territory, that has no permanent population and\nwhere British sovereignty is unrecognized by most countries, where Mount Hope\nis the highest peak), twice the height of Ben Nevis, the highest mountain on\nthe island of Great Britain.\n\nIt is a saddle-shaped mountain, marking the highest point of the Allardyce\nRange in the central part of Sout', '007w4Qufgy1g0fgscdal8j33gg56ob2i.jpg');
INSERT INTO `mountains` VALUES (15, 'Mount Redoubt', 3108, 'https://en.wikipedia.org/wiki/Mount_Redoubt', 'Redoubt Volcano , or Mount Redoubt, is an active stratovolcano in the\nlargely volcanic Aleutian Range of the U.S. state of Alaska. Located at the\nhead of the Chigmit Mountains subrange in Lake Clark National Park and\nPreserve, the mountain is just west of Cook Inlet, in the Kenai Peninsula\nBorough about 110 miles (180 km) southwest of Anchorage. At 10,197 feet (3,108\nm), in just over 5 miles (8 km) Mount Redoubt attains 9,150 feet (2,700 m) of\nprominence over its surrounding terrain. It is the highest summit in the\nAleutian Range. In 1976, Redoubt Volcano was designated as a National N', '007w4Qufgy1g0nk6nt1zsj33gg56onpe.jpg');
INSERT INTO `mountains` VALUES (16, 'Mount Siyeh', 3053, 'https://en.wikipedia.org/wiki/Mount_Siyeh', 'Mount Siyeh , with a height of 10,019 feet (3,054 m), is the fifth tallest\nand one of six peaks over 10,000 feet (3,048 m) in Glacier National Park,\nMontana, United States. Mount Siyeh was named after a Blackfeet Indian, Sai-\nyeh, whose name means \"Crazy Dog\" or \"Mad Wolf.\"\n\nMount Siyeh stands about two miles east of the Continental Divide, within the\nwatershed of the Saint Mary River, which drains into the Saskatchewan River,\nand ultimately into Hudson Bay.\n\nMount Siyeh is rather easily accessible from a variety of different routes. It\ncan be ascended via a long scree scramble from the Pr', '81352903ly1g26yzmwhv3j24s036oqv6.jpg');
INSERT INTO `mountains` VALUES (17, 'Nevado Sajama', 6542, 'https://en.wikipedia.org/wiki/Nevado_Sajama', 'Nevado Sajama is an extinct stratovolcano and the highest peak in Bolivia.\nThe mountain is located in the Oruro Department, Sajama Canton. It is situated\nin Sajama National Park and is a composite volcano consisting of a\nstratovolcano on top of several lava domes. It is not clear when it erupted\nlast but it may have been during the Pleistocene or Holocene.\n\nThe mountain is covered by an ice cap and _Polylepis tarapacana_ trees occur\nup to 5,000 metres (16,000 ft) height.', '81352903ly1g286r9812vj24s036oqv6.jpg');
INSERT INTO `mountains` VALUES (18, 'Parseierspitze', 3036, 'https://en.wikipedia.org/wiki/Parseierspitze', 'Parseierspitze is, at 3,036 m (9,961 ft) tall, the highest mountain and\nthe only three-thousander of the Northern Limestone Alps. It is the main peak\nof the Lechtal Alps, located in the Austrian state of Tyrol, northwest of\nLandeck.', '81352903ly1g310020sybj235623gb0z.jpg');
INSERT INTO `mountains` VALUES (19, 'Pointe de la Fournache', 3642, 'https://en.wikipedia.org/wiki/Pointe_de_la_Fournache', 'Pointe de la Fournache is a mountain of Savoie, France. It lies in the\nMassif de la Vanoise range. It has an elevation of 3,642 metres (11,949 ft)\nabove sea level.\n\nPointe de la Fournache lies north of Aussois and southwest of Dent ParrachÃ©e\n(3,697 metres (12,129 ft)). The summit is very close to Dent ParrachÃ©e, which\nis separated by a short ridge.', '81352903ly1g3g8q2trqvj24c02w04qr.jpg');
INSERT INTO `mountains` VALUES (20, 'Sgurr Dearg', 985, 'https://en.wikipedia.org/wiki/Sg%C3%B9rr_Dearg', 'Sgurr Dearg (Scottish Gaelic for \"red peak\") is a mountain in the Cuillin\non the Isle of Skye, Scotland. It is topped by the **Inaccessible Pinnacle**\n(colloquially referred to by mountaineers as the _In Pin_ or _In Pinn_ ), a\nfin of rock measuring 50 metres (150 feet) along its longest edge. The top of\nthe Inaccessible Pinnacle, which at 985.8 m (3,234 ft) is the highest point of\nSgÃ¹rr Dearg and the only Munro with a peak that can only be reached by rock\nclimbing. This makes it the biggest hurdle for many Munro baggers.\n\nFirst climbed by Charles and Lawrence Pilkington in 1880, the Pinnac', '81352903ly1g3g8qm07soj24c02w0e83.jpg');
INSERT INTO `mountains` VALUES (21, 'Skrlatica', 2740, 'https://en.wikipedia.org/wiki/%C5%A0krlatica', '**Å krlatica** , historically also known as **Suhi plaz** (\"Dry Avalanche\"), is\na mountain in the Slovenian Julian Alps. With its summit at 2,740m above sea\nlevel, it is the second highest peak in Slovenia (after Triglav at 2,864m) and\nthe third highest in the Julian Alps as a whole (after Triglav and JÃ´f di\nMontasio / MontaÅ¾ at 2,754m).\n\nThe mountain\'s name is the feminine adjectival form of the Slovene word\n__Å¡krlat__ , a cognate of \"scarlet,\" referring to the dramatic reddish-purple\nshade of the steep northwestern rockface in the reddish light of sunset. The\nalternate name _Suhi plaz_ refers', '81352903ly1g3rg4jgr7tj24ax2vahdv.jpg');
INSERT INTO `mountains` VALUES (22, 'Table Mountain', 1084, 'https://en.wikipedia.org/wiki/Table_Mountain', ' Table Mountain, a flat-topped mountain overlooking Cape Town, South Africa', '81352903ly1g3rg4om2g1j244q2r6npd.jpg');
INSERT INTO `mountains` VALUES (23, 'Triglav', 2864, 'https://en.wikipedia.org/wiki/Triglav', 'Triglav , with an elevation of 2,863.65 metres (9,395.2 ft), is the highest mountain\nin Slovenia and the highest peak of the Julian Alps. The mountain is the pre-\neminent symbol of the Slovene Nation. It is the centrepiece of Triglav\nNational Park, Slovenia\'s only national park. Triglav was also the highest\npeak in Yugoslavia before Slovenia\'s independence in 1991.', '8ab77e8fly1g3rto0jchoj22lc1q8gyx.jpg');
INSERT INTO `mountains` VALUES (24, 'Vihren', 2914, 'https://en.wikipedia.org/wiki/Vihren', 'Vihren  is the highest peak of Bulgaria\'s Pirin\nMountains. Reaching 2,914 metres (9,560 ft), it is Bulgaria\'s second and the\nBalkans\' third highest, after Musala and Mount Olympus. Although due to the\nkarst topography Vihren is deprived of lakes and streams, a number of Pirin\'s\nlakes are located around the peak, as is Europe\'s southernmost glacial mass,\nthe Snezhnika glacielet. Until 1942 Vihren was known as _Eltepe_ (peak of\nstorms); it was also called _Buren_ (stormy) and _Malnienosets_ (lightning-\nbringer). The UNESCO World Heritage Site Pirin National Park was origin', 'b161d8faly1fz2r1ew9rfj256o3gg4r5.jpg');
INSERT INTO `mountains` VALUES (25, 'Yewbarrow', 628, 'https://en.wikipedia.org/wiki/Yewbarrow', 'Yewbarrow is a fell, in the English Lake District, which lies immediately\nnorth of the head of Wast Water. It is 628 metres (2,060 feet) high and in\nshape resembles the upturned hull of a boat or a barrow. Yewbarrow is on the\nleft in the classic view of Great Gable and Wast Water.\n\nThe top of Stirrup Crag forms a second summit 616 metres (2,021 feet) high,\nhalf a mile north of the main summit. The Hewitt and Nuttall lists classify\nthe **Yewbarrow North Top** as a separate summit.\n\nThe name is derived from the past prevalence of yew trees on the fell and its\n\"barrow\" shape.', 'b161d8faly1fz2r1ew9rfj256o3gg4r5.jpg');
INSERT INTO `mountains` VALUES (26, 'rr', 1111, 'gggg', 'gggg', 'b161d8faly1fz2r1hqtenj22801hckjn.jpg');
INSERT INTO `mountains` VALUES (27, 'rrrrr', 2222, 'vvv', 'vvv', 'b161d8faly1fz2r5fufs2j24702so1la.jpg');
INSERT INTO `mountains` VALUES (28, 'rr3', 3333, 'frd', 'freg', 'be07242aly1g30vpszzz0j23yy2ndb2a.jpg');
INSERT INTO `mountains` VALUES (29, 'rfss', 5555, 're3r', 'ugikug', 'e14da4cegy1fyuqfuzwerj23vc2kwqvl.jpg');
INSERT INTO `mountains` VALUES (30, 'jyf', 6666, 'iojin', 'hjgug', 'e14da4cegy1fyuqg4f66xj23vc2kw1ld.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `age` int(255) NULL DEFAULT NULL,
  `expert` int(255) NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL,
  `gmtUpdate` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gmtCreate` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `reject` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 18, 0, 10, NULL, NULL, NULL, '2019-11-13 02:36:51.544680', 0);
INSERT INTO `user` VALUES (2, 2, 0, 22, NULL, '212.230.161.74', '18:undefined,3:undefined,2:undefined', '2019-11-13 02:36:51.544680', 0);
INSERT INTO `user` VALUES (3, 27, 0, 14, '2019-11-13 02:40:53.390164', '212.230.161.89', '11:212,9:33,13:44', '2019-11-13 02:38:41.727713', 0);
INSERT INTO `user` VALUES (4, 14, 0, 12, '2019-11-13 02:40:53.390164', '212.230.161.89', '11:212,9:33,13:44', '2019-11-13 02:38:41.727713', 0);
INSERT INTO `user` VALUES (5, 41, 0, 2222, '2019-11-13 02:40:53.390164', '212.230.161.89', '11:212,9:33,13:44', '2019-11-13 02:38:41.727713', 0);
INSERT INTO `user` VALUES (6, 28, 0, 222, '2019-11-13 02:40:53.390164', '212.230.161.89', '11:212,9:33,13:44', '2019-11-13 02:38:41.727713', 0);
INSERT INTO `user` VALUES (7, 33, 0, 1, '2019-11-13 02:40:53.390164', '212.230.161.89', '11:212,9:33,13:44', '2019-11-13 02:40:31.604539', 0);
INSERT INTO `user` VALUES (8, 20, 0, 12, '2019-11-13 03:04:44.689965', '212.230.161.89', '21:121,28:323,5:4444', '2019-11-13 02:55:57.704499', 0);
INSERT INTO `user` VALUES (9, 29, 0, 21, '2019-11-14 00:34:26.060623', '212.230.161.74', NULL, '2019-11-14 00:34:26.060623', 0);
INSERT INTO `user` VALUES (10, 33, 0, 21, '2019-11-14 05:47:52.572505', '212.230.161.74', '17:5209,5:2262,16:8156', '2019-11-14 00:34:52.991993', 1);
INSERT INTO `user` VALUES (11, 0, NULL, NULL, '2019-11-14 07:24:06.452580', '212.230.161.74', '21:1806,1:1986,12:2449', '2019-11-14 07:19:32.842531', 1);

SET FOREIGN_KEY_CHECKS = 1;
