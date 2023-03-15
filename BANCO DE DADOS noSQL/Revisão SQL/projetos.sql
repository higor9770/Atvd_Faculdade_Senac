Create database proj;

use proj;

CREATE TABLE IF NOT EXISTS `projetos` (
  `id_projeto` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` mediumint(9) DEFAULT NULL,
  `nome_projeto` varchar(255) DEFAULT NULL,
  `data_inicio_projeto` varchar(255) DEFAULT NULL,
  `data_fim_projeto` varchar(255) DEFAULT NULL,
  `descr_projeto` text,
  `valor_projeto` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id_projeto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;
 
INSERT INTO `projetos` (`id_projeto`, `id_cliente`, `nome_projeto`, `data_inicio_projeto`, `data_fim_projeto`, `descr_projeto`, `valor_projeto`) VALUES
(2, 19, 'Daly', '25-09-2013', '09-08-2020', 'dictum mi, ac mattis', 1786199),
(3, 1, 'Morhet', '28-01-2014', '27-11-2016', 'lacus. Quisque imperdiet, erat nonummy', 2777174),
(4, 25, 'New Radnor', '02-05-2013', '02-02-2017', 'feugiat. Lorem ipsum', 1698175),
(5, 21, 'Bologna', '13-11-2013', '22-12-2021', 'in, dolor. Fusce feugiat.', 1556953),
(8, 19, 'Corbais', '07-09-2013', '03-08-2021', 'in, tempus eu,', 1288463),
(9, 23, 'Gols', '02-05-2013', '19-12-2015', 'bibendum sed, est. Nunc', 375503),
(12, 7, 'Santa Flavia', '05-08-2013', '09-04-2020', 'Proin sed turpis nec mauris', 899445),
(13, 27, 'Sobral', '19-11-2013', '16-08-2014', 'tincidunt, nunc ac mattis', 3483467),
(54, 30, 'Casacalenda', '29-11-2013', '18-05-2016', 'a, malesuada id, erat.', 234014),
(55, 20, 'Ponoka', '03-06-2013', '02-01-2020', 'Sed nunc est, mollis', 1230821),
(56, 4, 'Ponoka', '24-03-2014', '10-11-2019', 'elementum at, egestas a,', 1449375),
(57, 7, 'Fuenlabrada', '25-08-2013', '06-07-2017', 'Sed pharetra, felis eget', 2379213),
(58, 15, 'Fairbanks', '23-03-2013', '16-05-2017', 'dis parturient montes, nascetur', 682314),
(59, 27, 'Sobral', '01-10-2013', '12-01-2020', 'eu dolor egestas rhoncus. Proin', 2561842),
(60, 3, 'Boncelles', '26-11-2013', '27-09-2014', 'est ac mattis', 1079850),
(61, 30, 'Caledon', '20-06-2013', '07-05-2018', 'auctor quis, tristique ac, eleifend', 2247869),
(62, 30, 'Caledon', '21-03-2013', '16-04-2014', 'elementum purus, accumsan interdum libero', 1765979),
(63, 5, 'Wedel', '04-04-2013', '21-09-2016', 'Vestibulum ante ipsum primis in', 2474205),
(64, 25, 'Baricella', '16-12-2013', '05-09-2014', 'cubilia Curae; Donec tincidunt.', 2382058),
(65, 10, 'Neath', '29-12-2013', '24-03-2019', 'at risus. Nunc', 1422902),
(66, 1, 'Liers', '22-06-2013', '11-09-2017', 'Aliquam nec enim. Nunc', 470024),
(68, 30, 'Nellore', '25-09-2013', '17-02-2015', 'quam. Pellentesque habitant morbi tristique', 67899),
(69, 2, 'Lourdes', '28-03-2013', '14-04-2020', 'augue id ante', 2538857),
(70, 28, 'Nives', '27-08-2013', '25-12-2014', 'ante dictum mi,', 1784745),
(71, 18, 'Nives', '14-12-2013', '17-09-2021', 'montes, nascetur ridiculus mus. Donec', 1107111),
(72, 28, 'Beigem', '20-01-2014', '08-07-2018', 'lacus pede sagittis augue,', 734517),
(73, 23, 'Lourdes', '24-05-2013', '26-05-2014', 'et ultrices posuere cubilia Curae;', 3489422),
(74, 22, 'Caledon', '23-10-2013', '12-08-2017', 'Integer eu lacus.', 1845447),
(75, 4, 'Herne', '20-12-2013', '11-06-2019', 'bibendum sed, est. Nunc', 626961),
(76, 20, 'Kincardine', '20-10-2013', '02-07-2016', 'hendrerit. Donec porttitor tellus non', 1348843),
(77, 23, 'Ham-sur-Sambre', '24-05-2013', '29-03-2018', 'montes, nascetur ridiculus mus.', 1211441),
(79, 8, 'Vegreville', '08-12-2013', '15-12-2014', 'Cras eget nisi dictum augue', 1120979),
(80, 5, 'Chetwynd', '04-06-2013', '09-01-2019', 'lectus ante dictum', 58747),
(81, 23, 'Laramie', '26-11-2013', '02-06-2016', 'ut odio vel est', 504943),
(82, 24, 'Cabano', '01-08-2013', '20-12-2018', 'per inceptos hymenaeos. Mauris ut', 389426),
(83, 17, 'Warwick', '19-03-2013', '28-05-2017', 'quam, elementum at,', 2832485),
(84, 28, 'Riparbella', '31-12-2013', '14-02-2016', 'accumsan sed, facilisis', 2424741),
(85, 11, 'Sobral', '20-04-2013', '21-05-2015', 'Proin sed turpis', 428474),
(86, 3, 'Assiniboia', '26-03-2013', '14-03-2020', 'mus. Aenean eget magna.', 1050649),
(87, 28, 'Aylmer', '27-03-2013', '07-11-2017', 'congue a, aliquet', 1951523),
(89, 4, 'Moose Jaw', '19-06-2013', '04-10-2015', 'Nulla interdum. Curabitur', 3119981),
(91, 11, 'Regina', '23-03-2013', '09-08-2018', 'netus et malesuada fames ac', 1556143),
(92, 15, 'Dunstable', '09-03-2013', '27-11-2015', 'Integer sem elit,', 395861),
(93, 30, 'Schwalbach', '21-07-2013', '13-05-2017', 'nunc sit amet metus.', 2372941),
(94, 17, 'Saint-Prime', '10-04-2013', '21-10-2016', 'Donec consectetuer mauris id sapien.', 2293366),
(95, 8, 'Munich', '20-09-2013', '31-12-2016', 'cursus non, egestas', 491439),
(96, 22, 'Presteigne', '21-11-2013', '21-03-2019', 'Aliquam nec enim.', 2586221),
(97, 13, 'Caledon', '16-05-2013', '14-08-2021', 'gravida non, sollicitudin a, malesuada', 536721),
(98, 20, 'Cerchio', '12-08-2013', '15-11-2017', 'primis in faucibus orci luctus', 2559437),
(100, 25, 'Cheyenne', '10-08-2013', '01-12-2016', 'dapibus gravida. Aliquam tincidunt, nunc', 1964699);

select curdate();
-- função que pega só a data 

select now();
-- função que pega data e hora 

select id_projeto, nome_projeto from projetos where nome_projeto = 'Caledon';

select nome_projeto, valor_projeto from projetos where valor_projeto > 2000000 and valor_projeto < 3000000;