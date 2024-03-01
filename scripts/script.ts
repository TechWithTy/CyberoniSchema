import { prisma } from '../prismaClient'
function generateCustomId() {
    let id = '';
    const characters = 'cdefghijklmnopqrstuvwxyz0123456789'; // Include 'c' and remove 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    const charactersLength = characters.length;
    for (let i = 0; i < 24; i++) { // Reduce the loop iteration by 1 since we're adding 'c' manually
        id += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return 'c' + id; // Add 'c' manually at the beginning
}
async function runScript() {
    const user = prisma.user;

    await user.update({ where: { email: 'cyberboss@cybershoptech.com' }, data: { id: generateCustomId() } })
    await user.update({ where: { email: 'nehal.sk.99@gmail.com' }, data: { id: generateCustomId() } })

    //await user.update({ where: { email: '' }, data: { id: generateUniqueId() } })

}

// runScript()