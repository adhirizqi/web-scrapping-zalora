# Zalora Men's Shirt — Web Scraping, Data Cleaning & Analysis

**Author:** Adhi Rizqi Alfaqih

A data analytics project that scrapes men's shirt product data from Zalora, cleans and explores it, and generates a shortlist of purchase recommendations for a budget-constrained shopper — end to end, from raw HTML to an interactive dashboard.

---

## Problem Statement

I need several new shirts for various events in the coming week, but I have a limited budget.

**Analysis goal:** identify men's shirt products on Zalora that offer the best combination of affordable price, product popularity, and high customer rating.

**Selection criteria:**
- Product is labeled **"Most Popular"**
- Product price is **below IDR 500,000**
- Product has a **high, genuine customer rating**

---

## Tech Stack

| Purpose | Tools |
|---|---|
| Web scraping | Selenium, BeautifulSoup |
| Data manipulation | Pandas |
| Visualization | Matplotlib, Seaborn |
| Storage | SQLAlchemy (SQLite) |
| Dashboard | Tableau |

---

## Project Structure

```
├── 1_scraping.ipynb          # Web scraping pipeline (Selenium + BeautifulSoup)
├── 2_analysis.ipynb           # Data cleaning, EDA, and product filtering
├── dataframe.csv                    # Raw scraped data
├── dataframe_cleaned.csv               # Cleaned dataset
├── dataframe_recommendation.csv        # Final filtered recommendations
└── README.md
```

---

## Workflow

1. **Web Scraping** (`1_scraping.ipynb`) — collect product name, price, store/brand, rating, and "Most Popular" label from the first 10 pages of Zalora's men's shirt sale category.
2. **Data Cleaning** (`2_analysis.ipynb`, Part 1):
   - Removed the redundant index column and duplicate rows (390 → 315 unique products)
   - Parsed `Price` from currency strings (e.g. `"Rp 299.900"`) into integers
   - Converted `Rating` to numeric, flagging unrated products separately (`has_rating`) rather than discarding them
   - Standardized `Most Popular` into a binary flag (1/0)
3. **Exploratory Data Analysis** (Part 2) — price distribution, rating distribution, brand concentration, and the relationship between price and rating.
4. **Filtering & Recommendation** (Part 3) — applied the three selection criteria to produce a ranked shortlist of top picks.

---

## Data Unclean

![dataframe](dataframe.png)

## Data Clean

![dataframe_clean](dataframe_cleaned.png)
![dataframe_recommendations](dataframe_recommendations.png)

## Key Insights

- **Price and rating are essentially uncorrelated** (Pearson r ≈ 0.06) — a lower price does not mean a lower-rated product. Budget shoppers aren't sacrificing quality.
- **True customer satisfaction is high**: 13% of products (41 of 315) have no reviews yet and were flagged separately rather than treated as "0-rated." Among genuinely rated products, the average rating is **4.84 / 5**.
- **"Most Popular" is a selective label**, applied to only ~29.5% of listings — making it a meaningful filter rather than marketing noise.
- **Marks & Spencer dominates the catalog** (72 of 315 listings, and 45 of 93 "Most Popular" products) — a useful caveat when interpreting any brand-level conclusion.
- After applying all three filtering criteria, **32 products** qualified as strong recommendations, spanning a genuinely diverse mix of brands — not dominated by any single seller.

---

## Limitations

- Data was collected only from the first 10 pages of Zalora's men's shirt sale category, so it does not represent the full catalog.
- Prices, ratings, and "Most Popular" labels are dynamic and may have changed since data collection.
- Products without customer reviews cannot be included in rating-based filtering.
- The scraper depends on Zalora's current HTML structure, which may change and require script updates.

---

## Dashboard Preview

**Tableau Dashboard**
![Dashboard](dashboard.png)


**Tableau Public Link**
[Dashboard](https://public.tableau.com/views/AnalysisofProductMensShirtsfromZalora/AnalysisofProductMensShirtsfromZalora?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## How to Run

```bash
# Clone the repository
git clone https://github.com/adhirizqi/web-scrapping-zalora.git
cd <repo-name>

# Install dependencies
pip install pandas matplotlib seaborn beautifulsoup4 selenium sqlalchemy

# Run the notebooks in order
jupyter notebook 1_scraping.ipynb
jupyter notebook 2_analysis.ipynb
```

---

## Contact

**Adhi Rizqi Alfaqih**

Data Analyst | BI Analyst

*[Email](adhirizqi22@gmail.com) · [LinkedIn](https://www.linkedin.com/in/adhirizqi/) · [Portfolio](https://app.notion.com/p/Adhi-s-Portfolio-Data-a4f6b844a49183a797d9810d39429752?source=copy_link)*
