# AI/BI Dashboard Project

## Overview
This repository contains an AI-powered Business Intelligence dashboard built on Databricks, providing comprehensive sales analytics and insights.

## Features

### Sales Analytics
- **Product Category Analysis**: Bar chart visualization showing average total sales by product category
- **Multi-category Support**: Tracks sales across multiple product categories including:
  - Reagate (highest avg: $7,264)
  - Ramsung (avg: $6,527)
  - Rony (avg: $5,738)
  - Opple (avg: $5,310)
  - Sioneer (avg: $4,934)
  - Zamaha (avg: $3,503)

### Dashboard Components
- Interactive visualizations
- Real-time data analysis
- Product performance metrics
- Sales trend analysis

## Repository Contents

### Files
- **`README.md`**: This documentation file
- **`dashboard-config.json`**: Complete dashboard configuration including widget specs and data sources
- **`dashboard-queries.sql`**: All SQL queries used in the dashboard for easy reference and reuse

### Dashboard Configuration
The `dashboard-config.json` file contains:
- Dashboard metadata and URL
- Widget specifications (counter, combo chart, bar chart, scatter plot, filters)
- Dataset definitions and queries
- Data source references

### SQL Queries
The `dashboard-queries.sql` file includes:
- Sales goal comparison query
- Three-month sales analysis
- Product category performance metrics
- Daily sales trends
- Additional analytical queries for customer insights

## Technology Stack
- **Platform**: Databricks Lakeview Dashboards
- **Data Processing**: Databricks SQL
- **Visualization**: Interactive charts and graphs
- **AI Integration**: Databricks AI/BI capabilities

## Data Structure
The dashboard works with sales data containing:
- `product_category`: Product classification
- `Total_Sales`: Sales transaction amounts
- Additional metrics for comprehensive analysis

## Getting Started

### Prerequisites
- Access to Databricks workspace
- Appropriate permissions to view/edit dashboards
- Unity Catalog access for data sources

### Dashboard Access
**Live Dashboard**: [View in Databricks](https://dbc-a7c1a55e-7572.cloud.databricks.com/dashboardsv3/01f181b9a2f91c1cae36170f34f45ee4)

The dashboard can be accessed through your Databricks workspace and provides:
- Drill-down capabilities for detailed analysis
- Filter options for custom date ranges and categories
- Export functionality for reports
- Interactive widgets with real-time data updates

## Key Insights
- Reagate leads in average sales performance
- Clear performance differentiation across product categories
- Data-driven decision support for inventory and marketing strategies

## Contributing
This project is part of ongoing business intelligence initiatives. For updates or modifications, please follow standard Git workflows:

1. Create a feature branch
2. Make your changes
3. Submit changes for review
4. Merge to main after approval

## License
Internal use only - proprietary business intelligence dashboard

## Contact
For questions or support regarding this dashboard, please contact the data analytics team.

---
*Last Updated: July 2026*