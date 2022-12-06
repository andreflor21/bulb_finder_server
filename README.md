# Bulb Finder Haizer

## Cloning to a new dev area

1. **Create a new docker container**

   `docker run --name bulb_finder -e POSTGRES_PASSWORD=****** -p 5432:5432 -d postgres`

2. **Create the database**

   `create database bulb_finder;`

3. **Run migrations**

   `yarn prisma db push`

4. **Populate the database**
   - run files from `/sql` folder
