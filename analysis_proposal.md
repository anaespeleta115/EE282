### EE282 Analysis Proposal - Ana Espeleta 02/09/2026

Understanding how microbial communities respond to antibiotic
perturbation requires moving beyond taxonomic surveys based on marker
genes and toward genome-informed descriptions of community composition.
While 16S rRNA sequencing has been essential for characterizing
microbiome structure, it provides limited resolution for identifying
species-level changes and does not capture strain-level variation or
genomic content. Shotgun metagenomic sequencing offers a complementary
approach that enables more precise characterization of microbial
communities by directly sampling genomic DNA from all organisms present
(Quince et al.). The goal of this analysis project is to generate
species-level profiles from metagenomic sequencing data of stool-derived
in vitro microbial communities and to compare these profiles across
timepoints and with existing 16S-based measurements of community
composition.

This analysis focuses on metagenomic sequencing data from in vitro
communities derived from subjects sampled before and after an antibiotic
perturbation. These communities were cultured under controlled
laboratory conditions and sequenced using shotgun metagenomics. Because
these datasets already exist, they provide an ideal starting point for
developing a reproducible bioinformatic workflow for metagenomic
community profiling. The project will not include colonization data at
this stage; instead, it will focus on establishing reliable
species-level characterization of the individual communities that form
the foundation for future analyses. The analytical strategy will be to
implement a reproducible metagenomic profiling pipeline using MIDAS
(Metagenomic Intra-species Diversity Analysis System) (Nayfach et al.),
which is designed to quantify microbial species abundance and genetic
variation using reference genome databases. As an initial step, I will
construct a workflow using a workflow management system such as
Snakemake (Mölder et al.), which enables automated, reproducible
execution of multi-step bioinformatic pipelines. Building this workflow
will ensure that metagenomic processing steps are modular, scalable, and
reproducible for future datasets.

The first stage of the pipeline will involve preparing sequencing reads
for analysis. This includes organizing input files, confirming data
integrity, and ensuring that reads are in the correct format for MIDAS
processing. Once prepared, I will run the MIDAS species module on each
metagenomic sample. This module maps sequencing reads to a database of
microbial reference genomes to estimate the relative abundance of
microbial species present in each community. The output of this step
will be a species abundance table across all samples, providing
species-level resolution of community composition. Then, the primary
analyses in this project will focus on characterizing species
composition across experimental conditions and validating the
metagenomic profiling results. Specifically, I will analyze how species
abundance profiles differ between pre-antibiotic and post-antibiotic in
vitro communities. This will include computing summary statistics such
as species richness and relative abundance distributions, as well as
comparing overall community composition across samples. Several
visualizations will be generated to summarize these results. These will
include stacked bar plots showing species-level community composition,
ordination plots illustrating differences in species profiles between
samples, and diversity plots comparing species richness across
timepoints. In addition, I will compare the MIDAS-derived species
abundance estimates to existing 16S-based taxonomic profiles from the
same communities. Because 16S sequencing typically resolves taxonomy at
the family or genus level, this comparison will provide a useful
validation of the metagenomic pipeline and help identify consistencies
or discrepancies between sequencing approaches.

A secondary goal of the project is to establish a foundation for future
strain-level analyses. MIDAS also includes modules for detecting
single-nucleotide polymorphisms (SNPs) and quantifying strain-level
variation within species. While running the SNP module may be beyond the
scope of the current class project, designing the workflow to
accommodate this extension will make it possible to analyze strain
composition in the future. Establishing a reproducible pipeline now will
therefore support downstream analyses of microbial evolution, strain
replacement, and fine-scale community dynamics in response to
perturbation. The proposed analyses are highly feasible within the scope
of this project. The metagenomic datasets are already available, and
MIDAS provides a well-documented framework for species profiling.
Workflow management tools such as Snakemake are widely used in
bioinformatics and will allow the pipeline to be implemented
incrementally, beginning with species-level profiling and expanding
later if time permits. Because the project focuses on processing and
analyzing existing sequencing data rather than generating new data or
developing new algorithms, it is well suited to the timeline of the
assignment.

More broadly, this analysis establishes the first step toward
genome-resolved functional characterization of antibiotic-perturbed
microbial communities. Once species profiles are generated from the
metagenomic data, the next stage will involve functional annotation of
genomes present in pre- and post-antibiotic communities. These
annotations will allow comparison of metabolic capabilities across
community states to identify functional pathways that are reduced or
lost following antibiotic perturbation. Extending this approach to
mixture communities will make it possible to examine whether functional
capacity is restored when colonization occurs, even when taxonomic
composition differs from the original community. In summary, this
project will implement a reproducible metagenomic profiling workflow
using MIDAS to generate species-level abundance profiles from in vitro
microbial communities. These analyses will characterize community
composition across antibiotic perturbation conditions, validate
metagenomic results against existing 16S data, and establish a
computational foundation for future functional annotation and
genome-scale metabolic modeling of microbiome responses to perturbation.

### Works Cited

Quince, C., Walker, A. W., Simpson, J. T., Loman, N. J., & Segata, N.
(2017). Shotgun metagenomics, from sampling to analysis. Nature
Biotechnology, 35(9), 833–844.

Nayfach, S., Rodriguez-Mueller, B., Garud, N., and Pollard, E. T.
(2016). An integrated metagenomics pipeline for strain profiling reveals
novel patterns of transmission and global biogeography of bacteria.
Genome Research.

Mölder F, Jablonski KP, Letcher B et al. (2021). Sustainable data
analysis with Snakemake. F1000Research, 10:33.
