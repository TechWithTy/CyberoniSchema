import { prisma } from '../prismaClient'
import cuid from "../utils/cuid"

async function runScript() {
    // const likes = await prisma.blogLike.findMany({
        
    // })
    // await prisma.$transaction(likes.map(like => {
    //     return prisma.blogLike.update({
    //         where: {
    //             userId_blogId: {
    //                 userId: like.userId,
    //                 blogId: like.blogId
    //             }  
    //         },
    //         data: {
    //             id: cuid()
    //         }
    //     })
    // }))

}

runScript()