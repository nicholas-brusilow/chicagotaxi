# Chicago Taxi

## An Azure MLOps project 
### by Nicholas Brusilow (Carleton College B.A. 2021, University of Missouri M.S. 2026)

*Note: With this project, I have intentionally avoided LLM/agentic AI coding. All of the code here is hand-typed unless otherwise specified.*

**A Microsoft Certified AI-300 MLOps Full-Cycle Project**

This project is currently in progress. In it, I use a publicly-available dataset from the City of Chicago on taxicab pickups. The goal is to forecast hourly taxicab demand by Chicago community area. I have several goals for it.

* Create a full Azure MLOps data pipeline. This will include ETL code, database definition, training and testing scripts;
* Run the training scripts, track model performance, and perform hyperparameter tuning using MLFlow in Azure ML;
* Automate model training using Github actions;
* Deploy and monitor the model at a public-facing web dashboard;
* Define all Azure resources in ARM templates so the deployment is full replicable.

As I said, most of this code will be hand-written. I know how to use agentic coding tools (such as OpenCode and Claude Code), but this is more of an educational exercise. I will use agentic coding tools for the web dashboard. I also foresee the need to engineer a "major event" (such as concerts, sports games, or the Democratic National Convention) feature. If I go down this path, I will use an LLM subagent to search the internet and create a table telling where and when the major events are that would cause a spike in taxi demand.
