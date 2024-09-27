# Emerging Markets Applied FinOps Tool

This tool is designed to help analyze and optimize Free Cash Flow (FCF) and other financial metrics. It is provided as an open-source project under the GNU General Public License v3.0 (GPL-3.0).

## Features
- Financial optimization models
- Tools for analyzing FCF in cloud computing environments
- Easy-to-use for educational purposes

## Disclaimer
This tool is provided for **educational purposes** only. It is **not** intended to be used as an investment tool or for making financial decisions. The author is **not liable** for any losses or damages that arise from the use of this tool.

Please consult a licensed financial professional before making any investment decisions.

## Contributions
We welcome contributions from the community! If you'd like to contribute to improving this tool, here’s how you can get started:

### How to Contribute:
1. **Fork** this repository.
2. **Clone** your fork locally:  
   ```bash
   git clone https://github.com/YOUR-USERNAME/dss.git


## Assumptions:

### 1. Machine Specifications:
- The infrastructure being modeled includes both **non-managed VMs** and **managed DBs**.
- All VMs and DBs are set to have **8 vCPUs and 32 GB of RAM** to standardize the comparison.
- For **non-managed VMs**, the costs are:
  - **$212 per month** if no long-term commitment is made (i.e., without a 3-year commit).
  - **$105 per month** if there is a **3-year commit**, reflecting a significant discount in exchange for the long-term agreement.
- For **managed DBs**, the costs are higher:
  - **$420 per month** without any commit.
  - **$210 per month** with a **3-year commit**, representing the cost savings when using managed services.

### 2. Horizontal Scaling and Commit:
- The model focuses on **horizontal scaling** (increasing the number of instances) rather than vertical scaling (increasing the capacity of each instance). The number of instances (VMs or DBs) can increase, but their specifications (8 vCPUs and 32 GB of RAM) remain constant.
- The **percentage of committed resources** can be adjusted between **0% and 100%** for both **VMs and DBs**. Committing a higher percentage of resources provides cost savings, but limits flexibility.

### 3. Economic Scenario:
- **Risk-free return rate**: We assume a **10.75% rate**, representing the **interest rate environment in Brazil**. This reflects the cost of capital and influences the ROI calculations, making the model realistic in a high-interest-rate economy.
- **Currency risk**: There is a **15% assumed currency risk**, representing the volatility and uncertainty of operating in a country with fluctuating exchange rates like Brazil. This factor adjusts the expected returns and opportunity costs.

### 4. Opportunity Cost:
- **Non-committed VMs** can be decommissioned when demand decreases, providing flexibility to manage operational costs. However, this flexibility comes with higher operational costs per VM, as non-committed instances are more expensive.
- **Committed VMs** and DBs lock in cost savings, but they come with an **opportunity cost**. If the demand decreases, or if resources need to be reallocated, committed resources cannot be easily decommissioned, limiting flexibility.

### 5. Diminishing Returns:
- The model assumes **diminishing returns** to scale, meaning that as more instances are added, the marginal benefit or efficiency gained from each additional instance decreases. This reflects the reality in cloud computing environments where excessive provisioning leads to inefficiencies.
- In the context of the model, it prevents the simulation from assuming that infinite scaling always increases efficiency linearly.

### 6. Cobb-Douglas Production Function:
- The **Cobb-Douglas production function** was used to model the relationship between **VMs** and **DBs** in the production process.
  - **VMs (elasticity of 0.6)** are considered **labor-intensive**, meaning they are more closely tied to operational scaling and manpower.
  - **DBs (elasticity of 0.4)** are considered **capital-intensive**, meaning they represent a larger upfront investment and are less flexible but more critical for operations involving data.
- The **Cobb-Douglas function** is commonly used in economic modeling because it captures the interplay between labor and capital in a production process, showing how output is affected by changes in both variables (VMs and DBs in this case). The **“A” component** in the Cobb-Douglas model represents **technological advancement or efficiency** that enhances productivity independently of additional inputs.

### 7. Commit Timeframe:
- **Commitments are either 0 or 3 years**, with no flexibility in shorter commitments. This forces decisions around long-term contracts that may offer financial benefits (through discounts), but also impose constraints on flexibility.
- The percentage of committed instances is adjustable, allowing for different scenarios where **partial flexibility** and **partial cost savings** can be explored.

## Motivation of the Tool:

The primary motivation behind this tool is to **optimize cloud resource allocation** in a challenging economic environment, specifically one like Brazil, where **high interest rates** and **currency volatility** have a significant impact on business decisions. 

The goal was to simulate different cloud architecture scenarios and find the optimal mix of **committed** and **non-committed resources** to **maximize the FCF (Free Cash Flow)** and **ROI (Return on Investment)**, while also considering **opportunity costs** and **economic risks**. 

However, throughout the simulation, it became clear that **operational optimization alone cannot guarantee a positive FCF** in such an environment. The impact of **high interest rates**, **currency risks**, and **opportunity costs** is too strong, revealing that even the best operational efficiency must be accompanied by broader strategic initiatives.

The tool is built on principles from **microeconomics and finance**, and by incorporating **Cobb-Douglas** into the model, the tool shows how cloud resources (VMs and DBs) interact in the production process, with the exogenous factor **“A” (technological efficiency)** playing a key role. 

## Conclusion:

The Cobb-Douglas model highlights that **external factors like technological advancement (“A”)** play a crucial role in determining output and overall efficiency. In Brazil, **fostering innovation** through both **government intervention** and **corporate initiatives** is critical to improving this **"A"** and achieving long-term financial sustainability. 

This tool serves as a **support mechanism** for decision-making in **cloud resource allocation**, but it also emphasizes that **innovation, strategic financial planning**, and **alignment between stakeholders** are essential to navigating the challenging Brazilian economic environment.
