# 🍕 Raphaello Pizzas – Django Web Application   
A full-stack Django web application built as part of **CS50 Web Programming**, modernized by **Dockerizing and deploying** the project to demonstrate real-world development and deployment skills.  
👉 https://djangoraphaellopizza.onrender.com (online)   
👉 http://localhost:8000 (local)
---
## 🚀 Project Overview   
Raphaello Pizzas is an online pizza ordering platform that allows users to:  
- Register and authenticate accounts  
- Browse a dynamic menu  
- Place and manage pizza orders  
- View personal order history  
- Use role-based access (customers / admin)

The project follows Django’s **MTV (Model–Template–View)** architecture and uses SQLite for local persistence.   
   
---
## 🛠 Tech Stack   
**Backend**
- Python 3.10   
- Django 3.x   
- SQLite/PostGres Neon Tech
     
**Frontend**  
- Django Templates    
- HTML / CSS   
- JavaSccript / jQuery / AJAX  
   
**Infrastructure**   
- Docker   
- Render (deployment)
---
## 🐳 Docker Support   
This project has been **fully Dockerized** to ensure consistent setup and easy deployment.   
    
### Run locally with Docker
```bash
docker build -t raphaellopizzas .
docker run -p 8000:8000 raphaellopizzas
 
   

