
# Environment for Python & PostgreSQL + Issues and Solutions
# ![image](https://github.com/user-attachments/assets/9bfc0581-e877-44e6-80eb-a57869fbd039)
# ![image](https://github.com/user-attachments/assets/08bf4c0c-66dc-415d-8a60-5d35146c938f)

# Issue 1: Got the error code below, it shows the row with id = 4 cannot be loaded into table. 
# ![image](https://github.com/user-attachments/assets/c60edb47-eefb-4e2b-bc28-ea7e6d39ceda)
# Checked raw data in Notepad++, we can see format of password is not showing properly.
# ![image](https://github.com/user-attachments/assets/989d0890-2e9c-4f88-8ba8-c57143c85d20)
# Solution: In this case, I cannot load data into PostgreSQL directly by using the raw data file, I need to clean data first and then load cleaned data into PostgreSQL.
# In my data cleaning part of Python code, I used quoting = 1 to fix this issue. 
![image](https://github.com/user-attachments/assets/fdaf9e09-f656-4d09-802b-f6874b8cd5dd)



