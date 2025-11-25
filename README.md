#  Netflix Content Analysis (SQL)

This project provides a comprehensive analysis of Netflix’s global content catalog using MySQL, uncovering patterns in content mix, regional dominance, release trends, and audience-sensitivity indicators.
It simulates a real-world content strategy & analytics role, transforming raw data into business recommendations for content acquisition, regional focus, and library optimization.

## Dataset

- **Source**: [Netflix Movies and TV Shows – Kaggle]((https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download))
- **Format**: Excel (`netflix_titles.xlsx`)

📌 Project Objectives

Analyze Netflix’s content distribution across movies, TV shows, genres, and countries

Identify production hotspots and release timelines

Detect trends affecting viewer preferences and catalog diversity

Build actionable strategies for content planning and acquisition teams

📊 Key Insights (Business-Ready)
Business Question	Insight Highlights
Movies vs TV Shows	:
Movies ~70%, TV Shows ~30%, Opportunity to expand long-form shows (higher retention)

Top Producing Countries:
USA (3,600+), India (1,000+), UK, Canada dominate content supply

Peak Release Years	2017–2021 account for 45% of entire catalog

Longest Movies	“Bandersnatch” - 312 min

Recent Content Share	82% of titles added in the last 7 years

India Trend:
~80 Indian titles added yearly, has significant growth potential

Documentaries	<3% of catalog, Underserved, high-opportunity niche

Mature Content Check:
28% flagged for “kill/violence” keywords, Need more family-friendly content

Successful Series Indicator	Shows with 3+ seasons = strong long-term engagement
Top Directors/Actors	Identified for future collaborations based on frequency

🎯 Strategic Recommendations
1) Diversify Content Mix

Movies dominate the catalog (7:3). Netflix can boost engagement by increasing multi-season TV shows, which drive higher watch-time.

2) Expand Indian Originals & Regional Titles

India ranks #2 in total titles with high annual additions (~80/year).
Huge opportunity for local partnerships & regional content.

3) Preserve Freshness of Catalog

82% of content added in the last 7 years -> Maintain strong “new content” pipeline.

4) Grow Family-Friendly & Kids Content

28% of titles contain violence-related keywords.
 Add more Comedy, kids, and family genres to reach broader audiences.

5) Invest in Documentaries

Documentaries <3% of catalog -> Low competition + high quality perception.

🛠 Tools & Technologies

MySQL (Primary)

CTEs, Window Functions, GROUP BY

🔍 SQL Query Highlights (Production Ready)

This project includes 16+ optimized SQL queries such as:

Top countries by content count

Yearly content additions (global + India-specific)

Mature content classifier using keyword search

Longest movies & multi-season TV shows

Content distribution by type, genre, and region

Titles added in the last 7 years

All queries are included in:
📄 netflix_analysis.sql

🚀 How to Run This Project
-- 1. Create database
CREATE DATABASE netflix;
USE netflix;

-- 2. Import CSV into table `netflix_titles`

-- 3. Run analysis queries
SOURCE netflix_analysis.sql;

📈 Future Enhancements

Build interactive dashboard in Power BI / Tableau

Python-based EDA

Predict success of content using machine learning

Genre clustering & recommendation modelling

👨‍💻 About the Author

Akshith Mourya
Data Analysis | SQL | Power BI | Excel
akshithmouryak@gmail.com

