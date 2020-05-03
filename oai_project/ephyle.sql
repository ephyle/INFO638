-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 03:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ephyle`
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
  `creator_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_ID`, `title`, `date`, `url`, `source`, `publisher`, `description`, `type`, `format`, `creator_ID`) VALUES
(1, 'Leading Together A Grounded Theory Study of Women', '2010-08-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=open-dissertations', 'Open Access Dissertations', 'Academic Commons', NULL, 'text', 'application/pdf', 1),
(2, 'Transmembrane Domain Structure and Function in the Erythropoietin Receptor', '2012-08-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=open-dissertations', 'Open Access Dissertations', 'Academic Commons', 'a dissertation', 'text', 'application/pdf', 2),
(3, 'Exploring Collaborative Stewardship of Government Information in the Southeast The ASERL Collaborative Federal Depository Program', '2016-01-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=library_articles', 'Library Faculty Publications', 'Academic Commons', 'There has long been great interest in the “collaborative stewardship” of federal government information among library deans and directors and documents librarians in the southeastern United States, who seek a new vision for managing federal depository collections that focuses on local needs and interests while also supporting these collections as a regional asset. In 2006 the Association of Southeastern Research Libraries (ASERL) took steps toward realizing a collaborative model of stewardship by establishing its first program to explore options for cooperative services and collection management of tangible federal government publications. This initiative was fueled both by concerns about diminished public access due to the increasing cost of managing, cataloging, storing, and preserving large collections of historic documents, as well as the increasing pressure on regional depositories to provide services and support to selective depositories during a time of static library budgets and decreasing staff expertise in government information. This chapter will describe the program, which has come to be known as the ASERL Collaborative Federal Depository Program.', 'text', 'application/pdf', 5),
(4, 'Tuftsin Promotes an Anti-Inflammatory Switch and Attenuates Symptoms in Experimental Autoimmune Encephalomyelitis', '2012-04-17', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=dpharm-articles', 'Department of Pharmacology Faculty Publications', 'Academic Commons', 'Multiple sclerosis (MS) is a demyelinating autoimmune disease mediated by infiltration of T cells into the central nervous system after compromise of the blood-brain barrier. We have previously shown that administration of tuftsin, a macrophage/microglial activator, dramatically improves the clinical course of experimental autoimmune encephalomyelitis (EAE), a well-established animal model for MS. Tuftsin administration correlates with upregulation of the immunosuppressive Helper-2 Tcell (Th2) cytokine transcription factor GATA-3. We now show that tuftsin-mediated microglial activation results in shifting microglia to an anti-inflammatory phenotype. Moreover, the T cell phenotype is shifted towards immunoprotection after exposure to tuftsin-treated activated microglia; specifically, downregulation of pro-inflammatory Th1 responses is triggered in conjunction with upregulation of Th2-specific responses and expansion of immunosuppressive regulatory T cells (Tregs). Finally, tuftsin-shifted T cells, delivered into animals via adoptive transfer, reverse the pathology observed in mice with established EAE. Taken together, our findings demonstrate that tuftsin decreases the proinflammatory environment of EAE and may represent a therapeutic opportunity for treatment of MS.', 'text', 'application/pdf', 9),
(5, 'The John Milton Digital Library', '2015-04-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1002&amp;context=library_articles', 'Library Faculty Publications', 'Academic Commons', 'The John Milton Digital Library (JMDL) is an online platform for scholars, researchers, students, professors, and information seekers interested in learning more about John Milton and his works. The JMDL aims to serve as an information and community resource for those wishing to study Milton’s works alongside critical reviews, biographical information, and upcoming and existing exhibitions that may be of interest to those in the field. It is the only digital library of its kind and offers a host of useful and intellectually stimulating content, while giving its users access to the complete works of John Milton, courtesy of the public domain. The JMDL will offer full text PDF downloads of all of Milton’s works, provide biographical information, collaborative online discussion spaces for intelligent conversation, and highlight critical reviews and exhibitions of Milton’s works. A mock digital library has been created and readers are invited to peruse for a better visual representation.', 'text', 'application/pdf', 10),
(6, 'EGP Spotlight', '2016-06-14', 'https://commons.library.stonybrook.edu/context/homepage_gallery/article/1002/type/native/viewcontent', 'Homepage Gallery', 'Academic Commons', 'https://commons.library.stonybrook.edu/homepage_gallery/1002/thumbnail.jpg', 'text', 'image/jpg', NULL),
(7, 'faculty publications', '2016-06-14', 'https://commons.library.stonybrook.edu/context/homepage_gallery/article/1001/type/native/viewcontent', 'Homepage Gallery', 'Academic Commons', 'https://commons.library.stonybrook.edu/homepage_gallery/1001/thumbnail.jpg', 'text', 'image/jpg', NULL),
(8, 'Continual Cell Deformation Induced via Attachment to Oriented Fibers Enhances Fibroblast Cell Migration', '2015-03-16', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1005&amp;context=dbme-articles', 'Department of Biomedical Engineering Faculty Publications', 'Academic Commons', 'Fibroblast migration is critical to the wound healing process. In vivo, migration occurs on fibrillar substrates, and previous observations have shown that a significant time lag exists before the onset of granulation tissue. We therefore conducted a series of experiments to understand the impact of both fibrillar morphology and migration time. Substrate topography was first shown to have a profound influence. Fibroblasts preferentially attach to fibrillar surfaces, and orient their cytoplasm for maximal contact with the fiber edge. In the case of en-mass cell migration out of an agarose droplet, fibroblasts on flat surfaces emerged with an enhanced velocity, v = 52μm/h, that decreases to the single cell value, v = 28μm/h within 24 hours and remained constant for at least four days. Fibroblasts emerging on fibrillar surfaces emerged with the single cell velocity, which remained constant for the first 24 hours and then increased reaching a plateau with more than twice the initial velocity within the next three days. The focal adhesions were distributed uniformly in cells on flat surfaces, while on the fibrillar surface they were clustered along the cell periphery. Furthermore, the number of focal adhesions for the cells on the flat surfaces remained constant, while it decreased on the fibrillar surface during the next three days. The deformation of the cell nuclei was found to be 50% larger on the fiber surfaces for the first 24 hours. While the mean deformation remained constant on the flat surface, it increased for the next three days by 24% in cells on fibers. On the fourth day, large actin/myosin fibers formed in cells on fibrillar surfaces only and coincided with a change from the standard migration mechanism involving extension of lamellipodia, and retraction of the rear, to one involving strong contractions oriented along the fibers and centered about the nucleus.', 'text', 'application/pdf', 15),
(9, 'Prostate Cancer Stem Cell-Targeted Efficacy of a New-Generation Taxoid SBT-1214 and Novel Polyenolic Zinc-Binding Curcuminoid CMC224', '2013-09-24', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1004&amp;context=dbme-articles', 'Department of Biomedical Engineering Faculty Publications', 'Academic Commons', 'Background\nProstate cancer is the second leading cause of cancer death among men. Multiple evidence suggests that a population of tumor-initiating, or cancer stem cells (CSCs) is responsible for cancer development and exceptional drug resistance, representing a highly important therapeutic target. The present study evaluated CSC-specific alterations induced by new-generation taxoid SBT-1214 and a novel polyenolic zinc-binding curcuminoid, CMC2.24, in prostate CSCs.  Principal Findings\nThe CD133high/CD44high phenotype was isolated from spontaneously immortalized patient-derived PPT2 cells and highly metastatic PC3MM2 cells. Weekly treatment of the NOD/SCID mice bearing PPT2- and PC3MM3-induced tumors with the SBT-1214 led to dramatic suppression of tumor growth. Four of six PPT2 and 3 of 6 PC3MM2 tumors have shown the absence of viable cells in residual tumors. In vitro, SBT-1214 (100nM-1µM; for 72 hr) induced about 60% cell death in CD133high/CD44+/high cells cultured on collagen I in stem cell medium (in contrast, the same doses of paclitaxel increased proliferation of these cells). The cytotoxic effects were increased when SBT-1214 was combined with the CMC2.24. A stem cell-specific PCR array assay revealed that this drug combination mediated massive inhibition of multiple constitutively up-regulated stem cell-related genes, including key pluripotency transcription factors. Importantly, this drug combination induced expression of p21 and p53, which were absent in CD133high/CD44high cells. Viable cells that survived this treatment regimen were no longer able to induce secondary spheroids, exhibited significant morphological abnormalities and died in 2-5 days.  Conclusions\nWe report here that the SBT-1214 alone, or in combination with CMC2.24, possesses significant activity against prostate CD133high/CD44+/high tumor-initiating cells. This drug combination efficiently inhibits expression of the majority of stem cell-related genes and pluripotency transcription facto', 'text', 'application/pdf', 26),
(10, 'Development of a Conditional Mesd Mesoderm Development Allele for Functional Analysis of the Low-Density Lipoprotein Receptor-Related Family in Defined Tissues', '2013-10-04', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1003&amp;context=dbme-articles', 'Department of Biomedical Engineering Faculty Publications', 'Academic Commons', 'The Low-density lipoprotein receptor-Related Protein (LRP) family members are essential for diverse processes ranging from the regulation of gastrulation to the modulation of lipid homeostasis. Receptors in this family bind and internalize a diverse array of ligands in the extracellular matrix (ECM). As a consequence, LRPs regulate a wide variety of cellular functions including, but not limited to lipid metabolism, membrane composition, cell motility, and cell signaling. Not surprisingly, mutations in single human LRPs are associated with defects in cholesterol metabolism and development of atherosclerosis, abnormalities in bone density, or aberrant eye vasculature, and may be a contributing factor in development of Alzheimer’s disease. Often, members of this diverse family of receptors perform overlapping roles in the same tissues, complicating the analysis of their function through conventional targeted mutagenesis. Here, we describe development of a mouse Mesd (Mesoderm Development) conditional knockout allele, and demonstrate that ubiquitous deletion of Mesdusing Cre-recombinase blocks gastrulation, as observed in the traditional knockout and albino-deletion phenotypes. This conditional allele will serve as an excellent tool for future characterization of the cumulative contribution of LRP members in defined tissues.', 'text', 'application/pdf', 31),
(11, 'Does Reproductive Investment Decrease Telomere Length in Menidia menidia', '2015-05-04', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1002&amp;context=dbme-articles', 'Department of Biomedical Engineering Faculty Publications', 'Academic Commons', 'Given finite resources, intense investment in one life history trait is expected to reduce investment in others. Although telomere length appears to be strongly tied to age in many taxa, telomere maintenance requires energy. We therefore hypothesize that telomere maintenance may trade off against other life history characters. We used natural variation in laboratory populations of Atlantic silversides (Menidia menidia) to study the relationship between growth, fecundity, life expectancy, and relative telomere length. In keeping with several other studies on fishes, we found no clear dependence of telomere length on age. However, we did find that more fecund fish tended to have both reduced life expectancy and shorter telomeres. This result is consistent with the hypothesis that there is a trade-off between telomere maintenance and reproductive output.', 'text', 'application/pdf', 33),
(12, 'Computational Optogenetics Empirically-Derived Voltage- and Light-Sensitive Channelrhodopsin-2 Model', '2013-09-12', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=dbme-articles', 'Department of Biomedical Engineering Faculty Publications', 'Academic Commons', 'Channelrhodospin-2 (ChR2), a light-sensitive ion channel, and its variants have emerged as new excitatory optogenetic tools not only in neuroscience, but also in other areas, including cardiac electrophysiology. An accurate quantitative model of ChR2 is necessary for in silicoprediction of the response to optical stimulation in realistic tissue/organ settings. Such a model can guide the rational design of new ion channel functionality tailored to different cell types/tissues. Focusing on one of the most widely used ChR2 mutants (H134R) with enhanced current, we collected a comprehensive experimental data set of the response of this ion channel to different irradiances and voltages, and used these data to develop a model of ChR2 with empirically-derived voltage- and irradiance- dependence, where parameters were fine-tuned via simulated annealing optimization. This ChR2 model offers: 1) accurate inward rectification in the current-voltage response across irradiances; 2) empirically-derived voltage- and light-dependent kinetics (activation, deactivation and recovery from inactivation); and 3) accurate amplitude and morphology of the response across voltage and irradiance settings. Temperature-scaling factors (Q10) were derived and model kinetics was adjusted to physiological temperatures. Using optical action potential clamp, we experimentally validated model-predicted ChR2 behavior in guinea pig ventricular myocytes. The model was then incorporated in a variety of cardiac myocytes, including human ventricular, atrial and Purkinje cell models. We demonstrate the ability of ChR2 to trigger action potentials in human cardiomyocytes at relatively low light levels, as well as the differential response of these cells to light, with the Purkinje cells being most easily excitable and ventricular cells requiring the highest irradiance at all pulse durations. This new experimentally-validated ChR2 model will facilitate virtual experimentation in neural and cardiac optogenetics ', 'text', 'application/pdf', 41),
(13, 'Comparison of Fecal Microbiota in Children with Autism Spectrum Disorders and Neurotypical Siblings in the Simons Simplex Collection', '2015-10-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=ams-articles', 'Department of Applied Mathematics & Statistics Faculty Publications', 'Academic Commons', 'In order to assess potential associations between autism spectrum disorder (ASD) phenotype, functional GI disorders and fecal microbiota, we recruited simplex families, which had only a single ASD proband and neurotypical (NT) siblings, through the Simons Simplex Community at the Interactive Autism Network (SSC@IAN). Fecal samples and metadata related to functional GI disorders and diet were collected from ASD probands and NT siblings of ASD probands (age 7–14). Functional gastrointestinal disorders (FGID) were assessed using the parent-completed ROME III questionnaire for pediatric FGIDs, and problem behaviors were assessed using the Child Behavior Check List (CBCL). Targeted quantitative polymerase chain reaction (qPCR) assays were conducted on selected taxa implicated in ASD, including Sutterella spp.,Bacteroidetes spp. and Prevotella spp. Illumina sequencing of the V1V2 and the V1V3 regions of the bacterial 16S rRNA genes from fecal DNA was performed to an average depth of 208,000 and 107,000 high-quality reads respectively. Twenty-five of 59 ASD children and 13 of 44 NT siblings met ROME III criteria for at least one FGID. Functional constipation was more prevalent in ASD (17 of 59) compared to NT siblings (6 of 44, P = 0.035). The mean CBCL scores in NT siblings with FGID, ASD children with FGID and ASD without FGID were comparably higher (58–62 vs. 44, P < 0.0001) when compared to NT children without FGID. There was no significant difference in macronutrient intake between ASD and NT siblings. There was no significant difference in ASD severity scores between ASD children with and without FGID. No significant difference in diversity or overall microbial composition was detected between ASD children with NT siblings. Exploratory analysis of the 16S rRNA sequencing data, however, identified several low abundance taxa binned at the genus level that were associated with ASD and/or first order ASD*FGID interactions (FDR <0.1).', 'text', 'application/pdf', 54),
(14, 'Elevated Expression of Squamous Cell Carcinoma Antigen SCCA Is Associated with Human Breast Carcinoma', '2011-04-19', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=dmgm-articles', 'Department of Molecular Genetics and Microbiology Faculty Publications', 'Academic Commons', 'Squamous cell carcinoma antigen (SCCA) belongs to the serine protease inhibitor (Serpin) family of proteins. Elevated expression of SCCA has been used as a biomarker for aggressive squamous cell carcinoma (SCC) in cancers of the cervix, lung, head and neck, and liver. However, SCCA expression in breast cancer has not been investigated. Immunohistochemical analysis of SCCA expression was performed on tissue microarrays containing breast tumor tissues (n = 1,360) and normal breast epithelium (n = 124). SCCA expression was scored on a tiered scale (0-3) independently by two evaluators blind to the patient\'s clinical status. SCCA expression was observed in Grade I (0.3%), Grade II (2.5%), and Grade III (9.4%) breast cancers (p<0.0001). Comparing tissues categorized into the three non-metastatic TNM stages, I-III, SCCA positivity was seen in 2.4% of Stage I cancers, 3.1% of Stage II cancers, and 8.6% of Stage III breast cancers (p = 0.0005). No positive staining was observed in normal/non-neoplastic breast tissue (0 out of 124). SCCA expression also correlated to estrogen receptor/progesterone receptor (ER/PR) double-negative tumors (p = 0.0009). Compared to SCCA-negative patients, SCCA-positive patients had both a worse overall survival and recurrence-free survival (p<0.0001 and p<0.0001, respectively). This study shows that SCCA is associated with both advanced stage and high grade human breast carcinoma, and suggests the necessity to further explore the role of SCCA in breast cancer development and treatment.', 'text', 'application/pdf', 60),
(15, 'The Cell CycleRegulated Genes of Schizosaccharomyces pombe', '2005-06-28', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=dmgm-articles', 'Department of Molecular Genetics and Microbiology Faculty Publications', 'Academic Commons', 'Many genes are regulated as an innate part of the eukaryotic cell cycle, and a complex transcriptional network helps enable the cyclic behavior of dividing cells. This transcriptional network has been studied in Saccharomyces cerevisiae (budding yeast) and elsewhere. To provide more perspective on these regulatory mechanisms, we have used microarrays to measure gene expression through the cell cycle of Schizosaccharomyces pombe (fission yeast). The 750 genes with the most significant oscillations were identified and analyzed. There were two broad waves of cell cycle transcription, one in early/mid G2 phase, and the other near the G2/M transition. The early/mid G2 wave included many genes involved in ribosome biogenesis, possibly explaining the cell cycle oscillation in protein synthesis in S. pombe. The G2/M wave included at least three distinctly regulated clusters of genes: one large cluster including mitosis, mitotic exit, and cell separation functions, one small cluster dedicated to DNA replication, and another small cluster dedicated to cytokinesis and division.S. pombe cell cycle genes have relatively long, complex promoters containing groups of multiple DNA sequence motifs, often of two, three, or more different kinds. Many of the genes, transcription factors, and regulatory mechanisms are conserved between S. pombe and S. cerevisiae. Finally, we found preliminary evidence for a nearly genome-wide oscillation in gene expression: 2,000 or more genes undergo slight oscillations in expression as a function of the cell cycle, although whether this is adaptive, or incidental to other events in the cell, such as chromatin condensation, we do not know.', 'text', 'application/pdf', 68),
(16, 'IKK in Myeloid Cells Controls the Host Response to Lethal and Sublethal Francisella tularensis LVS Infection', '2013-01-22', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=dbcb-articles', 'Department of Biochemistry and Cell Biology Faculty Publications', 'Academic Commons', 'Background\nThe NF-κB activating kinases, IKKα and IKKβ, are key regulators of inflammation and immunity in response to infection by a variety of pathogens. Both IKKα and IKKβ have been reported to modulate either pro- or anti- inflammatory programs, which may be specific to the infectious organism or the target tissue. Here, we analyzed the requirements for the IKKs in myeloid cells in vivo in response to Francisella tularensis Live Vaccine Strain (Ft. LVS) infection.  Methods and Principal Findings\nIn contrast to prior reports in which conditional deletion of IKKβ in the myeloid lineage promoted survival and conferred resistance to an in vivo group B streptococcus infection, we show that mice with a comparable conditional deletion (IKKβ cKO) succumb more rapidly to lethal Ft. LVS infection and are unable to control bacterial growth at sublethal doses. Flow cytometry analysis of hepatic non-parenchymal cells from infected mice reveals that IKKβ inhibits M1 classical macrophage activation two days post infection, which has the collateral effect of suppressing IFN-γ+ CD8+ T cells. Despite this early enhanced inflammation, IKKβ cKO mice are unable to control infection; and this coincides with a shift toward M2a polarized macrophages. In comparison, we find that myeloid IKKα is dispensable for survival and bacterial control. However, both IKKα and IKKβ have effects on hepatic granuloma development. IKKα cKO mice develop fewer, but well-contained granulomas that accumulate excess necrotic cells after 9 days of infection; while IKKβ cKO mice develop numerous micro-granulomas that are less well contained.  Conclusions\nTaken together our findings reveal that unlike IKKα, IKKβ has multiple, contrasting roles in this bacterial infection model by acting in an anti-inflammatory capacity at early times towards sublethal Ft. LVS infection; but in spite of this, macrophage IKKβ is also a critical effector for host survival and efficient pathogen clearance.', 'text', 'application/pdf', 70),
(17, 'A Functional Bacterium-to-Plant DNA Transfer Machinery of Rhizobium etli', '2016-03-11', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=dbccb-articles', 'Biochemistry & Cell Biology Faculty Publications', 'Academic Commons', 'Different strains and species of the soil phytopathogen Agrobacterium possess the ability to transfer and integrate a segment of DNA (T-DNA) into the genome of their eukaryotic hosts, which is mainly mediated by a set of virulence (vir) genes located on the bacterial Ti-plasmid that also contains the T-DNA. To date, Agrobacterium is considered to be unique in its capacity to mediate genetic transformation of eukaryotes. However, close homologs of the virgenes are encoded by the p42a plasmid of Rhizobium etli; this microorganism is related toAgrobacterium, but known only as a symbiotic bacterium that forms nitrogen-fixing nodules in several species of beans. Here, we show that R. etli can mediate functional DNA transfer and stable genetic transformation of plant cells, when provided with a plasmid containing a T-DNA segment. Thus, R. etli represents another bacterial species, besides Agrobacterium, that encodes a protein machinery for DNA transfer to eukaryotic cells and their subsequent genetic modification.    Author Summary \nSince the discovery of gene transfer from Agrobacterium to host plants in the late 1970s, this bacterial pathogen has been widely used in research and biotechnology to generate transgenic plants. Agrobacterium’s infection process relies on a set of virulence proteins that mediate the transfer of a segment of its own DNA (T-DNA) into the host cell genome. To date,Agrobacterium is believed to be the only prokaryote with the capability of cross-kingdoms gene transfer. However, homologs of the Agrobacterium’s virulence proteins are found in some symbiotic plant-associated bacterial species, belonging to the Rhizobium genus. Here we show that one of these species, Rhizobium etli, encodes a complete set of virulence proteins and is able to mediate transfer and integration of DNA into host-plant cell genome, when provided with a T-DNA. This is the first time that a bacterium-to-plant DNA transfer machinery encoded by a non-Agrobacterium species is sh', 'text', 'application/pdf', 72),
(18, 'Flavodoxin-Like Proteins Protect Candida albicans from Oxidative Stress and Promote Virulence', '2015-09-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1002&amp;context=dmgm-articles', 'Department of Molecular Genetics and Microbiology Faculty Publications', 'Academic Commons', 'The fungal pathogen Candida albicans causes lethal systemic infections in humans. To better define how pathogens resist oxidative attack by the immune system, we examined a family of four Flavodoxin-Like Proteins (FLPs) in C. albicans. In agreement with previous studies showing that FLPs in bacteria and plants act as NAD(P)H quinone oxidoreductases, a C.albicans quadruple mutant lacking all four FLPs (pst1Δ, pst2Δ, pst3Δ, ycp4Δ) was more sensitive to benzoquinone. Interestingly, the quadruple mutant was also more sensitive to a variety of oxidants. Quinone reductase activity confers important antioxidant effects because resistance to oxidation was restored in the quadruple mutant by expressing either Escherichia coli wrbA or mammalian NQO1, two distinct types of quinone reductases. FLPs were detected at the plasma membrane in C. albicans, and the quadruple mutant was more sensitive to linolenic acid, a polyunsaturated fatty acid that can auto-oxidize and promote lipid peroxidation. These observations suggested that FLPs reduce ubiquinone (coenzyme Q), enabling it to serve as an antioxidant in the membrane. In support of this, a C. albicans coq3Δ mutant that fails to synthesize ubiquinone was also highly sensitive to oxidative stress. FLPs are critical for survival in the host, as the quadruple mutant was avirulent in a mouse model of systemic candidiasis under conditions where infection with wild type C. albicans was lethal. The quadruple mutant cells initially grew well in kidneys, the major site of C. albicans growth in mice, but then declined after the influx of neutrophils and by day 4 post-infection 33% of the mice cleared the infection. Thus, FLPs and ubiquinone are important new antioxidant mechanisms that are critical for fungal virulence. The potential of FLPs as novel targets for antifungal therapy is further underscored by their absence in mammalian cells.    Author Summary \nOxidative damage is a fundamental problem for cells and a particular challenge fo', 'text', 'application/pdf', 76),
(19, 'Neuroimmune and Neuropathic Responses of Spinal Cord and Dorsal Root Ganglia in Middle Age', '2015-08-20', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=doa-articles', 'Department of Anesthesiology Faculty Publications', 'Academic Commons', 'Prior studies of aging and neuropathic injury have focused on senescent animals compared to young adults, while changes in middle age, particularly in the dorsal root ganglia (DRG), have remained largely unexplored. 14 neuroimmune mRNA markers, previously associated with peripheral nerve injury, were measured in multiplex assays of lumbar spinal cord (LSC), and DRG from young and middle-aged (3, 17 month) naïve rats, or from rats subjected to chronic constriction injury (CCI) of the sciatic nerve (after 7 days), or from aged-matched sham controls. Results showed that CD2, CD3e, CD68, CD45, TNF-α, IL6, CCL2, ATF3 and TGFβ1 mRNA levels were substantially elevated in LSC from naïve middle-aged animals compared to young adults. Similarly, LSC samples from older sham animals showed increased levels of T-cell and microglial/macrophage markers. CCI induced further increases in CCL2, and IL6, and elevated ATF3 mRNA levels in LSC of young and middle-aged adults. Immunofluorescence images of dorsal horn microglia from middle-aged naïve or sham rats were typically hypertrophic with mostly thickened, de-ramified processes, similar to microglia following CCI. Unlike the spinal cord, marker expression profiles in naïve DRG were unchanged across age (except increased ATF3); whereas, levels of GFAP protein, localized to satellite glia, were highly elevated in middle age, but independent of nerve injury. Most neuroimmune markers were elevated in DRG following CCI in young adults, yet middle-aged animals showed little response to injury. No age-related changes in nociception (heat, cold, mechanical) were observed in naïve adults, or at days 3 or 7 post-CCI. The patterns of marker expression and microglial morphologies in healthy middle age are consistent with development of a para-inflammatory state involving microglial activation and T-cell marker elevation in the dorsal horn, and neuronal stress and satellite cell activation in the DRG. These changes, however, did not affect the es', 'text', 'application/pdf', 80),
(20, 'N-acetylglucosamine Regulates Virulence Properties in Microbial Pathogens', '2015-07-30', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1003&amp;context=dmgm-articles', 'Department of Molecular Genetics and Microbiology Faculty Publications', 'Academic Commons', 'There is growing evidence that the sugar N-acetylglucosamine (GlcNAc) plays diverse roles in cell signaling pathways that impact the virulence properties of microbes and host cells. GlcNAc is already well known as a ubiquitous structural component at the cell surface that forms part of bacterial cell wall peptidoglycan, cell wall chitin in fungi and parasites, and extracellular matrix glycosaminoglycans of animal cells. Chitin and peptidoglycan have been previously linked to cell signaling as they can stimulate responses in plant and animal host cells [1–3]. Recent studies now indicate that GlcNAc released from these polymers can also activate cell signaling via several different mechanisms [4–6]. The role of these new GlcNAc signaling pathways in the regulation of virulence factors will be the focus of this review.', 'text', 'application/pdf', 82),
(21, 'Local and Regional Determinants of an Uncommon Functional Group in Freshwater Lakes and Ponds', '2015-06-29', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=doee-articles', 'Ecology & Evolution Faculty Publications', 'Academic Commons', 'A combination of local and regional factors and stochastic forces is expected to determine the occurrence of species and the structure of communities. However, in most cases, our understanding is incomplete, with large amounts of unexplained variation. Using functional groups rather than individual species may help explain the relationship between community composition and conditions. In this study, I used survey data from freshwater lakes and ponds to understand factors that determine the presence of the floating plant functional group in the northeast United States. Of the 176 water bodies surveyed, 104 (59.1%) did not contain any floating plant species. The occurrence of this functional group was largely determined by local abiotic conditions, which were spatially autocorrelated across the region. A model predicting the presence of the floating plant functional group performed similarly to the best species-specific models. Using a permutation test, I also found that the observed prevalence of floating plants is no different than expected by random assembly from a species pool of its size. These results suggest that the size of the species pool interacts with local conditions in determining the presence of a functional group. Nevertheless, a large amount of unexplained variation remains, attributable to either stochastic species occurrence or incomplete predictive models. The simple permutation approach in this study can be extended to test alternative models of community assembly.', 'text', 'application/pdf', 83),
(22, 'Aberrant DNA Methylation Implications in Racial Health Disparity', '2016-04-25', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=dbme-articles', 'Department of Biomedical Engineering Faculty Publications', 'Academic Commons', 'Background     Incidence and mortality rates of colorectal carcinoma (CRC) are higher in African Americans (AAs) than in Caucasian Americans (CAs). Deficient micronutrient intake due to dietary restrictions in racial/ethnic populations can alter genetic and molecular profiles leading to dysregulated methylation patterns and the inheritance of somatic to germline mutations.  Materials and Methods     Total DNA and RNA samples of paired tumor and adjacent normal colon tissues were prepared from AA and CA CRC specimens. Reduced Representation Bisulfite Sequencing (RRBS) and RNA sequencing were employed to evaluate total genome methylation of 5’-regulatory regions and dysregulation of gene expression, respectively. Robust analysis was conducted using a trimming-and-retrieving scheme for RRBS library mapping in conjunction with the BStool toolkit.  Results     DNA from the tumor of AA CRC patients, compared to adjacent normal tissues, contained 1,588 hypermethylated and 100 hypomethylated differentially methylated regions (DMRs). Whereas, 109 hypermethylated and 4 hypomethylated DMRs were observed in DNA from the tumor of CA CRC patients; representing a 14.6-fold and 25-fold change, respectively. Specifically; CHL1, 4 anti-inflammatory genes (i.e., NELL1, GDF1, ARHGEF4, and ITGA4), and 7 miRNAs (of which miR-9-3p and miR-124-3p have been implicated in CRC) were hypermethylated in DNA samples from AA patients with CRC. From the same sample set, RNAseq analysis revealed 108 downregulated genes (including 14 ribosomal proteins) and 34 upregulated genes (including POLR2B and CYP1B1 [targets of miR-124-3p]) in AA patients with CRC versus CA patients.  Conclusion     DNA methylation profile and/or products of its downstream targets could serve as biomarker(s) addressing racial health disparity.', 'text', 'application/pdf', 90),
(23, 'Developmental system drift and flexibility in evolutionary trajectories', '2001-12-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=doee-articles', 'Ecology & Evolution Faculty Publications', 'Academic Commons', 'The comparative analysis of homologous characters is a staple of evolutionary developmental biology and often involves extrapolating from experimental data in model organisms to infer developmental events in non-model organisms. In order to determine the general importance of data obtained in model organisms, it is critical to know how often and to what degree similar phenotypes expressed in different taxa are formed by divergent developmental processes. Both comparative studies of distantly related species and genetic analysis of closely related species indicate that many characters known to be homologous between taxa have diverged in their morphogenetic or gene regulatory underpinnings. This process, which we call “developmental system drift” (DSD), is apparently ubiquitous and has significant implications for the flexibility of developmental evolution of both conserved and evolving characters. Current data on the population genetics and molecular mechanisms of DSD illustrate how the details of developmental processes are constantly changing within evolutionary lineages, indicating that developmental systems may possess a great deal of plasticity in their responses to natural selection.', 'text', 'application/pdf', 91),
(24, 'Ocean Acidification Accelerates the Growth of Two Bloom-Forming Macroalgae', '2016-05-13', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=somas_articles', 'School of Marine & Atmospheric Sciences Faculty Publications', 'Academic Commons', 'While there is growing interest in understanding how marine life will respond to future ocean acidification, many coastal ecosystems currently experience intense acidification in response to upwelling, eutrophication, or riverine discharge. Such acidification can be inhibitory to calcifying animals, but less is known regarding how non-calcifying macroalgae may respond to elevated CO2. Here, we report on experiments performed during summer through fall with North Atlantic populations of Gracilaria and Ulva that were grown in situ within a mesotrophic estuary (Shinnecock Bay, NY, USA) or exposed to normal and elevated, but environmentally realistic, levels of pCO2 and/or nutrients (nitrogen and phosphorus). In nearly all experiments, the growth rates of Gracilaria were significantly increased by an average of 70% beyond in situ and control conditions when exposed to elevated levels of pCO2 (pUlva was more complex as this alga experienced significantly (pUlva. Across all experiments, elevated pCO2significantly increased Ulva growth rates by 30% (pp>0.05). The δ13C content of both Gracilaria and Ulva decreased two-to-three fold when grown under elevated pCO2 (p', 'text', 'application/pdf', 93),
(25, 'Mid-IR Emissivity Spectra of Mg- and Ca- Carbonates Oxides and Hydroxides', '2013-01-01', 'https://commons.library.stonybrook.edu/context/geodata/article/1000/type/native/viewcontent', 'Geosciences Research Data', 'Academic Commons', 'We used three methods—spectral index mapping, linear spectral mixture analysis, and factor analysis and target transformation—to determine if carbonate decomposition products, including lime (CaO), periclase (MgO), portlandite (Ca(OH)2), and brucite (Mg(OH)2), are present on the surface of Mars. Using an expanded spectral library that includes decomposition products of calcite and magnesite, we deconvolved a binned emissivity data set from the Mars Global Surveyor Thermal Emission Spectrometer (MGS-TES). The deconvolution model indicates that anhydrous carbonates are not present at kilometer scales above the TES detection limit; however, carbonate decomposition products may be present at or above the TES detection limit in northeast Syrtis Major and several other small regions on Mars. The model results are supported by spectral index mapping and factor analysis and target transformation of TES data in this region. The volcanic setting of the detections may indicate the interaction of Syrtis Major lavas with subsurface carbonates, or, alternatively, the eruption of carbonate-bearing lavas that were subsequently devolatilized by impacts or later lava flows.', 'text', 'text/plain', 94),
(26, 'Translation Standing Vigil for the Day to Come by Michel Foucault', '2015-06-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=cscl-articles', 'Cultural Studies and Comparative Literature Faculty Publications', 'Academic Commons', 'Michel Foucault’s “Standing Vigil for the Day to Come” was a review of Roger Laporte’s novel, La Veille, published by Gallimard earlier that year. Although Laporte’s work never received the wide readership it deserved, Foucault held it in high esteem, praising it in his assessment as one of the “most original” and “most difficult” of his time and, subsequently, urging Derrida to read it. This article is most appropriately situated in the series of literary reviews Foucault composed between 1961 and 1966, in which his marked attempts to understand the relationship between language and thought drew him to the works of Roussel, Klossowski, Hölderlin, Mallarmé, and, of course, Laporte. Foucault finds Laporte’s treatment of the subject-matter particularly satisfying because it provides a non-reductive account of thought and its relationship to language; thought is neither identical with nor distinct from language. Foucault sees Laporte as relying on an important Nietzschean insight that thought is both too fundamental and too archaic to be reduced to philosophy or to require a Cartesian ego. In this way La Veille is naturally of interest to Foucault because it deals with the relationship of a writer to an anonymous other; it is this other — not the writer — that makes writing possible. With the role of the subject de-emphasized, Foucault finds in Laporte a starting point for talking about language in contemporary literature and thought in post Cartesian philosophy.', 'text', 'application/pdf', 96),
(27, 'Surface mineralogy of martian low-albedo regions from MGS-TES data Implications for crustal evolution and surface alteration', '2007-01-01', 'http://onlinelibrary.wiley.com/doi/10.1029/2006JE002727/abstract', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'Mars Global Surveyor Thermal Emission Spectrometer (MGS-TES) data are used to derive the modal mineralogy of spectrally distinct Martian low-albedo regions and to identify spatial trends in mineralogic assemblages. Results from this work are consistent with the major results of previous spectroscopic studies: (1) Plagioclase and clinopyroxene are the dominant minerals of most southern highlands regions, (2) the northern plains exhibit the lowest pyroxene abundance within Martian low-albedo regions, and (3) the highest concentrations of high-silica phase(s) are found in the northern plains, Solis Planum and a few southern high-latitude regions. Low-albedo regions may be classified into four units on the basis of relative abundances of plagioclase, pyroxene, and high-silica phase(s). Unit distributions between ±45° latitude exhibit moderate correlation with distinct provinces (e.g., Syrtis Major, Aonium Sinus) defined by large-scale morphology, elevation, and to some extent, surface age, suggesting that the spectral and compositional differences between these units are more strongly controlled by original bedrock mineralogy than by surface-atmosphere interactions and alteration. Syrtis Major exhibits a difference in mineralogy from the surrounding highlands suggesting a differing degree of fractional crystallization, assimilation, or source region composition. Areas with thick crust near the Tharsis Plateau exhibit lower abundances of olivine and greater plagioclase/pyroxene ratios than surrounding highland terrains, suggesting that magmas in this region may have undergone increased olivine fractionation. Regions where surface alteration is more likely to be the primary control on observed spectral signatures are the high-latitude areas (>45°), where globally, surfaces dominated by high-silica phase(s) are most commonly found.', 'text', NULL, 98),
(28, 'Quantitative Compositional Analysis of Sedimentary Materials Using Thermal Emission Spectroscopy 1 Application to Sedimentary Rocks', '2015-01-01', 'http://onlinelibrary.wiley.com/doi/10.1002/2015JE004863/full', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'Thermal emission spectroscopy is used to determine the mineralogy of sandstone and mudstone rocks as part of an investigation of linear spectral mixing between sedimentary constituent phases. With widespread occurrences of sedimentary rocks on the surface of Mars, critical examination of the accuracy associated with quantitative models of mineral abundances derived from thermal emission spectra of sedimentary materials is necessary. Although thermal emission spectroscopy has been previously proven to be a viable technique to obtain quantitative mineralogy from igneous and metamorphic materials, sedimentary rocks, with natural variation of composition, compaction, and grain size, have yet to be examined. In this work, we present an analysis of the thermal emission spectral (~270–1650 cm−1) characteristics of a suite of 13 sandstones and 14 mudstones. X-ray diffraction and traditional point counting procedures were all evaluated in comparison with thermal emission spectroscopy. Results from this work are consistent with previous thermal emission spectroscopy studies and indicate that bulk rock mineral abundances can be estimated within 11.2% for detrital grains (i.e., quartz and feldspars) and 14.8% for all other mineral phases present in both sandstones and mudstones, in comparison to common in situ techniques used for determining bulk rock composition. Clay-sized to fine silt-sized grained phase identification is less accurate, with differences from the known ranging from ~5 to 24% on average. Nevertheless, linear least squares modeling of thermal emission spectra is an advantageous technique for determining abundances of detrital grains and sedimentary matrix and for providing a rapid classification of clastic rocks.', 'text', NULL, 102),
(29, 'Thermal Infrared and Raman Microspectroscopy of Moganite-bearing Rocks', '2013-01-01', 'http://ammin.geoscienceworld.org/content/98/1/78', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'We present the first thermal infrared reflectance spectral characterization of moganite and mixtures of moganite with microcrystalline quartz. We find that for relatively high (>50%) abundances of moganite, the absolute reflectance for samples is significantly reduced. Using microscopic-Raman (~1 μm/pixel) measurements, we estimate the moganite content for various samples. We then compare Raman-derived moganite abundances with microscopic infrared reflectance (25 μm/pixel) spectra to determine the effects of increasing moganite abundance on thermal infrared spectra. We find that moganite is broadly spectrally similar to quartz with major reflectance maxima located between ~1030 and 1280 cm−1 and ~400 and 600 cm−1; but there are characteristic differences in the peak shapes, peak center positions, and especially the relative peak reflectance magnitudes. For regions with high (>50%) moganite content, the relative magntitudes of the reflectance maxima at 1157 and 1095 cm−1(R1095/R1157 band ratio) can be used to estimate the moganite content. This work demonstrates the utility of thermal infrared microspectroscopy in isolating phases that are intimately mixed in a sample, and has applications in planetary science, where constituent phases of quartz-rich sedimentary rocks can be identified using remote or in situ thermal infrared spectroscopy.', 'text', NULL, 104),
(30, 'Global spectral classification of martian low-albedo regions with MGS-TES data', '2007-01-01', 'http://onlinelibrary.wiley.com/doi/10.1029/2006JE002726/pdf', 'Department of Geosciences Faculty Publications', 'Academic Commons', NULL, 'text', 'text/plain', 107),
(31, 'The Perfect Storm Examining User Experience and Conducting a Usability Test to Investigate a Disruptive Academic Library Web Site Redevelopment', '2016-02-16', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=library_articles', 'Library Faculty Publications', 'Academic Commons', 'The researchers conducted a task-based usability test of the effectiveness of online research beginning on the library Web site homepage. The participants included five university faculty members, six graduate students, and six undergraduate students. All participants reported feeling satisfied with their overall research experience, though most were unable to effectively complete all the research tasks of the test. The researchers identified weaknesses in the approach and process of many participants, and overall usability issues of the library discovery tool and other library Web site pages and research interfaces. Findings indicate the need to strategically incorporate self-service information literacy and research skills help into the library Web site, and to implement navigation and design changes to the library homepage, discovery tool interface, online catalog, and across all the library\'s Web services.', 'text', 'application/pdf', 110);
INSERT INTO `article` (`article_ID`, `title`, `date`, `url`, `source`, `publisher`, `description`, `type`, `format`, `creator_ID`) VALUES
(32, 'How Do You Like Your Books Print or Digital An Analysis on Print and E-book Usage at The Graduate School of Education', '2016-11-29', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1005&amp;context=library_articles', 'Library Faculty Publications', 'Academic Commons', 'The shift from physical materials to digital holdings has slowly infiltrated libraries across the globe, and librarians are struggling to make sense of these intangible, and sometimes fleeting, resources. Materials budgets have shifted to accommodate large journal and database subscriptions, single-title article access, and most recently, e-book holdings. This analysis measures the impact of digital acquisitions in an academic setting during a highly transformative period of library practices. The study finds that both electronic and print books are valuable to the academic research community at GSE.', 'text', 'application/pdf', 111),
(33, 'The Dido Story in Accounts of Early Modern European Imperialism An Anthology', '2017-04-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=eng-articles', 'Department of English Faculty Publications', 'Academic Commons', 'This anthology of excerpts from histories and travel accounts composed during the seventeenth, eighteenth, and nineteenth centuries features representations of indigenous oral traditions about the founding of European colonies in Sri Lanka, Melaka, Gujarat, Cambodia, Manila, Jakarta, Taiwan, New York and the Cape of Good Hope. According to these accounts, the colonists first requested as much land as the hide of an ox could cover, and then cut that hide into strips and claimed all the land they could encircle. The “ox-hide measure” is a widely-attested folkloric motif. The introduction, however, questions assumptions about the reliability of oral traditions and looks to history instead of folklore for an explanation for the colonial parallels. It proposes that Portuguese, Spanish and Dutch colonists actually performed the “hide trick,” emulating the classical story of the Phoenician Queen Dido’s foundation of Carthage.', 'text', 'application/pdf', 112),
(34, 'Morphological Structural and Spectral Characteristics of Amorphous Iron Sulfates', '2015-01-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=geo-articles', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'Current or past brine hydrologic activity on Mars may provide suitable conditions for the formation of amorphous ferric sulfates. Once formed, these phases would likely be stable under current Martian conditions, particularly at low- to mid-latitudes. Therefore, we consider amorphous iron sulfates (AIS) as possible components of Martian surface materials. Laboratory AIS were created through multiple synthesis routes and characterized with total X-ray scattering, thermogravimetric analysis, scanning electron microscopy, visible/near-infrared (VNIR), thermal infrared (TIR), and Mössbauer techniques. We synthesized amorphous ferric sulfates (Fe(III)2(SO4)3 · ~ 6–8H2O) from sulfate-saturated fluids via vacuum dehydration or exposure to low relative humidity (', 'text', 'application/pdf', 116),
(35, 'Feldspathic rocks on Mars Compositional constraints from infrared spectroscopy and possible formation mechanisms', '2015-01-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1005&amp;context=geo-articles', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'Rare feldspar-dominated surfaces on Mars were previously reported based on near-infrared (NIR) spectral data and were interpreted to consist of anorthosite or felsic rocks. Using thermal infrared (TIR) data over the feldspar detections with the largest areal extent in Nili Patera and Noachis Terra, we rule out felsic interpretations. Basaltic or anorthositic compositions are consistent with TIR measurements, but the geologic contexts for these regions do not support a plutonic origin. Laboratory NIR spectral measurements demonstrate that large plagioclase crystals (>~840 μm) can be detected in mixtures with as much as 50 vol % mafics, which is higher than the previously stated requirement of no more than 15% mafics. Thus, anorthositic or felsic interpretations need not be invoked for all NIR-based feldspar detections. Plagioclase-enriched basaltic eruptive products can be formed from Martian basalts through partial crystallization at the base of a thick crust, followed by low-pressure crystallization of the residual liquids.', 'text', 'application/pdf', 118),
(36, 'Identification and quantification of diffuse fresh submarine groundwater discharge via airborne thermal infrared remote sensing', '2015-01-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1006&amp;context=geo-articles', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'Airborne thermal infrared (TIR) overflights were combined with shoreline radionuclide surveys to investigate submarine groundwater discharge (SGD) along the north shore of Long Island, NY between June 2013 and September 2014. Regression equations developed for three distinct geomorphological environments suggest a positive linear relationship between the rate of diffuse SGD and the spatial extent of the observed coastal TIR anomalies; such a relationship provides quantitative evidence of the ability to use TIR remote sensing as a tool to remotely identify and measure SGD. Landsat TIR scenes were unable to resolve any of the 18 TIR anomalies identified during the various airborne overflights. Two locations were studied in greater detail via 222Rn time series and manual seepage meters in order to understand why specific shoreline segments did not exhibit a TIR anomaly. SGD at the first site, located within a large, diffuse TIR anomaly, was composed of a mixture of fresh groundwater and circulated seawater with elevated levels of nitrate. In contrast, SGD at the second site, where no coastal TIR anomaly was observed, was composed of circulated seawater with negligible nitrate. Despite the compositional differences in seepage, both sites were similar in discharge magnitude, with average time series 222Rn derived SGD rates equal to 18 and 8 cm d−1 for the TIR site and non-TIR site, respectively. Results suggest that TIR remote sensing has the ability to identify locations of a mixture between diffuse fresh and circulated seawater SGD. If TIR anomalies can be demonstrated to represent a mixture between fresh and circulated seawater SGD, then the cumulative area of the TIR anomalies may be used to estimate the fresh fraction of SGD relative to the cumulative area of the seepage face, and thus allows for improved SGD derived nutrient flux calculations on a regional scale.', 'text', 'application/pdf', 123),
(37, 'Scanning Labyrinthulomycete Genomes for Yeast Transcription Factor Binding Site Motifs', '2017-01-01', 'https://commons.library.stonybrook.edu/context/inter-data/article/1000/type/native/viewcontent', 'Interdisciplinary Research Data', 'Academic Commons', 'To develop broadly useful methods for the genetic manipulation of Labyrinthulomycetes (a diverse group of ubiquitous osmoheterotrophic marine protists), it is essential to understand the similarities and differences in regulation of gene expression among them. Toward this end we have used FIMO from the MEME suite (http://meme-suite.org/doc/fimo.html) to identify potential transcription factor binding sites in each of the three available genome sequences:   Aplanochytrium kerguelense PBS07, Schizochytrium aggregatum ATCC 28209, and Aurantiochytrium limacinum ATCC MYA-1381', 'text', 'text/plain', 125),
(38, 'Labyrinthulomycete Genomes Codon Usage', '2017-01-01', 'https://commons.library.stonybrook.edu/context/inter-data/article/1001/type/native/viewcontent', 'Interdisciplinary Research Data', 'Academic Commons', 'We analyzed the recently available whole genome sequences from two thraustochytrids (Aurantiochytrium limacinum ATCC MYA-1381, Schizochytrium aggregatum ATCC 28209) and one aplanochytrid (Aplanochytrium PBS07) We then calculated the genome-wide relative synonymous codon usage, codon frequencies and GC content for predicted coding sequences from each of the three species. We compared these to other stramenopiles: the diatoms Phaeodactylum tricornutum and Thalassiosira pseudonana, and the oomycete Phytophthora sojae, as well as to the ascomycete fungus Saccharomyces cerevisiae.    For further description, see: https://you.stonybrook.edu/labyrinthulomycetes/coding-properties/   For code used to generate these calculations, see: https://www.protocols.io/view/labyrinthulomycete-genome-codon-usage-calculation-hgyb3xw', 'text', 'text/plain', 127),
(39, 'Storie vere ed eroine dei romanzi Rappresentare la Somalia in Ilaria Alpi La ragazza che voleva raccontare linferno e Non dirmi che hai paura', '2016-01-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=cscl-articles', 'Cultural Studies and Comparative Literature Faculty Publications', 'Academic Commons', 'This article analyses Gigliola Alvisi’s Ilaria Alpi: La ragazza che voleva raccontare l’inferno [Ilaria Alpi: The Young Woman Who Wanted to Narrate the Hell] (2014) and Giuseppe Catozzella’s Non dirmi che hai paura [Don’t Tell Me You Are Afraid] (2014), two novels that deal with two recent events in Somali and Italian history, the killing of the journalist Ilaria Alpi in Mogadishu in 1994 and the death of Samia Yosuf Omar while she was trying to reach the Italian shores from Libya by boat. Alvisi’s text is analysed in comparison with other fictional and journalistic representations of Ilaria Alpi, while Non dirmi che hai paura is examined through what Catozzella considers the two constitutive dimensions of the novel: documentation and identification. Drawing on Stefano Jossa’s reflections on the construction of literary heroes, the article challenges Alvisi’s and Catozzella’s claims that they represent ‘true stories’. The article also argues that the main characters of these literary works are portrayed as heroines and role models for the emancipation of Muslim women.', 'text', 'application/pdf', 128),
(40, 'Comparison of E-Book Acquisitions Strategies Across Disciplines Finds Differences in Cost and Usage', '2017-01-01', 'https://ejournals.library.ualberta.ca/index.php/EBLIP/article/view/28651', 'Library Faculty Publications', 'Academic Commons', 'Objective – To compare e-book cost-usage data across different acquisitions styles and disciplines.Design – Case study.Setting – A public research university serving an annual enrollment of over 49,000 students and employing more than 3,000 faculty members in the Southern United States. Subjects – Cost and usage data from 15,006 e-books acquired by the Library through packages, firm orders, and demand-driven acquisitions. Methods – Data was collected from publishers and vendors across the three acquisitions strategies. Usage, cost, and call number information was collected for the materials purchased via firm order or demand driven acquisitions and these were sorted into disciplines based on the call number assigned. Discipline, cost, and use were determined for each package collection as a whole because information on individual titles was not provided by the publishers. The authors then compared usage and cost across disciplines and acquisitions strategies. Main Results – Overall, e-books purchased in packages had a 50% use rate and an average cost per use of $3.39, e-books purchased through firm orders had a 52% use rate and an average cost per use of $22.21, and e-books purchased through demand driven acquisitions had an average cost per use of $8.88 and 13.9 average uses per title. Package purchasing was cost effective for science, technology, engineering, and mathematics (STEM) materials and medicine (MED) materials. Demand driven acquisition was a particularly good strategy for humanities and social sciences (HSS) titles. Conclusion – There are differences between the acquisitions strategies and disciplines in cost and use. Firm orders had a higher cost per use than the other acquisitions strategies.', 'text', NULL, 129),
(41, 'How are Non-numerical Prognostic Statements Interpreted and are They Subject to Positive Bias', '2017-01-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1000&amp;context=psyc-articles', 'Department of Psychology Faculty Publications', 'Academic Commons', 'Objectives: Frank, clear, communication with family members of terminally-ill or incapacitated patients has important implications for well being, satisfaction with care, and sound decision making. However, numerical prognostic statements, particularly more negative ones, have been found to be interpreted in a positively-biased manner. Less precise non-numerical statements, preferred by physicians, and particularly statements using threatening terms (“dying” vs. “surviving”) may be even more subject to such biases.   Methods: Participants (N = 200) read non-numerical prognostic statements framed in terms of dying or surviving and indicated their interpretation of likelihood of survival.   Results: Even the most extreme statements were not interpreted to indicate 100% likelihood of surviving or dying, (e.g., “they will definitely survive,” 92.77%). The poorness of prognoses was associated with more optimistically biased interpretations but this was not, however, affected by the wording of the prognoses in terms of dying versus surviving.   Conclusions: The findings illuminate the ways in which commonly-used non-numeric language may be understood in numeric terms during prognostic discussions and provide further evidence of recipients’ propensity for positive bias.', 'text', 'application/pdf', 132),
(42, 'Indigeneity and Early American Literature', '2017-02-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1003&amp;context=eng-articles', 'Department of English Faculty Publications', 'Academic Commons', 'Summary   Indigeneity is the abstract noun form of “indigenous,” defined by the Oxford English Dictionary as “Born or produced naturally in a land or region”; in conventional usage, it refers primarily to “aboriginal inhabitants or natural products.” Indigeneity has a conceptually complex relationship to American literary history before 1830, insofar as, for most of the history of the field, “early American literature” has predominately referred to works written in European languages, scripts, and genres, produced by peoples of European origin and their descendants. Within this framework, until Native Americans began adopting and adapting these languages, scripts, and genres for their own use, there were no literary works that might be simultaneously characterized as “indigenous” and “early American.”   Four conceptualizations of the relationship between indigeneity and early American literature provide a basis for this history and its historiography. Three of these pertain to cultural works produced at least in part by Native Americans: these are (1) written representations of Native American spoken performances, or “oral literature”; (2) writings that register various degrees of participation in literacy practices by Native American converts to Christianity; and (3) cultural works that employ non-alphabetic indigenous sign-systems, or “indigenous literacies.” These formulations variously challenge conventional ideas about literature and related terms such as authorship and writing; in the case of the Christian Indians, they can also challenge notions of indigeneity.   A fourth conceptualization of the relationship between indigeneity and early American literature is premised on narrow definitions of these seemingly antithetical terms: it pertains to the aesthetic project of some settler-colonial authors who hoped to connect their prose and verse works to the domestic landscape, to assert their cultural independence from England, and to enact the replacement of Nat', 'text', 'application/pdf', 133),
(43, 'Non-linear Hydroxyl Radical Formation Rate in Dispersions Containing Mixtures of Pyrite and Chalcopyrite Particles', '2017-06-01', 'http://dx.doi.org/10.1016/j.gca.2017.03.011', 'Department of Geosciences Faculty Publications', 'Academic Commons', 'The formation of hydroxyl radicals was studied in mixed pyrite-chalcopyrite dispersions in water using the conversion rate of adenine as a proxy for hydroxyl radical formation rate. Experiments were conducted as a function of pH, presence of phosphate buffer, surface loading, and pyrite-to-chalcopyrite ratio.\nThe results indicate that hydroxyl radical formation rate in mixed systems is non-linear with respect to the rates in the pure endmember dispersions. The only exception is a set of experiments in which phosphate buffer is used. In the presence of phosphate buffer, the hydroxyl radical formation is suppressed in mixtures and the rate is close to that predicted based on the reaction kinetics of the pure endmembers.\nThe non-linear hydroxyl radical formation in dispersions containing mixtures of pyrite and chalcopyrite is likely the result of two complementary processes. One is the fact that pyrite and chalcopyrite form a galvanic couple. In this arrangement, chalcopyrite oxidation is accelerated, while pyrite passes electrons withdrawn from chalcopyrite to molecular oxygen, the oxidant. The incomplete reduction of molecular oxygen leads to the formation of hydrogen peroxide and hydroxyl radical. The galvanic coupling appears to be augmented by the fact that chalcopyrite generates a significant amount of hydrogen peroxide upon dispersal in water. This hydrogen peroxide is then available for conversion to hydroxyl radical, which appears to be facilitated by pyrite as chalcopyrite itself produces only minor amounts of hydroxyl radical. In essence, pyrite is a “co-factor” that facilitates the conversion of hydrogen peroxide to hydroxyl radical. This conversion reaction is a surface-mediated reaction.\nGiven that hydroxyl radical is one of the most reactive species in nature, the formation of hydroxyl radicals in aqueous systems containing chalcopyrite and pyrite has implications for the stability of organic molecules, biomolecules, the viability of microbes, and exposu', 'text', 'application/pdf', 135),
(44, 'Haverstraw Bay Benthic Habitat Characterization', '2015-07-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1001&amp;context=somas_articles', 'School of Marine & Atmospheric Sciences Faculty Publications', 'Academic Commons', 'High-resolution backscatter and bathymetric maps created by multibeam and sidescan sonar surveys were used to identify five different seafloor bottom types within Haverstraw Bay. Grab samples were collected within these areas to characterize sediment properties and macrofauna. Selected sampling locations were revisited and seafloor images were obtained with an HD underwater camera. Multivariate analysis was used to identify the most important factors explaining variations in community structure. Results indicated that categorical variables defining bottom types, grain size, and water depth can explain about 42% of community structure variation. In addition, shell length data collected for Rangia cuneata, an introduced species, indicated that successful spawning and recruitment occurred for this species during 2011, 2012, and 2013. An attempt to relate 2012-2014 hydrophone location data for Atlantic and Shortnose sturgeon to identified bottom types did not produce clear bottom preferences.', 'text', 'application/pdf', 138),
(45, 'Transatlantic Grammars Lindley Murray and William Cobbett', '2017-04-01', 'https://commons.library.stonybrook.edu/cgi/viewcontent.cgi?article=1004&amp;context=eng-articles', 'Department of English Faculty Publications', 'Academic Commons', NULL, 'text', 'application/pdf', 139),
(46, 'Benthic Mapping for Habitat Classification in the Peconic Estuary Phase I Groundtruth Studies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141);

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
(2, 2, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 4, 6),
(7, 4, 7),
(8, 4, 8),
(9, 4, 9),
(10, 5, 10),
(11, 8, 11),
(12, 8, 12),
(13, 8, 13),
(14, 8, 14),
(15, 8, 15),
(16, 9, 16),
(17, 9, 17),
(18, 9, 18),
(19, 9, 19),
(20, 9, 20),
(21, 9, 21),
(22, 9, 22),
(23, 9, 23),
(24, 9, 24),
(25, 9, 25),
(26, 9, 26),
(27, 10, 27),
(28, 10, 28),
(29, 10, 29),
(30, 10, 30),
(31, 10, 31),
(32, 11, 32),
(33, 11, 33),
(34, 12, 34),
(35, 12, 35),
(36, 12, 36),
(37, 12, 37),
(38, 12, 38),
(39, 12, 39),
(40, 12, 40),
(41, 12, 41),
(42, 13, 42),
(43, 13, 43),
(44, 13, 44),
(45, 13, 45),
(46, 13, 46),
(47, 13, 47),
(48, 13, 48),
(49, 13, 49),
(50, 13, 50),
(51, 13, 51),
(52, 13, 52),
(53, 13, 53),
(54, 13, 54),
(55, 14, 55),
(56, 14, 56),
(57, 14, 57),
(58, 14, 58),
(59, 14, 59),
(60, 14, 60),
(61, 15, 61),
(62, 15, 62),
(63, 15, 63),
(64, 15, 64),
(65, 15, 65),
(66, 15, 66),
(67, 15, 67),
(68, 15, 68),
(69, 16, 69),
(70, 16, 70),
(71, 17, 71),
(72, 17, 72),
(73, 18, 73),
(74, 18, 74),
(75, 18, 75),
(76, 18, 76),
(77, 19, 77),
(78, 19, 78),
(79, 19, 79),
(80, 19, 80),
(81, 20, 81),
(82, 20, 82),
(83, 21, 83),
(84, 22, 84),
(85, 22, 85),
(86, 22, 86),
(87, 22, 87),
(88, 22, 88),
(89, 22, 89),
(90, 22, 90),
(91, 23, 91),
(92, 24, 92),
(93, 24, 93),
(94, 25, 94),
(95, 26, 95),
(96, 26, 96),
(97, 27, 97),
(98, 27, 98),
(99, 28, 99),
(100, 28, 100),
(101, 28, 101),
(102, 28, 102),
(103, 29, 103),
(104, 29, 104),
(105, 30, 105),
(106, 30, 106),
(107, 30, 107),
(108, 31, 108),
(109, 31, 109),
(110, 31, 110),
(111, 32, 111),
(112, 33, 112),
(113, 34, 113),
(114, 34, 114),
(115, 34, 115),
(116, 34, 116),
(117, 35, 117),
(118, 35, 118),
(119, 36, 119),
(120, 36, 120),
(121, 36, 121),
(122, 36, 122),
(123, 36, 123),
(124, 37, 124),
(125, 37, 125),
(126, 38, 126),
(127, 38, 127),
(128, 39, 128),
(129, 40, 129),
(130, 41, 130),
(131, 41, 131),
(132, 41, 132),
(133, 42, 133),
(134, 43, 134),
(135, 43, 135),
(136, 44, 136),
(137, 44, 137),
(138, 44, 138),
(139, 45, 139),
(140, 46, 140),
(141, 46, 141);

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
(1, 'Gunn, Madeline'),
(2, 'Brett, Ian'),
(3, 'Martin, Heath'),
(4, 'Cole-Bennett, Cheryle'),
(5, 'McAninch, Sandra'),
(6, 'Muzhou, Wu'),
(7, 'Nissen, Julien'),
(8, 'Chen, Emily'),
(9, 'Tsirka, Stella'),
(10, 'Haugh, Dana'),
(11, 'Qin, Sisi'),
(12, 'Ricotta, Vincent'),
(13, 'Simon, Marcia'),
(14, 'Clark, Richard A. F.'),
(15, 'Rafailovich, Miriam'),
(16, 'Botchkina, Galina I.'),
(17, 'Zuniga, Edison S.'),
(18, 'Rowehl, Rebecca H.'),
(19, 'Park, Rosa'),
(20, 'Bhalla, Rahuldev'),
(21, 'Bialkowska, Agnieszka B.'),
(22, 'Johnson, Francis'),
(23, 'Golbu, Lorne M.'),
(24, 'Zhang, Yu'),
(25, 'Ojima, Iwao'),
(26, 'Shroyer, Kenneth R.'),
(27, 'Taibi, Andrew V.'),
(28, 'Lighthouse, Janet K.'),
(29, 'Grady, Richard C.'),
(30, 'Shroyer, Kenneth R.'),
(31, 'Holdener, Bernadette'),
(32, 'Gao, Jin'),
(33, 'Munch, Stephan B.'),
(34, 'Williams, John C.'),
(35, 'Xu, Jianjin'),
(36, 'Lu, Zhongju'),
(37, 'Klimas, Aleksandra'),
(38, 'Chen, Xuxin'),
(39, 'Ambrosi, Christina M.'),
(40, 'Cohen, Ira S.'),
(41, 'Entcheva, Emilia'),
(42, 'Son, Joshua S.'),
(43, 'Zheng, Ling J.'),
(44, 'Rowehl, Leahana M.'),
(45, 'Li, Ellen'),
(46, 'Tian, Xinyu'),
(47, 'Zhang, Yuanhao'),
(48, 'Zhu, Wei'),
(49, 'Litcher-Kelly, Leighann'),
(50, 'Gadow, Kenneth D.'),
(51, 'Gathungu, Grace'),
(52, 'Robertson, Charles E.'),
(53, 'Ir, Diana'),
(54, 'Frank, Daniel N.'),
(55, 'Catanzaro, Joseph M.'),
(56, 'Guerriero, Jennifer L.'),
(57, 'Liu, Jingxuan'),
(58, 'Sheshadri, Namratha'),
(59, 'Chen, John J.'),
(60, 'Zhong, Wei-Xing'),
(61, 'Oliva, Anna'),
(62, 'Rosebrock, Adan'),
(63, 'Ferrezuelo, Francisco'),
(64, 'Chen, Haiying'),
(65, 'Pyne, Saumyadipta'),
(66, 'Skiena, Steve'),
(67, 'Futcher, Bruce'),
(68, 'Leatherwood, Janet'),
(69, 'Samaniego, Sylvia'),
(70, 'Marcu, Kenneth B.'),
(71, 'Lacroix, Benoît'),
(72, 'Citovsky, Vitaly'),
(73, 'Li, Lifang'),
(74, 'Naseem, Shamoon'),
(75, 'Sharma, Sahil'),
(76, 'Konopka, James B.'),
(77, 'Galbavy, William'),
(78, 'Kaczocha, Martin'),
(79, 'Puopolo, Michelino'),
(80, 'Rebecchi, Mario'),
(81, 'Naseem, Shamoon'),
(82, 'Konopka, James B.'),
(83, 'McCann, Michael James'),
(84, 'Wang, Xuefeng'),
(85, 'Ji, Ping'),
(86, 'Zhang, Yuanhao'),
(87, 'LaComb, Joseph F.'),
(88, 'Tian, Xinyu'),
(89, 'Li, Ellen'),
(90, 'Williams, Jennie L.'),
(91, 'True, John R.'),
(92, 'Young, Craig S'),
(93, 'Gobler, Christopher J'),
(94, 'Glotch, Timothy'),
(95, 'Harvey, Robert'),
(96, 'Woodward, Elise'),
(97, 'Rogers, Deanne'),
(98, 'Christensen, Philip R'),
(99, 'Thorpe, Michael T'),
(100, 'Rogers, Deanne'),
(101, 'Bristow, Thomas'),
(102, 'Pan, Cong'),
(103, 'Hardgrove, Craig'),
(104, 'Rogers, Deanne'),
(105, 'Rogers, Deanne'),
(106, 'Bandfield, Joshua L'),
(107, 'Christensen, Philip R'),
(108, 'Chase, Darren'),
(109, 'Trapasso, Elizabeth'),
(110, 'Tolliver, Robert'),
(111, 'Haugh, Dana'),
(112, 'Newman, Andrew'),
(113, 'Sklute, Elizabeth'),
(114, 'Jensen, Heidi'),
(115, 'Rogers, Deanne'),
(116, 'Reeder, Richard'),
(117, 'Rogers, Deanne'),
(118, 'Nekvasil, Hanna'),
(119, 'Tamborski, Joseph T'),
(120, 'Rogers, A Deanne'),
(121, 'Bokuniewicz, Henry J'),
(122, 'Cochran, J Kirk'),
(123, 'Young, Caitlin R'),
(124, 'Collier, Jackie L'),
(125, 'Rest, Joshua'),
(126, 'Rest, Joshua'),
(127, 'Collier, Jackie L'),
(128, 'Brioni, Simone'),
(129, 'Costello, Laura'),
(130, 'Moyer, Anne'),
(131, 'Siess, Samantha'),
(132, 'Bhinder, Sumeet'),
(133, 'Newman, Andrew'),
(134, 'Schoonen, Martin A'),
(135, 'Kaur, J.'),
(136, 'Cerrato, Robert M.'),
(137, 'Flanagan, Alison M.'),
(138, 'Flood, Roger D.'),
(139, 'Manning, Peter J'),
(140, 'Cerrato, Robert M.'),
(141, 'Maher, Nicole P.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_ID`),
  ADD KEY `creator_ID` (`creator_ID`);

--
-- Indexes for table `article_to_creator`
--
ALTER TABLE `article_to_creator`
  ADD PRIMARY KEY (`article_to_creator`),
  ADD KEY `creator_ID` (`creator_ID`),
  ADD KEY `article_ID` (`article_ID`);

--
-- Indexes for table `creator`
--
ALTER TABLE `creator`
  ADD PRIMARY KEY (`creator_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `article_to_creator`
--
ALTER TABLE `article_to_creator`
  MODIFY `article_to_creator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `creator`
--
ALTER TABLE `creator`
  MODIFY `creator_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`creator_ID`) REFERENCES `creator` (`creator_ID`);

--
-- Constraints for table `article_to_creator`
--
ALTER TABLE `article_to_creator`
  ADD CONSTRAINT `article_to_creator_ibfk_1` FOREIGN KEY (`creator_ID`) REFERENCES `creator` (`creator_ID`),
  ADD CONSTRAINT `article_to_creator_ibfk_2` FOREIGN KEY (`article_ID`) REFERENCES `article` (`article_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
