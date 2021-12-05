import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/Model/models.dart';

List<SquareModel> category1 = [];
List<SingleContainerModel> category2 = [];
List<CircleListModel> category3 = [];

void laodCategorySecond() {
  SingleContainerModel devotional = SingleContainerModel('Devotional', [
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper93-637.jpg',
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/Cute_Radha_Krishna-155.jpg',
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper145-664.jpg',
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper__8-463.jpg',
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper47-449.jpg',
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper__79-467.jpg',
    'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper_56-389.jpg',
    'https://i.pinimg.com/564x/e0/35/ae/e035ae369b869ffe858d7a4d26ac2cf6.jpg',
    'https://i.pinimg.com/564x/4f/51/d8/4f51d859b7467d3d1aa17bdab62debe8.jpg',
    'https://i.pinimg.com/564x/bc/c8/27/bcc827db76e65ef05bf2f46fe2ebb1e0.jpg',
    'https://i.pinimg.com/564x/e2/e4/0a/e2e40a9626192f2e37a20afdbcc23f02.jpg',
    'https://i.pinimg.com/564x/ff/0b/c3/ff0bc3eabbd451faf92a21e23ccf61a3.jpg',
    'https://i.pinimg.com/564x/56/ca/fa/56cafab94e1d680eb4bfc1c4e07c6b65.jpg',
    'https://i.pinimg.com/564x/4c/9e/1e/4c9e1e9ff8dbb4d75b5b5ad777d77cc7.jpg',
    'https://i.pinimg.com/564x/c3/21/c5/c321c5604b8cbc40b9f88da6ef3de9c9.jpg',
    'https://i.pinimg.com/564x/e7/d9/10/e7d910675194768e97f6e230774a19a5.jpg',
    'https://i.pinimg.com/564x/f0/13/b4/f013b4f555b44f6ea9505fdb0d2d230d.jpg',
    'https://i.pinimg.com/564x/82/5e/b2/825eb27f58212a6382aa0780cac7601a.jpg',
    'https://i.pinimg.com/564x/2c/7a/67/2c7a6799e71bc5d1f99ffca283d9627f.jpg',
    'https://i.pinimg.com/564x/09/61/53/096153340d0f93f2eda9328da5afc1e1.jpg',
    'https://i.pinimg.com/564x/3b/37/74/3b3774722aa546626caed4fc9dffdebb.jpg',
    'https://i.pinimg.com/564x/57/bf/63/57bf637d4e578abfbed2f1fbf0155b89.jpg',
    'https://i.pinimg.com/564x/b8/2b/bb/b82bbbfcbb0d26f50c60cc9199310dc5.jpg',
    'https://i.pinimg.com/564x/23/04/d5/2304d5b16bc65813d213088eaa19d26a.jpg',
    'https://i.pinimg.com/564x/62/cf/c2/62cfc2c42dc395b52de47f980ebe5451.jpg',
    'https://i.pinimg.com/564x/0a/d6/02/0ad602308f35d1679c89f9511b5b63bc.jpg',
    'https://i.pinimg.com/564x/f8/64/93/f86493b17ad230230c1ab3dd30c1cbec.jpg',
    'https://i.pinimg.com/564x/e9/52/c7/e952c763a6c7df1cbba103eff872c81c.jpg',
    'https://i.pinimg.com/564x/cc/fa/b7/ccfab7f32f1c6e6e9f22aed34aaf20f1.jpg',
    'https://i.pinimg.com/564x/f3/4f/5b/f34f5bd5d594d504c5305b73d0728314.jpg',
    'https://i.pinimg.com/564x/e0/f5/13/e0f51340b950e58dea29cd5eed51849b.jpg',
    'https://i.pinimg.com/564x/dd/5f/df/dd5fdfde2258f26fa3ad84af0a33a095.jpg',
    'https://i.pinimg.com/564x/ea/94/d8/ea94d8ee4ae9f161dbdafde61f0dd1ed.jpg',
    'https://i.pinimg.com/564x/ed/87/7a/ed877ad744439082a1dc91db70906a4c.jpg',
    'https://i.pinimg.com/564x/ae/95/48/ae9548accb49ec202fa952766dcb0c9f.jpg',
    'https://i.pinimg.com/564x/a0/9f/7c/a09f7ce6750747cf595f467d7f33f424.jpg',
    'https://i.pinimg.com/564x/10/93/e8/1093e8ec2c55f7afab325bceb2e02ac5.jpg',
    'https://i.pinimg.com/564x/eb/2c/59/eb2c5925103076145663aee5c2c20292.jpg',
    'https://i.pinimg.com/564x/ab/21/50/ab21500f7e59568039860e78d68db53d.jpg',
    'https://i.pinimg.com/564x/a9/b3/ec/a9b3ec7fff5041044df0d5c235106eca.jpg',
    'https://i.pinimg.com/564x/1d/62/3a/1d623a4a9497737e7ba064bd6ce8ddfb.jpg',
    'https://i.pinimg.com/564x/91/31/25/91312547cafa0453dae4b66e49e39207.jpg',
    'https://i.pinimg.com/564x/fb/a5/5f/fba55f2d21910a50b730d2ab1af5979f.jpg',
    'https://i.pinimg.com/564x/53/41/79/534179c1fc9077c6296e9cf82430be42.jpg',
    'https://i.pinimg.com/564x/b0/d8/86/b0d88611b597f081e399cebe2b63f2df.jpg',
    'https://i.pinimg.com/564x/fe/0b/78/fe0b7842a15086f2953155630a91ad0c.jpg',
    'https://c1.wallpaperflare.com/preview/350/220/920/ganesha-idol-india-hindu.jpg',
    'https://wallpapercave.com/dwp2x/wp5131784.jpg',
    'https://images.pexels.com/photos/10147427/pexels-photo-10147427.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/7086762/pexels-photo-7086762.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/5714329/pexels-photo-5714329.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/9956290/pexels-photo-9956290.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'https://images.pexels.com/photos/937464/pexels-photo-937464.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ]);

  category2.add(devotional);
}

void loadCategoryFirst() {
  SquareModel wildLife = SquareModel('Wild Life', [
    'https://wallpapercave.com/wp/wp5161016.png',
    'https://wallpapercave.com/wp/wp5156170.jpg',
    'https://images.unsplash.com/photo-1539508374952-bac3abfbf89d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dWx0cmElMjBoZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1508138142660-302e69e74271?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dWx0cmElMjBoZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://i.pinimg.com/564x/82/ed/2f/82ed2f8e94aa76fe6373e5866279358a.jpg',
    'https://i.pinimg.com/564x/77/71/a7/7771a7d7edd7c8ff8a8874147352d95f.jpg',
    'https://i.pinimg.com/564x/f6/f3/e9/f6f3e9f185c3fa13984487835f5a5b49.jpg',
    'https://i.pinimg.com/564x/8d/ad/41/8dad418490f6d9e04b2ce5c825610553.jpg',
    'https://i.pinimg.com/564x/d2/27/7b/d2277bc8a076362646468f63eb574a94.jpg',
    'https://i.pinimg.com/564x/26/22/11/262211c908930fd6c6b2dc11af274dbb.jpg',
    'https://i.pinimg.com/564x/e9/d4/80/e9d48034dcd71c899779c2e10f7d3071.jpg',
    'https://i.pinimg.com/564x/ac/cd/f7/accdf719752825032032455fdd777ab8.jpg',
    'https://i.pinimg.com/564x/8c/6b/1c/8c6b1c0aa0db172f1221049b2cfb1011.jpg',
    'https://i.pinimg.com/564x/bc/bc/93/bcbc9342204935f3b4abbf3477d56aa6.jpg',
    'https://i.pinimg.com/564x/67/f4/6c/67f46c50bf761ee81a40dec1d57fca59.jpg',
    'https://i.pinimg.com/564x/75/d5/5d/75d55da3be1621bc1243dcb876149602.jpg',
    'https://i.pinimg.com/750x/d1/49/90/d1499062368caf5e9c8b1a4d7d6396af.jpg',
    'https://i.pinimg.com/750x/d3/ad/86/d3ad8626b3655462dfb3b5bf57cdd512.jpg',
    'https://i.pinimg.com/750x/f9/bf/0d/f9bf0d003081e4d7ca88504202b6111a.jpg',
    'https://i.pinimg.com/750x/88/09/1b/88091be54213025902b65c6fcdbc5703.jpg',
    'https://i.pinimg.com/564x/3d/11/4b/3d114b8b3666f101326c9d26736b4a84.jpg',
    'https://i.pinimg.com/564x/59/6d/5c/596d5c9e969ee5c4cd40a5048c8d149e.jpg',
    'https://i.pinimg.com/564x/4d/3c/5b/4d3c5ba331908d38c403f22f5fc00b47.jpg',
    'https://i.pinimg.com/564x/66/b6/a2/66b6a29c9c4e2c129311a0cce7e67169.jpg',
    'https://i.pinimg.com/564x/ed/58/5d/ed585d3906d5dd702109430af536733a.jpg',
    'https://i.pinimg.com/564x/65/07/a9/6507a9a710793c4ef27abc3692a5bc8d.jpg',
    'https://i.pinimg.com/564x/3a/bf/08/3abf0830df9ab7a51ec6ed06f8490e32.jpg',
    'https://i.pinimg.com/564x/f2/9d/fb/f29dfba9d980ab97bbb470f89d461f5b.jpg',
    'https://i.pinimg.com/564x/23/38/9f/23389f47549529115db746e8c1752f83.jpg',
    'https://i.pinimg.com/564x/ef/a3/9c/efa39c6f3a2383d33b44543deee68491.jpg',
    'https://i.pinimg.com/564x/de/8f/81/de8f81796eb77f56ade33d1d98484679.jpg',
    'https://i.pinimg.com/564x/6d/dc/b4/6ddcb40068fe1bd047296e9a586c299e.jpg',
    'https://i.pinimg.com/564x/1e/f5/17/1ef517e6524b2c8a3fb160e6be8f3f33.jpg',
    'https://i.pinimg.com/564x/e1/c9/b2/e1c9b2b0ea68895b92320f3f9ab39710.jpg',
    'https://i.pinimg.com/564x/97/07/e0/9707e0c8564e5596eaac6190bc946e4a.jpg',
    'https://i.pinimg.com/564x/7d/9a/e7/7d9ae7c4a9952170471a3a5fbf47a939.jpg',
    'https://i.pinimg.com/564x/00/69/6d/00696d2581a997bf6a5153ccfe520570.jpg',
    'https://i.pinimg.com/736x/6b/63/37/6b63377c7a598b151d1b19739836358e.jpg',
    'https://i.pinimg.com/564x/e8/ea/f1/e8eaf14183e543c886dafdff5b315c86.jpg',
    'https://i.pinimg.com/564x/27/50/71/275071d4397425b82b68f460dc5cabfd.jpg',
    'https://i.pinimg.com/564x/ed/61/59/ed6159d5d3565a04358612f5ab6dc33c.jpg',
    'https://i.pinimg.com/564x/7f/e5/c5/7fe5c58621f4bf49606e961b651f9393.jpg',
    'https://i.pinimg.com/564x/72/84/27/728427ac2c2e22ae7c1fbb404b0ed351.jpg',
    'https://i.pinimg.com/564x/97/ab/c7/97abc74d6ab15f73957261cdc93e749d.jpg',
    'https://i.pinimg.com/564x/42/49/f8/4249f8c16e97aaabe22f52f87341b7ee.jpg',
    'https://i.pinimg.com/564x/c8/e9/d2/c8e9d29aaa41392568eb36c4510bc331.jpg',
  ]);

  SquareModel ioswallpaper = SquareModel('Ios Wallpaper', [
    'https://i.pinimg.com/474x/4b/e7/a2/4be7a24ad65e423c6f5c9177f30318c9.jpg',
    'https://i.pinimg.com/474x/da/91/a3/da91a32e51ba37b3e351d25202554a0e.jpg',
    'https://i.pinimg.com/564x/4d/e3/1c/4de31ccdc8f1b2856d70c3d36a5366d6.jpg',
    'https://i.pinimg.com/564x/96/84/08/968408d0c6e9e9e1fbeb62f8c457723b.jpg',
    'https://i.pinimg.com/474x/5f/19/1a/5f191a88e5c5cd084513250e7cddec82.jpg',
    'https://i.pinimg.com/474x/30/ed/36/30ed36c9dee8450d2e9f926b3fd0845b.jpg',
    'https://i.pinimg.com/474x/46/54/d3/4654d3dde71892834b0e2c51d3fe48e5.jpg',
    'https://i.pinimg.com/474x/a4/e4/b4/a4e4b46ce36c9018d33ac87a8e4e4a93.jpg',
    'https://i.pinimg.com/474x/7d/eb/c2/7debc2cddcd719fcd4eb961de3ed7846.jpg',
    'https://i.pinimg.com/474x/aa/33/1f/aa331f7537d9d62bffa5d3b5f2782b79.jpg',
    'https://i.pinimg.com/474x/ff/a3/b8/ffa3b82dc8a08f2f69a5bbda76c0a2c2.jpg',
    'https://i.pinimg.com/564x/89/83/76/8983760ffcdb9d915f166972eccc4495.jpg',
    'https://i.pinimg.com/474x/fd/81/d0/fd81d04098b0dfa3051f1db63ed51e3b.jpg',
    'https://i.pinimg.com/474x/a4/ba/7a/a4ba7a4c592479701085d786e36594c7.jpg',
    'https://i.pinimg.com/474x/59/f9/53/59f953e0813df68139259da60b64138f.jpg',
    'https://i.pinimg.com/474x/f3/88/22/f388221af98bdbca11776d68457e6eb5.jpg',
    'https://i.pinimg.com/474x/08/e0/a2/08e0a2de9c3653853aaa97e0b828f597.jpg',
    'https://i.pinimg.com/474x/10/17/04/101704622e01891922da431bd65b8820.jpg',
    'https://i.pinimg.com/474x/15/0a/c2/150ac2c3f938639d734fb72f38171f8f.jpg',
    'https://i.pinimg.com/474x/38/02/2e/38022e0cbc5f8acc77b56aaffb7a6358.jpg',
    'https://i.pinimg.com/474x/ee/32/49/ee324989e8e28bc5be5e849a458f2f3a.jpg',
    'https://i.pinimg.com/474x/70/cd/a2/70cda263d836705eeb6ee7cbece0c372.jpg',
    'https://i.pinimg.com/474x/0f/2f/73/0f2f73020b94b9227a1edb85ccd5dfbb.jpg',
    'https://i.pinimg.com/474x/04/fb/e6/04fbe6302565e66c59f1e1d0eddf988a.jpg',
    'https://i.pinimg.com/474x/de/27/db/de27db3954019215d3720ce39b0c4987.jpg',
    'https://i.pinimg.com/474x/60/42/62/604262d05d3d271f8f7b306c2a87d9f4.jpg',
    'https://i.pinimg.com/474x/4c/72/b4/4c72b4e8596128e7258ff44a2213af58.jpg',
    'https://i.pinimg.com/474x/36/fc/13/36fc13333ab76f2c4bab79106d240cf3.jpg',
    'https://i.pinimg.com/474x/f9/1b/78/f91b780df6c7b3b1bf2853d485c24714.jpg',
    'https://i.pinimg.com/474x/5a/95/af/5a95af4ddb36b438d959aff4d4250635.jpg',
    'https://i.pinimg.com/564x/5d/aa/d7/5daad7e9623ca848a7ae59f2618e1897.jpg',
    'https://i.pinimg.com/474x/5c/74/d3/5c74d3ca1e9a82451c2d98cfea3aaaea.jpg',
    'https://i.pinimg.com/474x/34/d9/40/34d940462badfc19c7c84e23e3b07d5e.jpg',
    'https://i.pinimg.com/474x/9f/a9/aa/9fa9aa9bd1dfebadb8953d1b382d1e06.jpg',
    'https://i.pinimg.com/474x/74/b5/37/74b5375a93d3413794ec321de0ba29d8.jpg',
    'https://i.pinimg.com/474x/30/62/aa/3062aa5a5503856ab1a9f6a387c5b4e9.jpg',
    'https://i.pinimg.com/474x/e0/b0/17/e0b017a4cec86aa0011ecfd37a261d47.jpg',
  ]);
  SquareModel gamelover = SquareModel('Game Lover', [
    'https://i.pinimg.com/474x/30/7e/19/307e190a664f6656b9ebed16ba2c6f9d.jpg',
    'https://i.pinimg.com/474x/29/a0/ac/29a0acb35b97a9febe61226862f9b422.jpg',
    'https://i.pinimg.com/474x/9d/9a/e7/9d9ae75e2db531112df6a7accf9813da.jpg',
    'https://i.pinimg.com/474x/df/84/af/df84affdbd5952b3e7a85606c0caf0ff.jpg',
    'https://i.pinimg.com/474x/91/d3/e2/91d3e28a41d1a758c9e23fedc06b7334.jpg',
    'https://i.pinimg.com/474x/8b/6e/0f/8b6e0fd83202bbb39f569ef4c33c9ad6.jpg',
    'https://i.pinimg.com/474x/ae/42/dc/ae42dc8a15e31beda78f2a1a6211d7f0.jpg',
    'https://i.pinimg.com/474x/62/90/0f/62900f5c47b13420be1d978ea9cd5042.jpg',
    'https://i.pinimg.com/474x/be/6e/b2/be6eb2a0246d22ef864ddff8e37d8c99.jpg',
    'https://i.pinimg.com/474x/fc/53/f9/fc53f9772a67175e788e49585f26fcf1.jpg',
    'https://i.pinimg.com/474x/14/68/30/146830e66241d5ed777a52e8b5458573.jpg',
    'https://i.pinimg.com/474x/ab/a2/81/aba2819b9b258b3c31ef0298bf104208.jpg',
    'https://i.pinimg.com/474x/b7/ea/6d/b7ea6d7828c970fafae8c059c1e7de08.jpg',
    'https://i.pinimg.com/474x/67/11/27/67112703918038dbc0c5f4524137c02d.jpg',
    'https://i.pinimg.com/474x/90/8e/89/908e896d0e5da0f3b892cbeaf2b27b32.jpg',
    'https://i.pinimg.com/474x/0f/90/81/0f908115829ec0500cacef8e7abd9485.jpg',
    'https://i.pinimg.com/474x/e1/67/3d/e1673d5b364301986048af4652edfda4.jpg',
    'https://i.pinimg.com/474x/91/82/73/918273520b3a3c8af2532760c48b2c99.jpg',
    'https://i.pinimg.com/474x/49/4e/ff/494effe2ac267081e5dadec2a58e0067.jpg',
    'https://i.pinimg.com/474x/fe/30/19/fe3019e41c3624f5c45c73d5aa51d0ba.jpg',
    'https://i.pinimg.com/474x/7e/7a/98/7e7a98010a64559055db7814538558f2.jpg',
    'https://i.pinimg.com/474x/2e/ad/53/2ead537468de677450dfc7c38333da5c.jpg',
    'https://i.pinimg.com/474x/f4/99/fe/f499fed020639f6182d65a3af85d4ad1.jpg',
    'https://i.pinimg.com/474x/80/71/9a/80719a1f5f5a8cf54f6f15cc4457d78f.jpg',
    'https://i.pinimg.com/474x/78/cf/04/78cf04f0bf493b509b5c2460e714f718.jpg',
    'https://i.pinimg.com/474x/9d/21/8d/9d218d0b0a6ada49a3392e0ae1b6835a.jpg',
    'https://i.pinimg.com/474x/64/5e/bb/645ebb127cb1b1455a18a7a9bc46dae2.jpg',
    'https://i.pinimg.com/474x/ee/0e/51/ee0e519255a4535ca652ce39509909fc.jpg',
    'https://i.pinimg.com/474x/bb/8d/84/bb8d8419fb1d43b9769d7065876ea1de.jpg',
    'https://i.pinimg.com/474x/da/e6/01/dae601af90fdc7f9871475cc9fe2ecbf.jpg',
    'https://i.pinimg.com/474x/6b/67/26/6b67267d5b281ff2679dc6e63034e1f2.jpg',
    'https://i.pinimg.com/474x/9c/84/42/9c84423cc442adf8c8be5c21025c2673.jpg',
    'https://i.pinimg.com/474x/6e/61/b2/6e61b2188c090d112eaefd01fe9600fa.jpg',
    'https://i.pinimg.com/474x/da/cc/56/dacc56f682bf5cf2c7e1a3d70dd74e4d.jpg',
    'https://i.pinimg.com/474x/fb/e7/5f/fbe75fe9be2da032854d2d0fe6899b7b.jpg',
    'https://i.pinimg.com/474x/62/b4/eb/62b4ebe08a7374f23e1007f126f0bd70.jpg',
    'https://i.pinimg.com/564x/61/0f/6d/610f6d56e1726a5e8e5484985bed96ec.jpg',
    'https://i.pinimg.com/564x/f0/e2/bc/f0e2bc4f3b28f3dfa484db2f6e4ee759.jpg',
    'https://i.pinimg.com/474x/44/e2/ed/44e2ed0554ff864950fda8e5d8c0bb2e.jpg',
  ]);
  SquareModel kwallpaper = SquareModel('4K Wallpaper', [
    'https://i.pinimg.com/474x/dd/97/72/dd977285e4477503a6f6c9404af9a63d.jpg',
    'https://i.pinimg.com/474x/4c/43/a7/4c43a7f4defe6f95272698db1b871e3c.jpg',
    'https://i.pinimg.com/474x/c8/12/4f/c8124f765277d9e2cb9da3d8a7a4a167.jpg',
    'https://i.pinimg.com/474x/cc/82/29/cc8229b4137c1127ad61ebb99e30f025.jpg',
    'https://i.pinimg.com/474x/d6/86/05/d6860573c017ad366c907a6a921c92df.jpg',
    'https://i.pinimg.com/474x/86/1a/98/861a987651049986aa68afaa232eb477.jpg',
    'https://i.pinimg.com/474x/ae/01/6d/ae016d8142050f246bcbd9a8f9bb93a8.jpg',
    'https://i.pinimg.com/474x/c0/4d/3f/c04d3f1c7216924a9c6283c79203a819.jpg',
    'https://i.pinimg.com/474x/b6/95/2a/b6952a0065124ee0b738f719cf9e412f.jpg',
    'https://i.pinimg.com/474x/a1/51/aa/a151aa58545a8534d107d9ab442ec249.jpg',
    'https://i.pinimg.com/474x/34/a4/85/34a48533ba42df16c79aaba7ef2d14db.jpg',
    'https://i.pinimg.com/474x/e0/b0/20/e0b0209d6c21bf8a7b6e7c1266c1aa90.jpg',
    'https://i.pinimg.com/474x/04/5c/53/045c539f0a84487c87bc3c59b6647aac.jpg',
    'https://i.pinimg.com/474x/52/ea/67/52ea67f04c7f9d42682d1eb45279a982.jpg',
    'https://i.pinimg.com/474x/69/bd/44/69bd44f3472b38e3b1febf869641582f.jpg',
    'https://i.pinimg.com/474x/62/f3/30/62f33008282d6c7a7beb161651b751d8.jpg',
    'https://i.pinimg.com/474x/3b/90/17/3b90172109e256edb856b1b514dce06f.jpg',
    'https://i.pinimg.com/474x/76/0c/8e/760c8e47dff4113e507e446de83dc603.jpg',
    'https://i.pinimg.com/474x/79/d3/aa/79d3aa92aa787f34a4943690ad4fa225.jpg',
    'https://i.pinimg.com/474x/35/a2/1a/35a21a5ad88490a1213e39743e0fe823.jpg',
    'https://i.pinimg.com/474x/2e/80/4a/2e804af2fe69257bc01a54ba74d88848.jpg',
    'https://i.pinimg.com/474x/d8/fd/c3/d8fdc32bcbae6fe369b257de1c7ff93b.jpg',
    'https://i.pinimg.com/474x/b1/c5/ca/b1c5ca5ae63bfaa738b2b9e866dcac8d.jpg',
    'https://i.pinimg.com/474x/c0/33/c7/c033c7b16ecf8b89c7f541f024a93947.jpg',
    'https://i.pinimg.com/474x/b5/1d/c1/b51dc1ea8c7094e940d2f9d25871d101.jpg',
    'https://i.pinimg.com/474x/95/6b/27/956b2703e1f4173bf9c76c1884d226c3.jpg',
    'https://i.pinimg.com/474x/83/8f/36/838f36f60c449fc5cca29596915a6087.jpg',
    'https://i.pinimg.com/474x/7e/8f/d7/7e8fd7f6fa6abb8dcb3c6a4ac276e6ca.jpg',
    'https://i.pinimg.com/474x/a9/76/c8/a976c8621ec19294121fc83b3205a861.jpg',
    'https://i.pinimg.com/474x/d5/71/c5/d571c524e46d26e2880cee3ce1df5b65.jpg',
    'https://i.pinimg.com/474x/e0/d4/85/e0d4851ebc1f31fb090c008bf9e043b8.jpg',
    'https://i.pinimg.com/474x/b0/43/3a/b0433acfb7aa1f8239f2b9210705a35a.jpg',
    'https://i.pinimg.com/474x/10/6b/b6/106bb6bcae07fda913b25bd25345c4e1.jpg',
    'https://i.pinimg.com/474x/01/b0/93/01b093e31772f42f7083c39f8ba5746e.jpg',
    'https://i.pinimg.com/474x/02/bf/b3/02bfb3431d9a9e0ef035321f2f10a862.jpg',
    'https://i.pinimg.com/474x/63/3b/15/633b15b8f4a2e026b209616df2ced966.jpg',
    'https://i.pinimg.com/474x/44/b1/d8/44b1d84a18d644cca384f7bb9689a1ed.jpg',
    'https://i.pinimg.com/564x/17/33/5e/17335ef523a05b0f1576a5354c9ec6cc.jpg',
    'https://i.pinimg.com/474x/ba/e4/29/bae42943243f0453c06196bf9c6b7d50.jpg',
    'https://i.pinimg.com/474x/ea/f6/33/eaf633dd17466d87d042585089753af4.jpg',
    'https://i.pinimg.com/474x/a4/05/65/a405659d90d40927c7364b21c8ea0022.jpg',
    'https://i.pinimg.com/474x/78/1a/9e/781a9e2c66df6bd82e5bc11b85b1f7d7.jpg',
    'https://i.pinimg.com/474x/41/0e/17/410e173b06f959cc50d4f392d069f6da.jpg',
    'https://i.pinimg.com/564x/be/a8/d2/bea8d2d771a2e6bb805dbf0f4aa4ae15.jpg',
    'https://i.pinimg.com/474x/a2/e5/60/a2e560c6f16e11841ffeff96922c6253.jpg',
    'https://i.pinimg.com/474x/9f/24/e8/9f24e8158395ef2d8fddbe43e8d2a4f5.jpg',
    'https://i.pinimg.com/474x/44/42/ea/4442ea20da8f95258956ef67d8c3612c.jpg',
    'https://i.pinimg.com/474x/00/f9/80/00f980994808a451627a4a415cde27d4.jpg',
    'https://i.pinimg.com/474x/7d/f9/f4/7df9f416fda7fb6758b3c88ea0909ceb.jpg',
  ]);

  SquareModel indianflag = SquareModel('Indian Flag', [
    'https://i.pinimg.com/474x/00/11/65/0011652b6c98ec540c82d07830913285.jpg',
    'https://i.pinimg.com/474x/2d/88/4c/2d884cc8f2401238ed66a194d086a88b.jpg',
    'https://i.pinimg.com/474x/a9/6d/65/a96d6507473a8cb0ce658aea80197633.jpg',
    'https://i.pinimg.com/474x/e4/37/4b/e4374bed65a4f9fe535110b656a6d6c1.jpg',
    'https://i.pinimg.com/474x/b8/f5/e0/b8f5e0dcd9f86d20d2e4eed09172c24d.jpg',
    'https://i.pinimg.com/474x/09/97/6a/09976a8660e5f572985e6d1a19f72990.jpg',
    'https://i.pinimg.com/474x/2f/7e/e7/2f7ee778629a80f97aa27dcd1837970f.jpg',
    'https://i.pinimg.com/474x/34/ff/ba/34ffbae28b05f658e71d196f8a0d3cf1.jpg',
    'https://i.pinimg.com/474x/ed/db/89/eddb89dd6e881e226fe89f515700ab7c.jpg',
    'https://i.pinimg.com/736x/5e/06/57/5e0657412f36bd0698d590971c823152.jpg',
    'https://i.pinimg.com/474x/b0/07/e1/b007e1c81ea5626bbf6058028bde75fa.jpg',
    'https://i.pinimg.com/474x/ad/7b/81/ad7b8131fdb06790199cc34363466184.jpg',
    'https://i.pinimg.com/474x/3e/06/e7/3e06e71d712f73303e88d882f36eca14.jpg',
    'https://i.pinimg.com/474x/67/23/cf/6723cf046fa69bc3aeb32e22c53bc02d.jpg',
    'https://i.pinimg.com/474x/b6/13/b4/b613b4158dd567ec56e27c68503f1186.jpg',
    'https://i.pinimg.com/474x/51/3c/f9/513cf9ffbbecf7b73c410c10221f38b0.jpg',
    'https://i.pinimg.com/474x/67/96/a1/6796a124551354a5c1eaae3c29fdd35e.jpg',
    'https://i.pinimg.com/474x/62/c2/c2/62c2c2a1e239b52f75d195c568a3cc9c.jpg',
    'https://i.pinimg.com/474x/98/bb/33/98bb336577e015768b2bbec3448e1e6f.jpg',
    'https://i.pinimg.com/474x/0e/e9/ee/0ee9ee1d73a3476c5712be9cf84a813e.jpg',
    'https://i.pinimg.com/474x/c7/7f/30/c77f308ad1bfe0f40578e0d1d1e038ab.jpg',
    'https://i.pinimg.com/474x/3e/51/ce/3e51ce593589ee4f90ebc21b3c8470f2.jpg',
    'https://i.pinimg.com/474x/23/fb/db/23fbdb23b93e764b81253f4e513d86b1.jpg',
    'https://i.pinimg.com/474x/b3/45/28/b3452871f022cf2e9ccc5d774ff1ecd4.jpg',
    'https://i.pinimg.com/474x/e3/2c/0e/e32c0eea7636b15405d7f306df205e49.jpg',
    'https://i.pinimg.com/564x/02/1f/d2/021fd2b8e45a1b39da909f2a835915f9.jpg',
    'https://i.pinimg.com/474x/94/77/72/9477721f6496c536aba27fe58166a000.jpg',
    'https://i.pinimg.com/474x/22/91/c5/2291c5c50f2fbde7f18c84d6a109e03a.jpg',
    'https://i.pinimg.com/474x/b3/02/7b/b3027be60dd98a2b6c8a53a296883b0e.jpg',
    'https://i.pinimg.com/474x/a8/89/69/a889698bd33b670ce5d739fadb3c6724.jpg',
  ]);

  SquareModel flowers = SquareModel('Flowers wallpaper', [
    'https://i.pinimg.com/474x/41/42/22/414222a8e0e4cbc9924dcdf5e84128b4.jpg',
    'https://i.pinimg.com/474x/7a/06/0f/7a060f3d8371fb6f8ade970fcce6ed38.jpg',
    'https://i.pinimg.com/474x/4a/43/24/4a43245e867601fd09e5ad1a6bd4d189.jpg',
    'https://i.pinimg.com/474x/7d/04/c5/7d04c560e471a87fc172501212061892.jpg',
    'https://i.pinimg.com/474x/a9/af/90/a9af90b2c41fab10d6601f6e02f26159.jpg',
    'https://i.pinimg.com/474x/fa/d9/b8/fad9b8b79b9400cd4a01cd24c7438275.jpg',
    'https://i.pinimg.com/474x/52/ad/7d/52ad7d320f6b36fd76701ce1f40ea474.jpg',
    'https://i.pinimg.com/474x/e7/14/11/e71411005e16c7c429677bf62326fe07.jpg',
    'https://i.pinimg.com/474x/a6/18/85/a618858fa0db7656104fff7235d26ff6.jpg',
    'https://i.pinimg.com/474x/bc/63/02/bc6302917ca5ae7c874bbc7ee1077628.jpg',
    'https://i.pinimg.com/474x/d3/62/78/d36278a27cf3a5212e7b24d0de083a59.jpg',
    'https://i.pinimg.com/474x/89/d5/25/89d52536c46b96454bde9860c8ecb90a.jpg',
    'https://i.pinimg.com/474x/8c/73/e7/8c73e7e1c5c29105797dca9e9d000892.jpg',
    'https://i.pinimg.com/474x/3c/95/55/3c95551e4501cac360cd8d17e7feb5a7.jpg',
    'https://i.pinimg.com/474x/69/f1/0f/69f10fad7130dd7c737e719217ce935c.jpg',
    'https://i.pinimg.com/474x/76/ed/9f/76ed9feab849392eb340c687ee746ff7.jpg',
    'https://i.pinimg.com/474x/34/6f/86/346f86386b8075d184aea35872937e6c.jpg',
    'https://i.pinimg.com/474x/5f/64/c3/5f64c36d47d9e7313a48963b02e98ddb.jpg',
    'https://i.pinimg.com/474x/dd/b6/46/ddb646e2f303922f5c951a3af8ad123c.jpg',
    'https://i.pinimg.com/474x/c6/a7/37/c6a737382ab83298c41d1ac78a0e2288.jpg',
    'https://i.pinimg.com/474x/3a/40/78/3a40786b700b17ec75e29feb5afe6990.jpg',
    'https://i.pinimg.com/474x/3b/26/c0/3b26c009166d490be3d43a5886647cb5.jpg',
    'https://i.pinimg.com/474x/aa/36/f4/aa36f48e0dd8c6fce6d6486a150396a4.jpg',
    'https://i.pinimg.com/474x/0d/7f/b2/0d7fb2a4f8472f645d3ab256524d6c7d.jpg',
    'https://i.pinimg.com/474x/f4/05/bd/f405bda7a708e2596df735abdf107cde.jpg',
    'https://i.pinimg.com/474x/ea/36/72/ea3672ed16f9f9d0927168844ddadf22.jpg',
    'https://i.pinimg.com/474x/f9/7c/6b/f97c6bf84870a67430b09d693e960417.jpg',
    'https://i.pinimg.com/474x/28/44/86/2844869535160e1036351a6806c1e67a.jpg',
    'https://i.pinimg.com/474x/21/8e/40/218e403ab00de2d58287f31732627ea2.jpg',
    'https://i.pinimg.com/474x/ed/2c/d7/ed2cd78331361d249e199ac0d7d225f9.jpg',
    'https://i.pinimg.com/474x/21/d2/8d/21d28ddb872c3e81d871d8767b4ab4dd.jpg',
    'https://i.pinimg.com/474x/12/01/9c/12019cb6eed2243e7a20f173e279a547.jpg',
    'https://i.pinimg.com/474x/ee/1a/be/ee1abeeef9fc3477592f46f51cc28afd.jpg',
    'https://i.pinimg.com/474x/ff/db/28/ffdb282c953a482c048c68c089875f2e.jpg',
  ]);

  category1.add(wildLife);
  category1.add(ioswallpaper);
  category1.add(gamelover);
  category1.add(kwallpaper);
  category1.add(flowers);
  category1.add(indianflag);
}

void loadthirdcategory() {
  CircleListModel carLovers = CircleListModel('Car Lover', [
    'https://i.pinimg.com/564x/d9/52/d6/d952d61e0af12dc28a9254d2e74c139b.jpg',
    'https://i.pinimg.com/474x/aa/15/c1/aa15c15831a07cd8373160b888dfad8e.jpg',
    'https://i.pinimg.com/474x/5c/3b/02/5c3b0225a44d352eda43bb57b1443936.jpg',
    'https://i.pinimg.com/474x/24/4a/37/244a377ec6020b5e37cd7ac316e5dc39.jpg',
    'https://i.pinimg.com/474x/b0/f6/5a/b0f65ae2b3bc258c5cb245ca3acf5ab6.jpg',
    'https://i.pinimg.com/474x/97/e7/ec/97e7ec10e8d0957b67a08a215f9ca81d.jpg',
    'https://i.pinimg.com/474x/76/92/bf/7692bfab66b030999da7ea6206b850e4.jpg',
    'https://i.pinimg.com/474x/89/3d/7c/893d7c53bef2fafdf8e74f84d4ce438f.jpg',
    'https://i.pinimg.com/474x/ef/dd/05/efdd05433ba33ab2077ba41f38eb01ca.jpg',
    'https://i.pinimg.com/474x/fe/b4/90/feb4903ac4f91a2518254d9387671126.jpg',
    'https://i.pinimg.com/474x/8f/d0/7e/8fd07eef1508f387f1f4072461bc602a.jpg',
    'https://i.pinimg.com/474x/c3/0a/4d/c30a4d9d5cee604fe65e7e5cd67c7efa.jpg',
    'https://i.pinimg.com/474x/82/b0/cc/82b0cce7f5e58bc2f0072a15df6ca07d.jpg',
    'https://i.pinimg.com/474x/bc/3e/17/bc3e174a12b2791ec1ed02f36f650115.jpg',
    'https://i.pinimg.com/474x/43/79/71/4379710d784448edb588526ad3c16def.jpg',
    'https://i.pinimg.com/474x/b3/37/69/b337696a8a6d59065af333b362560777.jpg',
    'https://i.pinimg.com/474x/3e/05/47/3e05474ab02d7f3cf3ecb3eaa2f11d97.jpg',
    'https://i.pinimg.com/474x/db/e6/a5/dbe6a508930bc9a791b19fd8cb118bf2.jpg',
    'https://i.pinimg.com/474x/9b/21/9f/9b219fecf9e631ceebd7c6b6e799bb52.jpg',
    'https://i.pinimg.com/474x/55/07/73/5507736c4b4d19d1cb9883a227ce1d6b.jpg',
    'https://i.pinimg.com/474x/86/27/41/8627416f72d6378b16ce9665541e0d9b.jpg',
    'https://i.pinimg.com/474x/18/06/ef/1806ef59c2450ffa26d9fcacf847f1f6.jpg',
    'https://i.pinimg.com/474x/c0/24/b0/c024b0c2bfdd042677ac49dfc17939d5.jpg',
    'https://i.pinimg.com/474x/36/5c/cd/365ccd3f1aae452e04d450177940af03.jpg',
  ]);
  CircleListModel architecture = CircleListModel('Arch. wall', [
    'https://i.pinimg.com/474x/26/f9/5d/26f95d004a8babe824c957952b00270f.jpg',
    'https://i.pinimg.com/474x/8a/d5/78/8ad57841dd4cd66a5e6d7632bb8e32d6.jpg',
    'https://i.pinimg.com/474x/90/fb/b2/90fbb2b76121f07eceed910fc4e2a023.jpg',
    'https://i.pinimg.com/474x/ce/2c/b5/ce2cb5ff99c260073536248a2f612192.jpg',
    'https://i.pinimg.com/474x/2b/06/c6/2b06c682705c70dd889871de0a435a96.jpg',
    'https://i.pinimg.com/474x/80/13/87/801387af1b6ad7f7bcf3ad1a8638d2cc.jpg',
    'https://i.pinimg.com/474x/42/40/f9/4240f9c6979b69c6d9941468b20bfa54.jpg',
    'https://i.pinimg.com/474x/9e/27/d1/9e27d1cd5df1b66bd4599d2e7fe2e675.jpg',
    'https://i.pinimg.com/474x/9f/1e/0d/9f1e0d3aa27d3f69a1172e8a455c06c9.jpg',
    'https://i.pinimg.com/474x/23/ee/52/23ee52c39fd2a3bd5629fd026838e66a.jpg',
    'https://i.pinimg.com/474x/5a/3c/9e/5a3c9e6d64d708f550d4fc12baa14caa.jpg',
    'https://i.pinimg.com/474x/3a/f6/a2/3af6a20422ed1aca0ff978859ee86fdc.jpg',
    'https://i.pinimg.com/474x/d8/1f/3c/d81f3c2df4dbaa30b0f21fa8d977744b.jpg',
    'https://i.pinimg.com/474x/71/66/b6/7166b6a44480efe39f9aeb73f535e7e5.jpg',
    'https://i.pinimg.com/736x/89/94/8f/89948f3e713655ef1a9854ec7af48a82.jpg',
    'https://i.pinimg.com/474x/84/a3/6e/84a36e3f654ae1c80a820aa2fff9a188.jpg',
    'https://i.pinimg.com/474x/dd/97/36/dd9736a97b39d0ab0cf419ad48a08645.jpg',
    'https://i.pinimg.com/474x/7f/39/c7/7f39c74943e621b8016526ceb48c04b8.jpg',
    'https://i.pinimg.com/474x/7f/14/91/7f1491ce9309eaf015d56e1cf7ec94cd.jpg',
    'https://i.pinimg.com/474x/70/a0/01/70a0013eff9e0450a75bad4985c56220.jpg',
    'https://i.pinimg.com/474x/78/f2/21/78f221330a2173d4beae49b60ebbc1d6.jpg',
    'https://i.pinimg.com/564x/45/a9/e8/45a9e8206254b21e8d84a83161da3dfa.jpg',
    'https://i.pinimg.com/474x/8a/fd/bb/8afdbb3a893650e931e4d830bbf5b4f9.jpg',
    'https://i.pinimg.com/474x/b2/10/0b/b2100b617f4dcd28893fbe622b6616f9.jpg',
    'https://i.pinimg.com/474x/2e/c1/36/2ec136f6d540d1d65b96a03abaa9c5c0.jpg',
    'https://i.pinimg.com/474x/d9/f3/5f/d9f35f55af526c5f91f2d5b14bed8b4d.jpg',
    'https://i.pinimg.com/474x/81/f3/75/81f3755f8d566f11594e65c54ee726ec.jpg',
  ]);
  CircleListModel babies = CircleListModel('cute wall', [
    'https://i.pinimg.com/564x/1d/e4/5c/1de45c47bef6a835f9dd48c3d4815362.jpg',
    'https://i.pinimg.com/564x/1b/b3/ea/1bb3ea99ccdccab7956866ef1bb16499.jpg',
    'https://i.pinimg.com/564x/74/53/b4/7453b4a422645592e86dfd3c67a68bd4.jpg',
    'https://i.pinimg.com/564x/ea/d4/14/ead41434e3f1e2a1ed0d3b1bdf935cbf.jpg',
    'https://i.pinimg.com/474x/a1/99/a7/a199a7fcb0586d765e26bf0be4ee6ac5.jpg',
    'https://i.pinimg.com/750x/bf/94/dd/bf94dd8d3f32f623dbca26caaee6c52e.jpg',
  ]);
  CircleListModel fruits = CircleListModel('Fuits wall', [
    'https://i.pinimg.com/474x/14/06/47/14064771f08eb9168aedbd983175fadb.jpg',
    'https://i.pinimg.com/474x/5b/e8/78/5be8781a4b58021be715a00edd652519.jpg',
    'https://i.pinimg.com/564x/40/d9/be/40d9beee2bc34ff545dc5eccd3ea2a94.jpg',
    'https://i.pinimg.com/564x/8a/fe/be/8afebe47e903bdd293f8846606e878ce.jpg',
    'https://i.pinimg.com/474x/9f/fa/73/9ffa73e935ae7b4892e55771c21e2757.jpg',
    'https://i.pinimg.com/474x/28/45/61/284561628b445cb8a44b41ffa114decf.jpg',
    'https://i.pinimg.com/474x/14/56/d0/1456d0c9dced7cdd63f1b8936d451b72.jpg',
    'https://i.pinimg.com/564x/2e/15/b4/2e15b4cefccb162a0155ee99a4b28b90.jpg',
    'https://i.pinimg.com/564x/49/60/66/496066f8768ea290d470fd75652879a7.jpg',
    'https://i.pinimg.com/474x/47/c4/9b/47c49b0124a98c0ec796828dbd51921a.jpg',
    'https://i.pinimg.com/474x/02/8f/d9/028fd9dc95b5ac40d3356197e5b857bf.jpg',
    'https://i.pinimg.com/474x/f9/f4/c9/f9f4c9656b6912e242842f9d85387bdf.jpg',
    'https://i.pinimg.com/474x/36/6a/fe/366afe393e3493270e61ecb5f3911c79.jpg',
    'https://i.pinimg.com/474x/d1/b3/e2/d1b3e201e5c0761cc8657194be0c26eb.jpg',
    'https://i.pinimg.com/474x/06/85/58/068558479c9f78199e766965a949baab.jpg',
    'https://i.pinimg.com/474x/7d/37/4a/7d374a650b8e7ba231baf331c1d8dd4a.jpg',
    'https://i.pinimg.com/474x/d8/85/12/d885125f8e31964ee7c1f92905cb327c.jpg',
    'https://i.pinimg.com/474x/1a/b8/79/1ab8792fe9674cfa673764353c533dd7.jpg',
    'https://i.pinimg.com/564x/ea/f3/61/eaf361a88619dcfcad68e74ef379d74a.jpg',
    'https://i.pinimg.com/474x/90/6f/7b/906f7b6536bd96115208dd87dfbb567f.jpg',
    'https://i.pinimg.com/474x/61/15/23/6115238eb305dff51d41619d6ab27994.jpg',
    'https://i.pinimg.com/474x/a4/a2/32/a4a23244793fc6c7daf23f938224dbc8.jpg',
    'https://i.pinimg.com/474x/0e/90/9c/0e909c402797f7512ad53356cc5904c8.jpg',
    'https://i.pinimg.com/474x/e1/1e/fb/e11efb050f9856a012f48e0b130458af.jpg',
    'https://i.pinimg.com/474x/03/60/90/0360903978e4632c3bdeef585f0fe4f3.jpg',
    'https://i.pinimg.com/564x/14/06/47/14064771f08eb9168aedbd983175fadb.jpg',
    'https://i.pinimg.com/474x/a4/78/41/a478416fb93ea05005e3e912c8e892b3.jpg',
    'https://i.pinimg.com/474x/4f/be/e3/4fbee39475e15dff5a538a80efa525d5.jpg',
  ]);
  CircleListModel swag = CircleListModel('Swag Wall', [
    'https://i.pinimg.com/474x/0f/bf/db/0fbfdb272d1773ae2d7940bd5954b34e.jpg',
    'https://i.pinimg.com/474x/f1/1f/5c/f11f5ca698fbce47456c93161dcda2ce.jpg',
    'https://i.pinimg.com/474x/44/12/4c/44124ceda8fdcdb57e1a42706e71f298.jpg',
    'https://i.pinimg.com/474x/e4/72/c1/e472c1f0b3b1e3a2996b986335f7775f.jpg',
    'https://i.pinimg.com/474x/60/03/1d/60031d7dbde6372caef9f36086423e3b.jpg',
    'https://i.pinimg.com/474x/8a/19/40/8a1940e7336bf53c7e76e197041703c5.jpg',
    'https://i.pinimg.com/474x/80/50/83/8050834ab148e924c6528997ed484d5f.jpg',
    'https://i.pinimg.com/474x/cb/3c/64/cb3c64d6fe123075efd0ae809d97ed64.jpg',
    'https://i.pinimg.com/474x/19/5c/f0/195cf082a53ff39ffc1aa1f75f73b085.jpg',
    'https://i.pinimg.com/474x/37/85/9c/37859c098a75d58659889ebb7d5a48bf.jpg',
    'https://i.pinimg.com/474x/fb/31/0e/fb310e148a20b490f30fe86f302dabe9.jpg',
    'https://i.pinimg.com/564x/c0/52/f3/c052f3a16c3b134856cc5d2c2f423912.jpg',
    'https://i.pinimg.com/474x/fe/1e/b5/fe1eb5e016345106033ba3f5f382988f.jpg',
    'https://i.pinimg.com/474x/1f/21/b5/1f21b5d44dba2875ff53b41a12185b36.jpg',
    'https://i.pinimg.com/474x/48/08/7d/48087d1d133cef88b461068ebaf80b0e.jpg',
    'https://i.pinimg.com/474x/8b/88/89/8b888956f824e4554ab11b86b9a5bba1.jpg',
    'https://i.pinimg.com/474x/93/c9/2e/93c92ec5fef0c16dd159e0f9d0cd3fd5.jpg',
    'https://i.pinimg.com/474x/84/fc/f8/84fcf8495cfd516d87b775825b81ce33.jpg',
    'https://i.pinimg.com/474x/9c/bf/93/9cbf93206b451363a9db77abe1093238.jpg',
    'https://i.pinimg.com/474x/86/49/5a/86495a3e75b1ece006961ad79e8c130f.jpg',
    'https://i.pinimg.com/474x/39/36/cf/3936cfcbb7662f5de6c9dc047dd661d0.jpg',
    'https://i.pinimg.com/564x/50/55/cb/5055cb4ad63c20844427b13582e44cd7.jpg',
    'https://i.pinimg.com/474x/66/b0/f6/66b0f63c493d8176a5f2226b4fb0f23e.jpg',
    'https://i.pinimg.com/474x/2d/36/59/2d3659266e1c9e6b165cab520cff6c32.jpg',
    'https://i.pinimg.com/474x/59/d4/9a/59d49a271cbdf644067e20d47568885a.jpg',
    'https://i.pinimg.com/474x/f6/58/e7/f658e7774a8bd9543ebc3f9d18d9d19d.jpg',
    'https://i.pinimg.com/564x/2e/c8/6e/2ec86ea9e88a9ed513f0ebb5d990fabb.jpg',
    'https://i.pinimg.com/474x/50/14/41/501441e695af1cfa68dbb5ba42b9bafb.jpg',
    'https://i.pinimg.com/474x/19/78/15/197815fc2d305ed48e184331ae3746e4.jpg',
    'https://i.pinimg.com/474x/28/c9/b6/28c9b6cb7bd54fc2da4b4b6dbdd3e096.jpg',
  ]);
  category3.add(swag);
  category3.add(carLovers);
  category3.add(architecture);
  category3.add(babies);
  category3.add(fruits);
  
}
