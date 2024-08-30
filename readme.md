# Schema For CyberOni

repository: https://github.com/TechWithTy/CyberoniSchema

package name : `@techwithty/cyberoni-schema`

installation: `npm i @techwithty/cyberoni-schema`

### How to install

npm install prisma | Not npm install @prisma/client

Update Environment with Githhub personal Access token follow instructions here to generate token:

required permission: read:packages

add token to .env file
`NPM_TOKEN=ghp_xxxxxxxxxxxxxxxxxxx`

`export NPM_TOKEN={token}`

To add an environment variable like NPM_TOKEN to different terminals such as PowerShell, Bash, Zsh, and other shell environments, you'll need to follow specific instructions for each terminal. Here's how you can do it:

1. PowerShell (Windows):

   ```powershell

   # Set environment variable for current session
   $env:NPM_TOKEN = "your_token_here"

   # Alternatively, for permanent changes, add to profile:
   # Open profile (if not exists, create it)
   notepad $PROFILE
   # Add the following line to the profile:
   $env:NPM_TOKEN = "your_token_here"
   ```

2. Bash (Linux/Unix):

   ````bash

   # Set environment variable for current session
   export NPM_TOKEN="your_token_here"

   # Alternatively, for permanent changes, add to profile:
   # Open profile (can be ~/.bashrc, ~/.bash_profile, or ~/.profile)
   nano ~/.bashrc
   # Add the following line to the profile:
   export NPM_TOKEN="your_token_here"```

   ````

3. Zsh (Z shell):

   ```zsh

   # Set environment variable for current session
   export NPM_TOKEN="your_token_here"

   # Alternatively, for permanent changes, add to profile:
   # Open profile (can be ~/.zshrc)
   nano ~/.zshrc
   # Add the following line to the profile:
   export NPM_TOKEN="your_token_here"
   ```

4. Other Shell Environments:

For other shell environments, the process is similar to Bash and Zsh. You typically need to add the export command to the appropriate shell profile file (e.g., ~/.bashrc, ~/.zshrc, ~/.profile).

use follwoing commad to install the latest schema version
`npm install @techwithty/cyberoni-schema@latest`

add schema loaction to package.json
```
// package.json
{
    .
    .
    .
    "prisma": {
        "schema": "node_modules/@nehal7-ml/cybershoptechprismaschema/schema.prisma"
        },
    .
    .
}
```
## About the schema : 

### Major tables :

#### User
	
The User table stores information about users, including their first and last names, email, password, and role. Each user can have multiple related records in other tables like Account, Session, Blog, Review, Order, etc.

####  Blog

The Blog table stores information about blog posts, including their title, subtitle, description, content, and related images. Each blog post is linked to an author (user) and can have tags, likes, comments, and be part of a category or template.

#### Service

The Service table stores information about different services offered, including their title, preview content, hourly rate, and related images. Each service can have tags, reviews, sub-services, descriptions, case studies, and FAQs.

#### SoftwareProduct

The SoftwareProduct table stores information about software products, including their title, subtitle, description, images, tags, pricing model, and status. Each software product can have a category, blog, and subscription models.

#### CaseStudy

The CaseStudy table stores detailed case studies related to services, including their title, type of service, preview, problem statement, user research, possible solutions, goals, and various other details.

#### Discount

The Discount table stores discount information, including the name, value, and expiration date. Discounts can be applied to service carts.

#### Referral

The Referral table stores information about referral campaigns, including the prefix, type, campaign ID, expiration date, description, priority, redirect link, fallback link, and the number of clicks.


## Crud functions : 

crud functions are written for the crud-dashboard and datadriven in their respective repositories. This repo separately as they required different crud functions as per requirements



### Pushing changes to a Database (proceed with caution)

1. Ensure changes don't cause any rows to be reset or deleted. you can try the following if such situations arise  (prisma will warn when this happens)
   
   - provide default to values to newly added column 
   - ensure all constrains on a column can be met before pushing changes. you might need to write custom sql or a script to achieve this

2. Add Database url to env :

```powershell
$env:DATABASE_URL_MAIN='mysql://<username>:<password>@<host>:<port>/<DBname>'

```

```bash
export DATABASE_URL_MAIN 'mysql://<username>:<password>@<host>:<port>/<DBname>'
```

3. try pushing the changes on a testing database, run `npm run push`


## Publishing new version or updating package:

1. Merge changes to main, ensure version number in updated package.json (published version cannot be updated and same version cannot be published twice)

2. Ensure schema changes have been pushed to Database

3. GitHub action is written to run when new release is published, create new release here : https://github.com/TechWithTy/CyberoniSchema/releases/new

4. Once release is created package should be published. Verify successful git actions here: https://github.com/TechWithTy/CyberoniSchema/actions

5. verify package is published by trying to install new version or check lates release here: https://github.com/TechWithTy/CyberoniSchema/pkgs/npm/cyberoni-schema  


### Note:

1. Replace "your_token_here" with your actual NPM token.

2. After adding the environment variable, you may need to restart the terminal or reload the profile for changes to take effect.

3. Ensure you keep sensitive information like tokens secure and do not share them in public repositories or insecure channels.

## Deployment intructions :

#### Vercel

add NPM_TOKEN to the environment variables

