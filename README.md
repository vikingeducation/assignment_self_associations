assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Author : Behdad Analui

- We model Referencing -> When research papers cite each other
- Model : ResearchPaper
- Join Table : Referencing
- It's a many to many relationship
- A research paper cites many papers : sample_research_papers.references
- A reseach paper is cited by many papers : sample_research_paper.citations