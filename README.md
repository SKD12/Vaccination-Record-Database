Project Overview:

This project involves designing a comprehensive database system to track vaccinations across the USA, down to the state, city, and district levels. The system ensures accurate and up-to-date information on vaccinated and unvaccinated individuals, including detailed tracking of vaccine doses and locations. The solution was developed with scalability and integration into cloud services in mind to support national-scale data storage and reporting.
Database Schema:

    Person: Stores individual information, linked to location and vaccination data.
    Vaccine: Details the vaccines used, including manufacturer and number of doses required.
    Vaccination: Records vaccination events, including dose numbers and dates.
    Location: Captures state, city, and district-level data for geographical tracking.
    Vaccination Status: Tracks whether individuals are vaccinated or not.

ER Diagram:

The Entity-Relationship Diagram (ERD) can be found below.
![image](https://github.com/user-attachments/assets/1ba3842a-b9f4-4f53-95fc-668f4c5bcece)

How to Run the SQL Script:

    Run the down-up SQL script provided in this repository.
    The script will automatically drop existing tables (if any) and recreate them with the appropriate primary and foreign keys.
    Data can be inserted into the tables for vaccination tracking across multiple geographical levels.

Cloud Integration:

The database schema is designed to be integrated with cloud storage services like AWS or Google Cloud for large-scale storage, enabling efficient data retrieval and visualization.
