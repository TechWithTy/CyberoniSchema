## Schema For CyberOni

### How to install

Update Environment with Githhub personal Access token follow instructions here to generate token:

required permission: read:packages

add token to .env file
`NPM_TOKEN=ghp_xxxxxxxxxxxxxxxxxxx`

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
### Note:

1. Replace "your_token_here" with your actual NPM token.

2. After adding the environment variable, you may need to restart the terminal or reload the profile for changes to take effect.

3. Ensure you keep sensitive information like tokens secure and do not share them in public repositories or insecure channels.

## Deployment intructions :

#### Vercel

add NPM_TOKEN to the environment variables
