# EE282 Project Topic Proposal

**Author:** Ana Espeleta  
**Date:** 2026-01-26

---

# Introduction

The gut microbiome is a complex and dynamic ecosystem shaped by intermicrobial competition for nutrients, physical space, and metabolic niches. These interactions create a community structure that is typically resistant to invasion by new organisms, despite large disturbances to the system. Classic studies of antibiotic-treated hosts demonstrated that disrupting this balance can dramatically increase susceptibility to colonization by opportunistic and pathogenic microbes (Bohnhoff and Miller 1962), highlighting the role of the resident community in maintaining ecological stability. Despite decades of work, the mechanistic basis of this resistance remains incompletely understood, particularly at the level of metabolic niche structure. I am interested in identifying which microbes are able to colonize following an antibiotic perturbation and whether they exploit newly available niche space to establish within the altered community.

To address this question in a controlled and reproducible system, our lab has constructed a large collection of stool-derived $in$ $vitro$ microbial communities from subjects sampled before and after an antibiotic perturbation. These communities preserve many key ecological features of $in$ $vivo$ gut microbiomes, including complex taxonomic composition, competitive interactions, and differential susceptibility to colonization (Aranda-Díaz et al. 2022). Building on this framework, we have generated hundreds of defined “mixture” communities by combining pre- and post-antibiotic recipient communities with a small, standardized inoculum from a donor community. This experimental design allows us to treat colonization as a measurable ecological process.

We then performed 16S rRNA gene sequencing on both the individual and mixture communities to characterize community composition and track the fate of donor-derived microbes. Using these data, I developed a quantitative framework to measure colonization levels, defined as the proportion of donor-associated microbial families or operational taxonomic units are present in the resulting mixture. This analysis revealed a consistent and robust pattern: post-antibiotic communities exhibit significantly higher levels of colonization when mixed with donors than pre-antibiotic communities. This result supports the idea that antibiotic exposure reduces colonization resistance by altering community structure and freeing ecological space that can be exploited by incoming microbes.

Further analyses demonstrated that microbial families lost following an antibiotic perturbation were recovered after mixing with donor communities. This observation suggests that at least a subset of successful colonizers may be filling the same ecological roles as the displaced microbes, effectively reoccupying vacated niches. However, I also observed a distinct class of microbes that preferentially colonize post-antibiotic communities despite lacking close taxonomic relatedness to those that were lost. This pattern indicates that shared evolutionary history alone cannot fully explain colonization success and instead points toward functional similarity as a potential driver. In other words, microbes that are metabolically or physiologically capable of exploiting the same resources or environmental conditions as the displaced community members may be able to establish even if they are distantly related.

## Methods

To begin testing this hypothesis, I will leverage existing metagenomic sequencing data from the individual communities to assemble high-quality metagenomes and generate genome-resolved functional profiles for the taxa lost following antibiotic perturbation. Unlike 16S-based approaches, which primarily provide taxonomic information, metagenomic sequencing enables direct access to the encoded metabolic potential for each community member (Quince et al. 2022). By reconstructing draft microbial genomes, I can examine the specific biochemical pathways that may define a microbe’s ecological niche.

To generate these metagenomes from raw sequencing data, I will follow a standard and widely adopted bioinformatic workflow. First, sequencing reads will undergo quality filtering and host-read removal to eliminate any residual human DNA. Cleaned reads will be assembled into contiguous genomic sequences and grouped into draft microbial genomes based on shared sequence composition and patterns of abundance across samples, producing metagenome-assembled genomes (MAGs) that represent individual community members. Each genome will be evaluated for completeness and contamination using conserved marker genes to ensure that only high-quality reconstructions are carried forward. Finally, genes will be predicted and functionally annotated to infer metabolic pathways, resource utilization strategies, and biosynthetic potential across the community.


## Discussion
This approach is highly feasible given the extensive dataset and analytical infrastructure already in place in our lab. Established bioinformatic pipelines and access to high-performance computing resources support large-scale assembly, binning, and annotation, enabling efficient processing of complex metagenomic datasets. I also bring prior experience working with 16S microbial sequencing data and downstream statistical and ecological analyses, which will allow me to integrate genomic outputs with existing colonization metrics in a cohesive analytical framework. Together, these resources ensure that the proposed metagenomic analyses can be implemented rigorously and within the proposed timeline.

In this project, I will primarily focus on identifying the metabolic and functional gaps opened by an antibiotic perturbation in individual communities by using genome-resolved functional profiles to define which metabolic niches are disrupted or vacated. Building on this framework, future metagenomic sequencing of the community mixtures will enable direct assessment of metabolic niche relatedness between microbes lost and those that successfully colonize post-antibiotic communities. Together, this approach will connect ecological patterns to their underlying metabolic drivers, providing a clearer and more predictive framework for understanding how microbiomes respond to perturbation.

## Works Cited

Aranda-Díaz, A., Ng, K. M., Thomsen, T., Real-Ramírez, I., Dahan, D., Dittmar, S., Gonzalez, C. G., Chavez, T., Vasquez, K. S., Nguyen, T. H., et al. (2022). Establishment and characterization of stable, diverse, fecal-derived in vitro microbial communities that model the intestinal microbiota. Cell host & microbe, 30(2), 260–272.e5. https://doi.org/10.1016/j.chom.2021.12.008 

Bohnhoff, M., & Miller, C. P. (1962). Enhanced susceptibility to Salmonella infection in streptomycin-treated mice. The Journal of infectious diseases, 111, 117–127. https://doi.org/10.1093/infdis/111.2.117 

Quince, C., Walker, A. W., Simpson, J. T., Loman, N. J., & Segata, N. (2017). Shotgun metagenomics, from sampling to analysis. Nature biotechnology, 35(9), 833–844. https://doi.org/10.1038/nbt.3935

