-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 10:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ephyle_638`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_ID` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `format` varchar(200) DEFAULT NULL,
  `repo_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_ID`, `title`, `date`, `url`, `source`, `publisher`, `description`, `type`, `format`, `repo_url`) VALUES
(1, 'The spatial suitability evaluation of networked minimarket locations according to Bupati Bantul Regulation No. 352013', '2018-05-01', 'https://jurnal.ugm.ac.id/jgise/article/view/38238', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'The Regulation of Bupati Bantul Number 352013 regulates the establishment of networked minimarket mini market berjejaring in Bantul Regency. This study was conducted to assess the suitability between the regulation with the real condition by emphasizing the spatial aspects after 5 years of the implementation of the regulation. This study concerns with the criteria in the regulation about the distance of the mini markets from the traditional markets and the class of the road. The data for cunducting the spatial analysis include road vector data administrative boundaries locations of traditional market and networked minimarket attribute data for networked minimarket and satellite images of Bantul Regency. The data then was analyzed using proximity and network analysis to know suitability of networked minimarket locations with the regulation. Proximity analysis was done using buffer operation meanwhile network analysis was done using operation of OD Cost Matrix. Result obtained from the proximity analysis of the overall parameters show that there is only one minimarket in accordance with the regulation. In the other hand  if the network analysis is included then the number of minimarkets that comply with the regulation increase to three minimarkets. To conclude most of the locations of the netwoked minimarkets in Bantul do not comply with the Bupati Bantul Regulation Number 352013.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(2, 'Correlation of GNSS Observation Data Quality Resulted from TEQC Checking and Coordinates Precision', '2018-09-23', 'https://jurnal.ugm.ac.id/jgise/article/view/38387', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'GPS Positioning provides good coordinate accuracy that is up to a millimeter. However some error sources such as multipath atmospheric conditions and obstruction can reduce the quality of data and also coordinates. To minimize errors due to these factors at the time of determining the station location it is necessary to pay attention to the surrounding conditions namely by looking for open areas and avoiding objects that can reflect GNSS signals. However it is often not easy to find the ideal observation station location which forms a good chain while being free from obstruction and multipath. Therefore it is often necessary to prioritize certain factors over other factors. Information about the correlation between multipath ionospheric conditions and the recording level of observational data on coordinate accuracy can be used as consideration in determining the location of control points for deformation monitoring and determining which factors are prioritized. This study aims to evaluate the correlation between data quality and coordinates precision.The used observation data are Sermo Reservoir control network and nine CORS BIG stations. The component data analyzed are multipath MP1 MP2 ionospheric effects IOD slips and IOD or MP slips and the data recording level obs. These components were resulted by checking with TEQC software while the precision of the coordinates was obtained by processing with GAMIT  GLOBK software. Based on the correlation coefficient value it is known that the recording level of observation data has the strongest correlation with a negative direction ranging from -0.7 to -0.9. It is the ratio between the number of real observations to the number of possible ones. One factor that influences it is the obstruction in the field. In other words in determining the location of GNSS observation stations the conditions of obstruction in the vicinity need to be considered and prioritized.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(3, 'GNSS Monitoring Network Optimization Case Study Opak Fault Deformation Yogyakarta', '2018-09-23', 'https://jurnal.ugm.ac.id/jgise/article/view/38458', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Opak fault is a fault located in Opak River area Bantul. The existence of the fault is one of the biggest causes of earthquake in Yogyakarta in 2006. The seismic potential caused by the active fault requires continuous geodynamic monitoring. The GNSS network TGD SGY and OPK have been developed since 2013 consists of 17 stations and in 2016 there was an additional number of four monitoring stations. Several high-precision monitoring stations distributed at the fault location are needed to monitor the fault movement. Optimal observation network is one of the factors to obtain high precision station coordinates. The GNSS network optimization has been carried out in the previous research partially on each network namely the segment of TGD SGY and OPK. Therefore this research conducts a thoroughly optimization for 17 monitoring stations either use old or new stations to obtain an optimal network based on the criteria of accuracy and reliability.The network is designed widely from simple to complex combination and to combination between network segments. The computation uses least squares adjustment with parameter method. The value of the cofactor matrix parameter of the adjustment is applied to analyze the network based on the function of the accuracy criteria namely A-Optimality D-Optimality E-Optimality S-Optimality and I-Optimality. Meanwhile the value of the residual cofactor matrix is used for network configuration analysis based on the reliability objective function namely the individual redundancy external and internal reliabilities criteria. The result showed that the design of TGD SGY and OPK network segments are optimized based on the criteria of accuracy and reliability if they use a network design with a complex baseline. The criteria for accuracy and reliability in the design with a combination of segments such as TGD and SGY TGD and OPK as well as TGD SGY and OPK are not much different from the optimization results performed by each segment. Therefore if th', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(4, 'The use of Location Based Instagram Data for Tourism Potential Analysis in Kabupaten Gunung Kidul', '2018-09-23', 'https://jurnal.ugm.ac.id/jgise/article/view/38469', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Gunungkidul Regency is one of five regencies in Yogyakarta Province which is rich of natural tourism destination objects. Each tourism object has its own potential and characteristic that distinguishes one with other tourism objects. However the tourism potency have not been exposed to public properly and the local government has not sufficiently use the data of visitors as the basis for planning and development of tourism objects in Gunungkidul Regency. This research tries to evaluate the use of BIG DATA especially social media data to analyze the tourism potency based on the public opinions and visits. For this purpose Instagram data was utilized as the main data for the analysis. The data was collected between December 18 2017 to February 3 2018 using Instagram API. The data then was pre-processed to clear or filter the duplication data to filter the data based on selective location or study area namely Gunungkidul Regency as well as to filter the data which match with the topic of the research namely tourism. Some analysis then were conducted namely spatial analysis statistical analysis and caption analysis. The spatial and statistical analysis were aimed to find spatial pattern of tourists visits at several locations in the form of spatial density of each tourism destinations with respect to temporal aspect. Analysis of captions is done by filtering Instagram data by using some keywords that can indicate tourism potency. Data was visualized using Carto Builder. Results show that some effort is needed to utilize the Instagram data for this purpose. The data is efficient and effective to be used to visualize spatial-temporal pattern of visitors at tourism destinations as well as to understand tourism destinations objects potency in Gunungkidul Regency. However this analysis cannot be done in realtime due to a limitation in collecting data from Instagram API.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(5, 'Comparison of Horizontal Displacement from Horizontal Control Network Adjustment Result Using Observation Model and Time-Variant Methods Case Study  Horizontal Control Network of Borobudur Temple Epoc', '2018-09-23', 'https://jurnal.ugm.ac.id/jgise/article/view/38472', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Borobudur Temple is the biggest Buddhist Temple in the world protected by UNESCO. Therefore the periodical maintenance of Borobudur temple become important deformation study through displacement analysis can be applied for it by conducting Geodetic observation periodically. The design for Borobudur horizontal monitoring network is a relative one the control point and monitoring points are in the deformation area. Therefore the effect of position changes of the control point used in the horizontal network for displacement analysis of Borobudur needs to be considered as it affects the result for the least square adjustment of the monitoring points. Two different adjustment methods used to overcome this problem Least square adjustment using observation model and time-variant methods. This research aims to compare the horizontal displacement analysis of Borobudur resulted from these two adjustment methods. First by giving position correction for the control point at each epoch according to its displacement in least square adjustment using observation model. The second by computing position and velocity vector directly using time-variant method. The comparation of 2D horizontal displacement vector analysis was done by using vector velocity of 2D horizontal displacement from the analysis of the two adjustment methods on the interval displacement epochs between 2002 and 2003 and between 2002 and 2012. This research showed the vector magnitude and the accuration of the displacement from the analysis resulted from the two adjustment methods was different. The resulted of least square adjustment using observation model with correction of control point showed that there was significant increase in magnitude of displacement vector of the monitoring points. Displacement analysis between 2002 and 2003 the magnitude in average were 7.97 mm and the analysis between 2002 and 2012 were 37.78 mmwith consistent displacement direction of the both interval displacement to the northwest. ', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(6, 'Utilisation of Sentinel-1 SAR Imagery for Oil Spill Mapping A Case Study of Balikpapan Bay Oil Spill', '2018-09-23', 'https://jurnal.ugm.ac.id/jgise/article/view/38533', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Oil spill is a great threat for marine ecosystem. Oil discharge has become a public concern in all over the world with the increase of marine traffics. Indonesian government has declared state of emergency over oil spill which devastated Balikpapan bay in March 2018. The deadly oil spill impacts marine ecosystem as well as the communities. This study aims to map the oil spill over Balikpapan bay by utilising SAR imagery of Sentinel-1. Automatic and semi-automatic approaches are presented in this study to detect the oil spill. Oil spill is automatically detected using Oil Spill Detection toolbox of Sentinel Application Platform SNAP. Furthermore semi-automatic method is also demonstrated by utilising pre and post-oil spill SAR imageries. Our experiment shows that semi-automatic method has better performance than automatic detection by SNAP. Nevertheless both approaches are useful to map oil spill in term of time and cost effectiveness.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(7, 'Time Variant Adjustment for The Solution of Control Point Unstability in Deformation Analysis of Borobudur Vertical Deformation Monitoring Network', '2018-09-23', 'https://jurnal.ugm.ac.id/jgise/article/view/38590', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Borobudur is Indonesians cultural heritage which is recognized as a world heritage by UNESCO. As a world heritage structure monitoring and maintenance have to be carried out periodically at Borobudur. Monitoring the vertical deformation of the temple using Geodetic method is one kind of monitoring which have to be done in this case the monitoring uses leveling network. The design of leveling network at Borobudur in 2002 used absolute network but the control point of this network has been indicated to be shifted. The control point displacement would cause a systematic error in the adjustment computation method for the analysis of vertical displacement. The correction of control point elevation due to the vertical shift is needed prior to the adjustment computation using observation model. In addition there is a time variant adjustment computation method which able to calculate the vertical rate of object point displacement. This study aims to compare the vertical displacement analysis of the Borobudurs vertical network from the adjustment computation using observation model with the correction of control point height and from time-variant adjustment method.Data used in this study were the elevation differences from leveling measurements in 2002 2003 and 2004 and the elevation and vertical velocity of the control point in 2002. Adjustment computation using observation model began with the elevation correction of control point at each epoch. The adjustment computation was taken to determine the elevation of monitoring points at each epoch. Statistical test and vertical displacement analysis using significance parameter tests was carried out to analyze the results. Adjustment computation using time-variant method was taken to determine the elevation and the vertical velocity of the monitoring points at certain epoch intervals and validated using global test after the adjustment computation.The vertical displacement magnitude of Borobudurs monitoring points resulted from', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(8, 'Analysis of the July 10th 2013 Tectonic Earthquake effect on the Coordinates Changes of Mentawai Segment Monitoring Station', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/39350', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Mentawai Segment is located in Mentawai Islands Sumatra Indonesia. This segment is a subduction zone between Indo-Australian plate and Eurasian plate. This subduction zone can lead to high potential of tectonic earthquake in Mentawai Segment. The high potential of tectonic earthquake has negative impact for the community so it is necessary to monitor the risk of tectonic earthquake in Mentawai Segment. This monitoring can be done by using GPS data of monitoring station that spread in Mentawai Segment. Therefore this research aims to analyze the effect of tectonic earthquake on the coordinate change of Mentawai Segment so that it can reduce the risk of negative impact of tectonic earthquake in Mentawai Segment. This research use observation data of 10 continuous GPS monitoring station Sumatran GPS Data Array  SuGAr in Mentawai Segment. Day of observation data was day of year doy at the time of tectonic earthquake occurence on July 10 2013. Data processing used GAMIT  GLOBK software. The results of this research indicate that the tectonic earthquake July 10 2013 affected coordinates changes of the SuGAr station significantly two hours after the tectonic earthquake occurred.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(9, 'Vs30 Mapping and Soil Classification in The Southern Part of Kulon Progo Using Rayleigh Wave Ellipticity Inversion', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/39780', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Shear wave velocity from the ground surface to a depth of 30 meters Vs30 is a parameter to determine dynamic characteristics of the soil which can be used to assess the level of seismic hazard. Thus Vs30 mapping has an important role in seismic hazard mitigation efforts. Vs30 can be determined by Multichannel Analysis of Surface Waves MASW and Spatial Autocorrelation SPAC methods. A simpler alternative can be done by using Rayleigh wave ellipticity. The main objective of this research is to map Vs30 in the southern part of Kulon Progo using Rayleigh wave ellipticity inversion. In this study Rayleigh wave ellipticity inversion was performed on 42 microtremor single measurement data scattered in the southern part of Kulon Progo. The inversion results are used to estimate the value of Vs30 and classify the soil type at the measurement points referring to SNI 17262012. A Vs30 distribution map and soil type classification are obtained by applying the geostatistical interpolation method. The mapping result showed that most of the southern part of Kulon Progo has a relatively low Vs30 value. These values are in the range of 180-342 ms which categorized as stiff soil SD. In this region some parts located in the hilly and transition zones have relatively high shear wave velocities in the range of 357-578 ms and included in the category of very dense soil soft rock SC types', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(10, '3D Modeling and Volume Estimation of Riverbed Layers Based on Sub Bottom Profiler Measurement Data', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/39974', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'The river is one of the transportation routes for human beings as well as the pipelines for oil and gas distribution or as power cable lines and communications networks. In order to not disturb the pipe or cable due to the activity of the ship through the river it is necessary to study the sediment from the river. This study aims to determine the type of sediment the thickness of the sediment the depth of sediment and volume of the sediment itself. It can be done with acoustic measurements.The measurement of the acoustic survey in this activity uses a sub bottom profiler Strata Box HD type Chirp. By using this tool it can obtain sediment layer up to a certain depth. The result of the measurement will be interpreted to obtain the travel time of the acoustic wave as it reflected on the sediment layer. The travel time than processed and corrected with the tidal measurement data which made over 14 days to obtain the actual depth value from the result with the sub bottom profiler. The depth data then were quality tested based on reference IHO SP-44 2008 at order 1a.This activity produces a 3D model of river layer depth profile and sediment layer volume estimation. The result of the quality tested obtained corrected depth data has met the established standards of order 1a IHO SP-44 2008. Using a 95 confidence level the test results in the first layer is 0.271 m with an error tolerance at 0.510 m. For the second layer has a data quality test results 0.491 m with a tolerance at 0.521 m. The result of depth profile is a long section and cross section. The long section indicates that in the deflection of the river area there is a steep decline compared to the area before and after the river deflection. In addition the river deflection area has a thinner sedimentary layer. The volume estimation of sediment layers obtained in the area of the activity is 4932752.739 m3.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(11, 'The Updating of the Nautical Chart Number 69 on Java Sea Area for Safety Navigation of Sailing', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/40086', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Indonesia is the largest archipelagic country in the world that has become one of the main routes in international marine trade by contributing 40 of all international marine trade routes. The importance of waterways in international trading demands the existence of nautical chart for navigation. Time after time the sea changes therefore nautical chart needs to be update especially on the area that has a high marine traffic density such as Java Sea which currently has developed an electronic map for navigation however paper charts are still needed for planning shipping line the navigation on small boats and backup of charts on large ships. The aim to be achieved from this research is the availability of the latest paper chart which is appropriate with IHO standard S-4 INT1 symbols abbreviations and terms used on charts INT2 the boundary lines gradient grid and linear scale and Chart Number 1. Updating chart number 69 was created by using data Electronic Navigation Chart ENC Northen part of Central Java region data raster paper chart number 69 the ninth edition of the second expenditure survey data 2017 in Cirebon and the Eastern part of Java Sea and Indonesian Notice to Mariners number 11-29 year 2017. Data obtained from the Pusat Hidrografi dan Oseanografi TNI-AL. The software used in production of nautical chart is Paper Chart Composer PCC. Then it was added the updated data and information to the chart. The result of production a chart were corrected using digital and manual quality control analysis to eliminate errors in the process of production chart. As a result of updating nautical chart number 69 is that some of the objects that had been corrected have errors so it needs to be repaired until no more errors occur. The updating paper chart was already matched to standard IHO S-4 and INT1. The visualization of paper chart in accordance with the standard IHO INT2 and Chart number 1. The avaibility of paper chart number 69 with the update of data on the area of ', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(12, 'Analysis Comparison of Algorithms for Determination Concentration of Chlorophyll-a in Traditional and Intensive Milkfish Ponds Using LANDSAT 8 Images', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/40276', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Indonesia is an Archipelago Country because the Country of Indonesia consists of many islands stretching from Sabang in the west to the island of Merauke on the east. The Archipelago Country also comes from the old name of the Indonesian Country called Nusantara because Nusantara is a country that consists of many islands. Indonesia is an Archipelago Country which means it has potential resources in the coastal areas one of which is found on the northern coast of Java. The coastal area is an important area to be reviewed one of which is the use of coastal resources by paying attention to the condition of the ecosystem that remains stable. Opportunities for coastal area utilization in the field of fisheries are in the form of fishing activities or fish farming especially pond cultivation activities. Based on data from the Department of Marine and Fisheries of the Province of Central Java in 2010 pond cultivation is one of the potential resources on the coast. This potential is supported by the government to increase fish production in order to increase the consumption of fish in the community. Therefore it is necessary to choose the most effective method of pond cultivation between traditional methods and intensive methods to optimize fish production. One indicator of effectiveness between the two methods can be seen from the phytoplankton distribution. Phytoplankton contains chlorophyll-a in the body and is a natural food from fish. Phytoplankton provides important ecological functions for the aquatic life cycle by serving as the basis of food webs in water. Phytoplankton also functions as the main food item in freshwater fish culture and seawater fish cultivation. Therefore it is necessary to know the chlorophyll-a concentration in the ponds of traditional and intensive methods to determine the concentration chlorophyll-a of the two pond methods. One method used to determine the concentration of chlorophyll-a using remote sensing technology. Remote sensing technolo', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(13, 'Study of the Impact of the Growth of Settlement Areas Against Decreased Capacity of Shallow Aquifer and Groundwater in Semarang City 2014-2017', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/40564', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'The growth of urban areas dominated by residential and industrial land cover will encourage the high use of clean water and land loading compaction due to building loads. The use of water in peoples daily lives and industrial activities still relies on nature namely in the form of groundwater or aquifers. Continuous water collection especially in big cities in Indonesia will have a negative impact on the environment which results in changes in the environment itself. Environmental changes due to the impact of taking water that might occur are land subsidence LS. For this reason this study will examine the relationship of the impact of the development of residential areas in the city of Semarang on the decline of shallow aquifer capacity SAC and LS.Observation of changes in KAD in this study was observed in the type of shallow aquifer using shallow wells MAT data. Whereas for observing land subsidence using the PS InSAR method. For the growth of the residential area of Semarang it will be focused on the land cover of residential areas in the 2014-2017 period. The overlapping method is used to correlate the effect of changes in KAD and PMT in Semarang City.PS InSAR processing results obtained an average value of average land subsidence per year with a range of 0  3.4 cm to 4.5  3.4 cm and the results of processing obtained the largest land subsidence information found in the District of North Semarang East Semarang West Semarang Pedurungan and Genuk. The change in KAD in the amount of 60 to a decrease of 80 occurred in Genuk Sub-District North Semarang West Semarang Pedurungan Gayamsari. Whereas settlements with population levels based on land use classification maps for settlements are in Genuk West Semarang Gayamsari Pedurungan Tembalang and Banyumanik Districts', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(14, 'Minimum Isoseismal Distribution Based On Macroseismic Interpolation For Earthquake Disaster Mitigation in Palu City', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/40763', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Palu City is the city that suffered the most damage and many casualties effect from event Palu-Donggala earthquake on September 28 2018. This earthquake triggered a tsunami liquifaction and landslides which caused difficulties in determining a closest safe location for the temporary evacuation site in location affected disaster. The aftershocks that occurred after the main earthquake caused unrest for refugees and village government officials because it was feared that the location to be used as a temporary evacuation site would run into the impact of an earthquake similar to other severe locations. To determine a safe location around the impact area destructive earthquake information about the map of the minimum isoseismal distribution is very important. This study aims to map Minimum Isoseismal Distribution as the place that has the smallest disaster risk in areas affected by the earthquake tsunami liquefaction and landslides. The research methodology that be done are plotting and interpolate data from macroseismic surveys then were verified using satellite citra data and photo documentation of survey. The results showed that a minimum isoseismal distribution was found in 8 areas located in the village Kabonena Lere Kamonji Siranindi between Boyaoge and Nunu Tawanjuka Palupi and Tinggede.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(15, 'Development and Definition of Prambanan Temple Deformation Monitoring Control Points', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/40788', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Since 1991 Prambanan Temple has been recognized by UNESCO as a cultural heritage of a historic building. In its construction the Prambanan temple was established in a labile soil structure in the sandy soil and not far from the Opak River. In the geological map of Yogyakarta there is a fault under the Opak River landscape. This fault under the Opak River has caused an earthquake in 2006. Because of its position in disaster-prone areas regular monitoring of the geometric aspects of Prambanan Temple is very necessary.This research aims to build a deformation monitoring control point in Prambanan Temple. Eight control points consist of three existing points and five new points are built around Prambanan Temple. These eight control points then were measured by observing GNSS for 1x24 hours in order to define their coordinates. GNSS data processing is done using GAMIT 10.70 software with two strategies namely 1 processing with regional binding points in this case using IGS BAKO and JOG2 stations and 2 processing with global binding points using IGS COCO station reference points DARW KARR POHN PIMO DGAR and IISC.This research yields the establishment of Prambanan temple deformation control points and their coordinates and standard deviation in two processing strategies. The smallest standard deviation in the first strategy is 0.0787 m on the Z-axis for points of PRO1 and PR03. The biggest standard deviation is 0.1218 m on the Y-axis at point of PR02. In the second strategy the smallest standard deviation is 0.0036 m on the Z-axis for points of PR01 and PR03. The biggest standard is 0.0141 m on the Y-axis at point of PR02.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(16, 'Calibration of Digital Cameras for Mobile Mapping Purposes', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/40817', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'The development of the use of non-metric digital cameras in the form of action cameras for collecting geospatial data has become very useful and supports the work of mobile mapping for making three-dimensional 3D models. Each lens has an error in the formation of a projection design and also an error during production. For example in a fisheye lens which has a distortion model namely radial distortion tangential distortion and shifting of the optical center point. The camera is considered to be calibrated if the principal distance principal point offset and lens distortion parameters are known. The preparation stage that needs to be done on the mobile mapping work in making 3D models is camera calibration. This research aims to determine the value of internal orientation parameters of a digital camera action camera that is used for mobile mapping purposes. Camera calibration in Photogrammetry aims to determine the geometric model of the camera described by Interior Orientation Parameters IOP including focal length shifting principle point PP distortion and other parameters. The calibration method used is the test field calibration. The calibration activities carried out on digital cameras are by measuring targets in the field using coded targets from Agisoft software. The calibration process is also carried out when processing photo data with Agisoft Photoscan Professional software. Camera calibration results using bundle adjustment on Agisoft Photoscan Professional software produce IOP Interior Orientation Parameter parameters namely principal distance C principal point offset Xp Yp and lens distortion parameters K1 K2 K3 P1  P2 B1 B2. Based on the results obtained it can be concluded that Maximum Observational Radial Distance Encountered is 1 mm.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(17, 'Implementation of CORS GNSS and local geoid for precise orthometric height determination in land subsidence region a case study in Semarang City', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/40828', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Geoid has an important role in converting geodetic heights to physical heights both in orthometric height system and normal height systems. At present Semarang City already has gravimetric geoid with centimeter-level precision. This gravimetric was validated by geometric geoid measured by static method. GNSS Global Navigation Satellite System measurement using static method needs long observation time and costly because it requires network that connect baselines and points. This study aims to implement CORS Continous Operating Reference Station GNSS in measuring geodetic height and to apply gravimetric geoid in orthometric height calculations. In this research the gravimetric geoid recalculation process was carried out using gravity disturbance data of 2016. The geoid fitting process was carried out iteratively based on gravity data and modification of the integral of Hotine. Geodetic height measurements were carried out at 40 points distributed olong 50 km leveling network. Geodetic height measurements were refered to CORS GNSS of BIG Geospatial Information Agency and UNDIP Diponegoro University to produce standard deviation ranged from 0.003 m to 0.055. Geometric geoid checking with previous gravimetric geoid before fitting produced standard deviation of 0.037 m and datum offset of -0.690 m. Geometric geoid checking for recent gravimetric geoid after fitting produces standard deviation of 0.043 m and datum offset of -0.010 m. This study concluded that the refering geodetic coordinates to CORS stations by 1 hour observation of rapid static method and processing baselines in commercial software are sufficient for the determination of orthometric height in centimeter-level precision. This study also concluded that gravimetric geoid fitting based on gravity data shifting can minimize datum offset and shrinkage in geoid map.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(18, 'Land Valuation with Analytical Hierarchy Process and Regression Method in Grogol Sub-District Sukoharjo District', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/40845', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Land valuation is a set of processes to determine the value of land plot. In conducting land valuation it is necessary to considering the factors that affect values of land which caused land values in each region to be different. In order to objective land valuation it is necessary to analyze the magnitude of factors that influencing the value of land. The Analytical Hierarchy Process AHP method is used in this study to analyzing the magnitude value of land in Grogol Sub-district Sukoharjo District. Factors used are field distance to CBD field distance to road field distance to river field distance to health facilities field distance to educational facilities and land use. The data used in this study were obtined from Sukoharjo Land Office which is the data of sale and purchase transaction in Grogol Sub-district Sukoharjo District totaling 178 data from January to December 2016. Transaction data and factors influence land value are analyzed by Regression Method to obtain the best value model in Grogol Subdistrict Sukoharjo District.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(19, 'Determination of Boiler Building Verticality in Power Plant Construction using Terrestrial Laser Scanner TLS', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/40846', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Nowadays Indonesian government is focusing on build up infrastructures especially power plant infrastructures to fulfil electrical energy needs. One of the power plants that will be built up is Waai power plant which located on Waai village Maluku Province. Waai power plant had been postponed since 2014. In order to build this power plant the advisability of the building needed to be checked from its verticality level. This level was determined by Terrestrial Laser Scanner TLS. The TLSs point clouds were registered using two methods there are target to target and cloud to cloud methods. There are 65 beams on the power plant boiler building but only 31 beams that used as the samples to assign the verticality of the boiler construction. The verticality level was set on the X-axis Y-axis and the resultant of the X and Y axis by using Pythagoras theorem after the bottom and top coordinates from each beam was determined. The Queensland Building and Construction Admission Standards and Tolerances Guide 2016 was used as tolerance of verticality level. The result of the verticality calculation presented on the X-axis consisted from -0 1 26678 to 0 4 11778 with the average was 0 1 40820 and major direction pointed the positive axis. On the Y-axis the average was -0 0 45772 with -0 3 33345 as minimum and 0 1 25319 as the maximum and the major direction went to the negative axis. The verticality on the resultant of X and Y axis was from 0 0 45225 until 0 4 15674 with the average was 0 2 27057 and the direction was to the southeast. After the verticality number was compared with the tolerance the verticality level was smaller than the standard on each beam. From the result we can conclude that the boiler building on the Waai power plant can be categorized safe to reconstruct.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(20, 'Expedition Oe A Visual-Storytelling Map on Rote Islands Lakes', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/40861', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Rote Island has long been known as a tourism destination especially for its beaches and small islands which are well known surfing spots. However many other aspects of Rote Island such as its inland waters left unexplored and are unknown to tourists or stakeholders. The lack of infrastructure is one of the factors causing underdevelopment in these area. This paper reports the outcome of an expedition set to uncover the uniqueness of Rote Islands tourism potential especially on its inland waters. The expedition involves researcher from some of Indonesian institutions related to inland waters such as LAPAN LIPI PUPERA KLHK and KKP to conduct some preliminary research on Rote Islands saltwater lake. Mobile devices equipped with GIS software were used to obtain data during the survey. Some of the findings including the misleading toponyms found in online sources of the lakes the biogeophysical condition of the lakes as well as vegetations and wildlife of the area. The Rote Island Snake-necked Turtle Chelodina Mccordi is one of the near-extinct species which habitat needs to be identified and well-preserved thus tourism should take into account natural preservation in the lakes and its surroundings. Based on the results we suggest that a Geopark should be initialized in and around Rote Islands lakes. These findings are presented as a storytelling map both to attract tourism and to emphasize the geospatial aspects of the lakes. A WebGIS is also developed to integrate data from different institutions to aide decision making. The result is geopark4rote.com which present the storytelling map and WebGIS to be used by tourist and decision makers alike to explore the richness of Rote Island through geospatial data.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(21, 'Utilization of Tide Observation and Satellite Altimetry Data for Detecting Land Vertical Movement', '2019-02-03', 'https://jurnal.ugm.ac.id/jgise/article/view/41411', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Indonesia is one of the country that often experiences earthquakes and volcanic eruptions because of its position on the meeting point of three active tectonic plates namely the Eurasian Indo-Australian and Pacific plates. This causes movement or deformation both horizontally and  or vertically. Current movement monitoring is done using GNSS technology. However the distribution of monitoring points are not spread evenly and the results of GNSS observation have weaknesses in their vertical components. An alternative method for monitoring movement especially in vertical components is using combination of tide observation and satellite altimetry data. The measurement concept of satellite altimetry produces absolute sea level values and its not affected by plate movementsbesides tidal measurements which sensors are installed on the ground so that the sea level values are affected by land uplift or subsidence at that location. This study used main data namely long-period tidal observation data and GDR Geophysical Data Record satellite altimetry. GNSS observation data is needed as a control of vertical movement. The differences in spatial and temporal resolution of tidal observation and satellite altimetry are overcome by two methods namely the daily and monthly methods. Each of these methods will produce an annual SLR value Sea Level Rise from tidal data and satellite altimetry calculated using linear regression. The difference between the tidal and satellite altimetry data trends is compared with the vertical movement value from GNSS data. The results of the study indicate that the determination of vertical movement can be done using tidal observation and satellite altimetry data especially using the monthly method. The trend of vertical movements of tidal observation and satellite altimetry data shows the same pattern with land vertical movement of GNSS data even though the value is different. Therefore the method to determine vertical movement from hydrological data c', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(22, 'Geometric Accuracy Study of Orthorectification Based on Sensor Model Refinement in Imagery Subset Using ORFEO Toolbox OTB', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/41453', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Large scale base map can be obtained by various methods one of them is orthorectification process of remote sensing satellite imagery to eliminate the relief displacement caused by height variation of earth surface. To obtain a map images with good quality it requires additional data such as sensor model in the form of rational polynomial coefficients RPC surface model data and ground control points Satellite imageries with high resolution file size are relatively large. In order to process them high specification of hardwares were required. To overcome this by cutting only a portion of the images based on certain study areas were suffer from of georeference lost so it would not be able to orthorectified. On the other hand in several remote sensing software such as ESA SNAP and Orfeo Toolbox OTB subset or pixel extraction from satellite imagery preserve the imagery geometric sensor models. This research aimed at geometric accuracy of orthorectification carried out in a single scene of Pleiades Imagery within the Kepahiang Subdistrict located at Kepahiang Regency Bengkulu Province by using DEMNAS and the imagery refined sensor mode and ground control points taken using GPS Survey. Related with the raw imagery condition which consists of Panchromatic and multispectral bands this study were separated to assembly pan sharpening  and sensor model refinement stages prior to orthorectification carried out both in the original or full extent imagery and the result of subset extent imagery. After these processses taken place we measure the accuracy of each full and subset imagery.These procedures were carried out using Orfeo toolbox 6.6.0 in the Linux Mint 19 Operating system. From the process log running time in total were 7814.518 second for the full extent and 4321.95 seconds for the subset processess. And as a big data process the total of full extent imageries was 83.15 GB while the subset size was only 30.73 GB. The relative accuracy of the full extent and its subset i', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(23, 'Development of Spatio-Temporal Database Prototype For Management of 4-Dimensional Cadastre Object In Indonesia', '2019-01-30', 'https://jurnal.ugm.ac.id/jgise/article/view/41680', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'The dynamics of the Indonesian population has increased causing the need for cadastral objects to increase. 2D and 3D cadastral objects change over time. Cadastral objects have spatial and juridical data changes every day. These changes can be caused by the transfer of rights changes of rights split and merging cadastral objects. Changes are recorded and stored as a history of cadastral objects 4-dimensional cadastre. Historical data on cadastral objects can be categorized as one of the big data in the cadastre sector based on the frequency of recording data. The data can be used to track changes in cadastral objects so that they can avoid disputes. Spatial data in this case is very vulnerable data to cause disputes if the shape position and size do not match the conditions in the field and need special attention in integrating with the juridical data. This paper aims to identify methods for storing spatial data of 4D cadastral objects that are suitable for Indonesia. The importance of storing cadastral objects and their history causes researchers and cadastre experts in the world to formulate international standards in managing spatial and juridical data along with a history of cadastral objects 4D cadastre. LADM is an international standard conceptual model ISO 19152 which can show the legacy of a cadastral object expressed in RRR Rights Restriction and Responsibility. In LADM there is a VersionedObject class that represents various versions or a history of spatial units object registration owner and administration. Several studies conducted by researchers in the world were compared in this paper to find methods for applying LADM and VersionedObject classes. That methods were implemented in this paper to design a database of spatio-temporal 4D cadastre. Finally a prototype of spatial-temporal database will be produced to manage 4D cadastral objects.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index');
INSERT INTO `article` (`article_ID`, `title`, `date`, `url`, `source`, `publisher`, `description`, `type`, `format`, `repo_url`) VALUES
(24, 'Study of parcels-based Land Use Planning in Urban areas dan Rural Areas  Case Study of Mantrijeron Sub-district Yogyakarta City and Bambanglipuro Sub-district Bantul Regency', '2019-06-24', 'https://jurnal.ugm.ac.id/jgise/article/view/41848', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'The Land Use Planning LUP-Neraca Penatagunaan TanahNPGT is a balance between land availability and the needs of tenure use and utilization of land according to the Regional Spatial Plan RTRW function area. LUP is arranged sectorally and regionally. Examples of sectoral LUP are rice field planning and plantation field planning. While regional LUP is arranged at a certain administrative level. So far LUP has been prepared based on zones regions that are adjusted to the RTRW functions area. The LUP at the sub-district administrative level began to be initiated and to be implemented after almost all of district city LUPs were implemented. Sub-district LUP was supported by the availability of the Subdistrict Spatial Detail Plan RDTR on a 15.000 scale which became a reference in the permittance of space utilization so that the subdistrict LUP was arranged on the same scale. In this paper an assessment of sub-district LUP was made based on the Parcels Map PBT that available in the land office. PBT displays land parcels based on land ownership and land tenure. LUP is carried out in urban areas and rural areas. Location of urban areas in Mantrijeron Sub-District Yogyakarta City while rural areas in Bambanglipuro Sub-District.The stages of sub-district LUP consist of  data collection inventory processing and analysis of data and compilation of results and discussion. The data collection inventory phase includes activities for preparing work maps and collecting primary data and supporting data. The processing and analysis stage includes data processing on sub-district LUP compilation with GIS application ArcGIS and LUP analysis. LUP analysis consists of  analysis of land use changes analysis of land use suitability and analysis of land availability. The stage of result preparation and discussion includes the preparation of the result of the analysis a comparison between two regions that were studied conclusions and recommendations. The result of the parcels-based sub-district ', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(25, 'GPS Technology Implementation for Sangihe Islands Movement Monitoring in 2017-2019', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51033', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Sangihe Islands belong to a complex tectonic area at the subduction of the Eurasian plate and the Philippine Sea. Sangihe subduction zones are complex subduction zone so that there is a need for continuous movement monitoring. Previous research had been carried out to monitor movement of the Sangihe subduction zone but no monitoring has been done in 2019. Therefore this study aims to monitor movement of Sangihe subduction zones with the latest observation data.This study aims to obtain velocity of Sangihe Islands plate movement during 2017 to 2019. Observation was performed using 3 monitoring control points for 7 days in 2019. While observation data from 2017 to 2018 were obtained from previous studies. Observations was carried out using GNSS differential method technology.Loosely constrained of weighted parameter was performed in least square adjustment of GNSS data daily processing while Kalman Filtering algorithm applied for combining multiyear GNSS data to estimate the velocity refer to ITRF 2014 using GAMITGLOBK.This study indicates that Sangihe Islands has horizontal movement to the Southeast with velocity vector of 1 to 2.16 cmyear. This results confirm the previous studies in that area.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(26, 'Analysis of the Effect of Land Use Planning and Land Value in Gamping Subdistrict Sleman D.I Yogyakarta from 2013 to 2018', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51076', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'ABSTRACT. Government policy is one of the factors that can affect land value in an area. One of the government policies is the determination of land use planning in the Regional Spatial Planning RTRW and Detailed Spatial Planning RDTR which are arranged by considering suitability harmony and balance of cultivation and protection functions time technology socio-cultural and defense security function. This research aims to find out and prove the relationship between the land value and the effect of land use planning on land value in Gamping District Sleman D.I Yogyakarta. In this research used land trade transactions in 2013 2014 2015 2016 2017and 2018 that obtained from the ATR  BPN office of Sleman Regency. These datas are then corrected by adjusting the data type and time correction. The results of the correction are used to form a land value model. Modeling land values was developed by using multiple linear regression analysis with independent variables such as land use planning RPL land use PL distance to main road JJU distance to housing JPR distance to downtown JPK distance to campus JKM fields wide LB distance to the district government center JPB and distance to subdistrict government center JPC. Evaluation model use determination test R2 t table test and the result of the evaluation model are tested with Coefficient of Variation COV. From these six years only in 2013 2014 2016 and 2017 land value modeling could be modeled. From the result of research it is known that the land use planning effect the land value. But only significantly affected in 2016. This indicates that the land use planning has little effect on land value. ', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(27, 'Coseismic Displacement Accumulation Between 1996 and 2019 Using A Global Empirical Law on Indonesia Continuously Operating Reference Station InaCORS', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51130', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Indonesia archipelago is one of the most populated country with active and complex tectonic zone in the world. Plate boundaries were assembled by four major plate which made the region not only vulnerable to earth-hazard but also prone to semi-dynamic reference frame. However influence of transient deformation such as coseismic displacement due to large amount of small to intermediate earthquakes  Mw 6 on the geodetic networks is remain poorly understood. Geospatial Information Agency occupied permanent and continuous GPS networks since 1996 but rapidly increase in 2010. Based on simulated empirical law of coseismic crustal deformation we estimate the cumulative displacement due to coseismic step on Indonesia Continuous Operating Reference Stations InaCORS. We utilize the position of the observation network and earthquake hypocentral with estimated moment magnitude. Our result suggesting small to intermediate earthquakes are indispensable for estimating secular motion and potentially contribute the cumulative offset associated with the transient postseismic deformation.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(28, 'Geovisual Analytics of Spatio-Temporal Earthquake Data in Indonesia', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51131', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Indonesia is one of the nations located in the Ring of Fire. Indonesia has a high level of geodynamic activities so that its often earthquake tectonics. The earthquakes are caused by Indonesia position located in the confluence of four main plates. At present the history of earthquake data in Indonesia has been accessible by the public. However general visualization which can present history earthquake in the form maps and summary statistics have not been available. Therefore this research aims to visualize the history of earthquake data interactively combining spatial data and temporal data. The data used for this research was obtained from BMKG website. The data variables used in this research include CORS stations and history of earthquake phenomenons between 2004 and 2019. The earthquake phenomenon consists of occurrence time coordinate position depth and magnitude. The data are processed using Ms Excel and ArcGIS Online Map then are visualized by Web AppBuilder for ArcGIS. The results of the data processing are maps presented in a dashboard with time-series animation and widgets features. We performed maps graphics and time-series animation as interactive visual interfaces and matched the tasks to visual analytics techniques that are capable to support them. In this paper we introduce the relationship between variables and present the visual analytics techniques using several example scenarios of Spatio-temporal earthquake data.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(29, 'Suitability Level Analysis of Google Maps Travel Time and Traffic Density Classification', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51134', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Traffic congestion is one of problem that occur in big cities therefore people need traffic information to determine traffic condition. One of many applications that provides traffic information is Google Maps. From the information generated there are insuitability between google mapss traffic update and travel time with the actual condition. So the aim of this study is to analyze the suitability level of traffic density classification and google maps travel time. Based on the speed range by Google the level of suitability can be determined while the google maps travel time is done by statistical tests. The statistical test used is a statistical test of two parameters using table t with 95 confidence level. The results of this study indicate that the level of suitability of the traffic classification only reaches 35. The low level of suitability is caused by network latency. While information on google maps travel time does not have a significant difference in actual time.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(30, 'Analysis of Sangihe Islands Movements derived from Recent GPS Observation', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51146', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Sangihe Islands is one of the districts located in the border region of the Republic of Indonesia precisely located in North Sulawesi Province which borders with the Philippines. Sangihe subduction zone is a subduction between the Sangihe plate and the Maluku sea plate. Di Leo et al. 2012. This situation causes the Sangihe Islands region to be very prone to earthquake and others disasters so mitigation efforts are needed to minimize casualties and losses in other material forms. One of these efforts is mapping the potential of earthquakes through Geodynamic studies which are represented at the point of deformation control. This study is using four times GNSS observations epoch 2015 2016 2017 and 2018 tied to ITRF 2014. The data used for 3D deformation analysis with the multiepoch method to calculate the movement speed of the Sangihe plate and simultaneous tectonic plate strain observation. The results of this study are the coordinates and accuracy values of monitoring point also the plate movement speed and annual tectonic plate strain values. The movement speed of the Sangihe plate is SGH1 point is having horizontal deformation of 9.88 mm  year to the southeast and vertical deformation descend by 58.66 mmyear. SGH3 point is having horizontal deformation of 12.74 mmyear to the southeast and vertical deformation descend by 18.51 mmyear. SGH4 point is having horizontal deformation of 19.04 mmyear to the southeast and vertical deformation descend by 5.27 mm year. This research also proves the hypothesis of a change in the volume of the Sangihe Islands tectonic plate based on the values of normal strain parameters and shear strain in the fraction of 10-6 to 10-4 strains.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(31, 'Calculation Of Sedimentation Rate at Sempor Reservoirs in 2018 Using Modified  Universal Soil Loss Equation Method MUSLE', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51156', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Sempor Reservoir located in the Telomoyo River Basin in the Serayu River region is categorized as one of the priority watersheds based on the 2015-2019 Strategic Plan of the Ministry of Environment and Forestry. Priority watershed is a watershed that gets more attention in controlling water pollution one of which is sedimentation. Watershed observation and management activities are needed for the reservoir to operate optimally. One of the observations and management activities of the Sempor Watershed is the calculation of sedimentation rate. In this research the sedimentation rate was calculated using the MUSLE method that included runoff parameter erodibility slope land cover and conservation factor. The Sempor watershed boundary is obtained through delineation of DEM. The calculation is done by utilizing a Geographic Information System GIS through analysis of soil type maps length and slope maps land cover and conservation maps with the boundaries of the Sempor Reservoir. Based on this result the Sempor Reservoir has a sedimentation rate of 166173500 tonsyear and a sedimentation thickness rate of 37259 mmyear. According to the provisions of the Ministry of Forestry in 2009 the rate of sedimentation thickness in the Sempor Reservoir is included in the medium class. The river as one of the potential means of sediment transport contributes to the rate of sediment thickness of 3.7256 mm year while for areas outside the river coverage it only 0.003 mmyear. The river has a major influence on sedimentation in the Sempor Reservoir.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index'),
(32, 'Estimating Land Value Change Post Land Consolidation of Gadingsari Village Bantul Regency Special Region of Yogyakarta Indonesia', '2019-12-30', 'https://jurnal.ugm.ac.id/jgise/article/view/51309', '2623-1182', 'Department of Geodetic Engineering, Faculty of Engineering, Universitas Gadjah Mada', 'Land is a resource with limited availability but has an ever-increasing demand. Land Consolidation is a realignment activity which can be an alternative in planning a regional development. Land Consolidation in Gadingsari Village is a Bantul Regency government program implemented in 2017 located in Nanggulan Patihan and Wonoroto Villages involving 200 land parcels  with 172 participants for land consolidation and 111467 m2 of land. Land Consolidation produces land that has good accessibility and regularity of land parcels so it may triggers an increase in land value. An increase in land value can be estimated by modeling the land value before and after land consolidation. One method that is often used in the modeling of land values is the multiple variable linear regression method. The method used in this study involves the price of land as the dependent variable and the independent variable namely 1 Road Class 2 Distance of land parcels to the Economic Center 3 Distance of land parcels to the Village Government 4 Distance between land parcels to the tourist site 5 Distance of land parcels to Health Facilities 6 Area 7 Distance of parcels to Main roads 8 Distance between land parcels of land to the beach and 9 Land Use. The model formed is then used to calculate the estimated value of land prices before and after the implementation of land consolidation. The estimated value of land produced by the land value model prior to land consolidation ranges from Rp. 11000 to Rp. 370000. While the estimated land value for the land value model after land consolidation ranges from Rp. 21000 to Rp. 605000.', 'Peer-reviewed Article', 'application/pdf', 'https://jurnal.ugm.ac.id/jgise/index');

-- --------------------------------------------------------

--
-- Table structure for table `article_to_creator`
--

CREATE TABLE `article_to_creator` (
  `article_to_creator` int(11) NOT NULL,
  `article_ID` int(11) DEFAULT NULL,
  `creator_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article_to_creator`
--

INSERT INTO `article_to_creator` (`article_to_creator`, `article_ID`, `creator_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 5),
(7, 3, 6),
(8, 3, 7),
(9, 4, 8),
(10, 4, 2),
(11, 5, 9),
(12, 5, 10),
(13, 6, 11),
(14, 6, 12),
(15, 7, 10),
(16, 7, 3),
(17, 7, 13),
(18, 8, 14),
(19, 8, 15),
(20, 8, 5),
(21, 9, 16),
(22, 10, 17),
(23, 10, 18),
(24, 11, 19),
(25, 11, 18),
(26, 12, 20),
(27, 12, 21),
(28, 12, 22),
(29, 13, 23),
(30, 14, 24),
(31, 14, 16),
(32, 14, 25),
(33, 14, 26),
(34, 14, 27),
(35, 15, 28),
(36, 15, 29),
(37, 15, 3),
(38, 15, 18),
(39, 15, 30),
(40, 16, 31),
(41, 17, 32),
(42, 18, 33),
(43, 19, 34),
(44, 19, 3),
(45, 19, 35),
(46, 20, 36),
(47, 21, 37),
(48, 22, 38),
(49, 22, 20),
(50, 23, 39),
(51, 23, 40),
(52, 23, 2),
(53, 24, 41),
(54, 25, 14),
(55, 25, 10),
(56, 25, 42),
(57, 25, 5),
(58, 25, 43),
(59, 25, 7),
(60, 25, 44),
(61, 26, 45),
(62, 26, 46),
(63, 27, 43),
(64, 27, 47),
(65, 27, 48),
(66, 27, 49),
(67, 27, 50),
(68, 28, 47),
(69, 28, 43),
(70, 28, 40),
(71, 28, 49),
(72, 28, 50),
(73, 29, 51),
(74, 29, 52),
(75, 30, 44),
(76, 30, 42),
(77, 31, 53),
(78, 31, 3),
(79, 31, 18),
(80, 32, 54),
(81, 32, 2);

-- --------------------------------------------------------

--
-- Table structure for table `article_to_subject`
--

CREATE TABLE `article_to_subject` (
  `article_to_subject` int(11) NOT NULL,
  `article_ID` int(11) DEFAULT NULL,
  `subject_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article_to_subject`
--

INSERT INTO `article_to_subject` (`article_to_subject`, `article_ID`, `subject_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 2),
(26, 26, 3),
(27, 27, 4),
(28, 28, 5),
(29, 29, 6),
(30, 30, 7),
(31, 31, 8),
(32, 32, 9);

-- --------------------------------------------------------

--
-- Table structure for table `creator`
--

CREATE TABLE `creator` (
  `creator_ID` int(11) NOT NULL,
  `creator_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creator`
--

INSERT INTO `creator` (`creator_ID`, `creator_name`) VALUES
(1, 'Rivandi, Yuri Gama'),
(2, 'Santosa, Purnama Budi'),
(3, 'Yulaikhah, Yulaikhah'),
(4, 'Pramumijoyo, Subagyo'),
(5, 'Widjajanti, Nurrohmat'),
(6, 'Emalia, Sherly Shinta'),
(7, 'Parseno, Parseno'),
(8, 'Hasri, Muhammad Irham Akbar'),
(9, 'Isnaini, Een Lujainatul'),
(10, 'Lestari, Dwi'),
(11, 'Prastyani, Ratna'),
(12, 'Basith, Abdul'),
(13, 'Sari, Rizki Iman'),
(14, 'Ulinnuha, Hilmiyati'),
(15, 'Sunantyo, Aris'),
(16, 'Sunardi, Bambang'),
(17, 'Rahili, Nurkhalis Rahili'),
(18, 'Cahyono, Bambang Kun'),
(19, 'Hastuti, Dwi Septri'),
(20, 'Bashit, Nurhadi'),
(21, 'Sukmono, Abdi'),
(22, 'Gumelar, Baskoro Agum'),
(23, 'Prasetyo, Yudo'),
(24, 'Kurniawan, Telly'),
(25, 'Rohadi, Supriyanto'),
(26, 'Perdana, Yusuf Hadi'),
(27, 'Setiadi, Tio Azhar Prakoso'),
(28, 'Muryamto, Rochmad'),
(29, 'Taftazani, Muhammad Iqbal'),
(30, 'Prasidya, Anindya Sricandra'),
(31, 'Situmorang, Parningotan Hasudungan'),
(32, 'Sabri, Laode M'),
(33, 'Oksaping, Arga Fondra'),
(34, 'Setiawan, Mohamad Bagas'),
(35, 'Andaru, Ruli'),
(36, 'Laksono, Dany'),
(37, 'Faridatunnisa, Maritsa'),
(38, 'Suprayogi, Andri'),
(39, 'Sulistyawati, Miranty Noor'),
(40, 'Aditya, Trias'),
(41, 'Prabowo, Hary Listantyo'),
(42, 'Heliani, Leni Sophia'),
(43, 'Pratama, Cecep'),
(44, 'Nugroho, Krishna Fitranto'),
(45, 'Al-Vatia, Tasya Vuji Al-Vatia Vuji'),
(46, 'Djojomartono, Prijono Nugroho'),
(47, 'Susanta, Febrian Fitryanik'),
(48, 'Ilahi, Ridho'),
(49, 'Khomaini, Alian Fathira'),
(50, 'Abdillah, Hadi Wijaya Kusuma'),
(51, 'Paramesti, Laksita Amelia'),
(52, 'Atunggal, Dedi'),
(53, 'Arini, Septi'),
(54, 'Astrisele, Agatha -');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_ID` int(11) NOT NULL,
  `subject_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_ID`, `subject_name`) VALUES
(1, ''),
(2, 'Earthquake, Sangihe, Subduction, Velocity, Geodynamic.'),
(3, 'land value, multiple linear regression analysis, land use planning'),
(4, 'GPS, Seismicity, Offset, Indonesia'),
(5, 'Dashboard, geovisualization, spatiotemporal analysis, disaster'),
(6, 'Google maps, E-GNSS, waktu tempuh, estimated time of arrival, kepadatan lalu lintas'),
(7, 'Sangihe Island, Geodynamics, Deformation, Speed, Strain'),
(8, 'Daerah Aliran Sungai, MUSLE, Laju Sedimentasi, Sempor'),
(9, 'Land Value, Land Consolidation');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `submission_ID` int(11) NOT NULL,
  `endpoint` varchar(100) NOT NULL,
  `endpoint_name` varchar(100) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `submission_status` enum('approved','rejected','waiting') DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `repo_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`submission_ID`, `endpoint`, `endpoint_name`, `submission_date`, `submission_status`, `username`, `repo_url`) VALUES
(1, 'https://elpub.architexturez.net/oai-pmh', 'ELPUB Digital Library', '2020-05-08', 'approved', 'tuser', 'https://elpub.architexturez.net/'),
(2, 'jaknfdkjssanfkjas', 'TEST', '2020-05-08', 'rejected', 'tuser', NULL),
(3, 'http://etheses.lse.ac.uk/cgi/oai2', 'LSE Theses Online', '2020-05-11', 'approved', 'tuser', 'http://etheses.lse.ac.uk/'),
(4, 'http://eprints.rclis.org/cgi/oai2', 'E-Prints in Library &amp; Information Science', '2020-05-12', 'waiting', 'tuser', 'http://eprints.rclis.org/'),
(5, 'https://jurnal.ugm.ac.id/jgise/oai', 'Journal of Geospatial Information Science and Engineering', '2020-05-12', 'approved', 'tuser', 'https://jurnal.ugm.ac.id/jgise/index');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `token`, `fname`, `lname`) VALUES
('admin', 'bd27216ebb0dc96adb937f16cbfa030d', 'test', 'user'),
('tuser', '9621c2888e858975a98355d043c65721', 'Test', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_ID`);

--
-- Indexes for table `article_to_creator`
--
ALTER TABLE `article_to_creator`
  ADD PRIMARY KEY (`article_to_creator`),
  ADD KEY `creator_ID` (`creator_ID`),
  ADD KEY `article_ID` (`article_ID`);

--
-- Indexes for table `article_to_subject`
--
ALTER TABLE `article_to_subject`
  ADD PRIMARY KEY (`article_to_subject`),
  ADD KEY `subject_ID` (`subject_ID`),
  ADD KEY `article_ID` (`article_ID`);

--
-- Indexes for table `creator`
--
ALTER TABLE `creator`
  ADD PRIMARY KEY (`creator_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_ID`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`submission_ID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `article_to_creator`
--
ALTER TABLE `article_to_creator`
  MODIFY `article_to_creator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `article_to_subject`
--
ALTER TABLE `article_to_subject`
  MODIFY `article_to_subject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `creator`
--
ALTER TABLE `creator`
  MODIFY `creator_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `submission_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_to_creator`
--
ALTER TABLE `article_to_creator`
  ADD CONSTRAINT `article_to_creator_ibfk_1` FOREIGN KEY (`creator_ID`) REFERENCES `creator` (`creator_ID`),
  ADD CONSTRAINT `article_to_creator_ibfk_2` FOREIGN KEY (`article_ID`) REFERENCES `article` (`article_ID`);

--
-- Constraints for table `article_to_subject`
--
ALTER TABLE `article_to_subject`
  ADD CONSTRAINT `article_to_subject_ibfk_1` FOREIGN KEY (`subject_ID`) REFERENCES `subject` (`subject_ID`),
  ADD CONSTRAINT `article_to_subject_ibfk_2` FOREIGN KEY (`article_ID`) REFERENCES `article` (`article_ID`);

--
-- Constraints for table `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
