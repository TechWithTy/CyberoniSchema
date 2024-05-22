import { prisma } from '../prismaClient'


const categories = [
    'Security Solutions',
    'Networking Tools',
    'Data Analysis',
    'Cloud Services',
    'Communication Tools',
    'Project Management',
    'Automation Software',
    'Artificial Intelligence',
    'E-commerce Platforms',
    'Customer Relationship Management (CRM)'
];

async function runScript() {
    categories.forEach(async name => {
        await prisma.softwareProductCategory.create({
            data: {
                name
            }

        })
    });

}

runScript()