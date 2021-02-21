#include "game/chessboard.hpp"

const u64 BISHOP_RAY_CACHE[4][256] = {{0x0, 0x100, 0x10200, 0x1020400, 0x102040800, 0x10204081000, 0x1020408102000,
                                       0x102040810204000, 0x0, 0x10000, 0x1020000, 0x102040000, 0x10204080000, 0x1020408100000,
                                       0x102040810200000, 0x204081020400000, 0x0, 0x1000000, 0x102000000, 0x10204000000,
                                       0x1020408000000, 0x102040810000000, 0x204081020000000, 0x408102040000000, 0x0,
                                       0x100000000, 0x10200000000, 0x1020400000000, 0x102040800000000, 0x204081000000000,
                                       0x408102000000000, 0x810204000000000, 0x0, 0x10000000000, 0x1020000000000,
                                       0x102040000000000, 0x204080000000000, 0x408100000000000, 0x810200000000000,
                                       0x1020400000000000, 0x0, 0x1000000000000, 0x102000000000000, 0x204000000000000,
                                       0x408000000000000, 0x810000000000000, 0x1020000000000000, 0x2040000000000000, 0x0,
                                       0x100000000000000, 0x200000000000000, 0x400000000000000, 0x800000000000000,
                                       0x1000000000000000, 0x2000000000000000, 0x4000000000000000, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0},
                                      {0x8040201008040200, 0x80402010080400, 0x804020100800, 0x8040201000, 0x80402000,
                                       0x804000, 0x8000, 0x0, 0x4020100804020000, 0x8040201008040000, 0x80402010080000,
                                       0x804020100000, 0x8040200000, 0x80400000, 0x800000, 0x0, 0x2010080402000000,
                                       0x4020100804000000, 0x8040201008000000, 0x80402010000000, 0x804020000000,
                                       0x8040000000, 0x80000000, 0x0, 0x1008040200000000, 0x2010080400000000,
                                       0x4020100800000000, 0x8040201000000000, 0x80402000000000, 0x804000000000,
                                       0x8000000000, 0x0, 0x804020000000000, 0x1008040000000000, 0x2010080000000000,
                                       0x4020100000000000, 0x8040200000000000, 0x80400000000000, 0x800000000000, 0x0,
                                       0x402000000000000, 0x804000000000000, 0x1008000000000000, 0x2010000000000000,
                                       0x4020000000000000, 0x8040000000000000, 0x80000000000000, 0x0, 0x200000000000000,
                                       0x400000000000000, 0x800000000000000, 0x1000000000000000, 0x2000000000000000,
                                       0x4000000000000000, 0x8000000000000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                      {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80,
                                       0x0, 0x204, 0x408, 0x810, 0x1020, 0x2040, 0x4080, 0x8000, 0x0, 0x20408, 0x40810,
                                       0x81020, 0x102040, 0x204080, 0x408000, 0x800000, 0x0, 0x2040810, 0x4081020,
                                       0x8102040, 0x10204080, 0x20408000, 0x40800000, 0x80000000, 0x0, 0x204081020,
                                       0x408102040, 0x810204080, 0x1020408000, 0x2040800000, 0x4080000000, 0x8000000000,
                                       0x0, 0x20408102040, 0x40810204080, 0x81020408000, 0x102040800000, 0x204080000000,
                                       0x408000000000, 0x800000000000, 0x0, 0x2040810204080, 0x4081020408000, 0x8102040800000,
                                       0x10204080000000, 0x20408000000000, 0x40800000000000, 0x80000000000000, 0x0},
                                      {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x2, 0x4, 0x8, 0x10, 0x20,
                                       0x40, 0x0, 0x100, 0x201, 0x402, 0x804, 0x1008, 0x2010, 0x4020, 0x0, 0x10000,
                                       0x20100, 0x40201, 0x80402, 0x100804, 0x201008, 0x402010, 0x0, 0x1000000, 0x2010000,
                                       0x4020100, 0x8040201, 0x10080402, 0x20100804, 0x40201008, 0x0, 0x100000000,
                                       0x201000000, 0x402010000, 0x804020100, 0x1008040201, 0x2010080402, 0x4020100804,
                                       0x0, 0x10000000000, 0x20100000000, 0x40201000000, 0x80402010000, 0x100804020100,
                                       0x201008040201, 0x402010080402, 0x0, 0x1000000000000, 0x2010000000000, 0x4020100000000,
                                       0x8040201000000, 0x10080402010000, 0x20100804020100, 0x40201008040201}};

const u64 ROOKS_RAY_CACHE[4][256] = {{0x101010101010100, 0x202020202020200, 0x404040404040400, 0x808080808080800,
                                      0x1010101010101000, 0x2020202020202000, 0x4040404040404000, 0x8080808080808000,
                                      0x101010101010000, 0x202020202020000, 0x404040404040000, 0x808080808080000,
                                      0x1010101010100000, 0x2020202020200000, 0x4040404040400000, 0x8080808080800000,
                                      0x101010101000000, 0x202020202000000, 0x404040404000000, 0x808080808000000,
                                      0x1010101010000000, 0x2020202020000000, 0x4040404040000000, 0x8080808080000000,
                                      0x101010100000000, 0x202020200000000, 0x404040400000000, 0x808080800000000,
                                      0x1010101000000000, 0x2020202000000000, 0x4040404000000000, 0x8080808000000000,
                                      0x101010000000000, 0x202020000000000, 0x404040000000000, 0x808080000000000,
                                      0x1010100000000000, 0x2020200000000000, 0x4040400000000000, 0x8080800000000000,
                                      0x101000000000000, 0x202000000000000, 0x404000000000000, 0x808000000000000,
                                      0x1010000000000000, 0x2020000000000000, 0x4040000000000000, 0x8080000000000000,
                                      0x100000000000000, 0x200000000000000, 0x400000000000000, 0x800000000000000,
                                      0x1000000000000000, 0x2000000000000000, 0x4000000000000000, 0x8000000000000000,
                                      0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                     {0xfe, 0xfc, 0xf8, 0xf0, 0xe0, 0xc0, 0x80, 0x0, 0xfe00, 0xfc00, 0xf800, 0xf000,
                                      0xe000, 0xc000, 0x8000, 0x0, 0xfe0000, 0xfc0000, 0xf80000, 0xf00000, 0xe00000,
                                      0xc00000, 0x800000, 0x0, 0xfe000000, 0xfc000000, 0xf8000000, 0xf0000000, 0xe0000000,
                                      0xc0000000, 0x80000000, 0x0, 0xfe00000000, 0xfc00000000, 0xf800000000, 0xf000000000,
                                      0xe000000000, 0xc000000000, 0x8000000000, 0x0, 0xfe0000000000, 0xfc0000000000,
                                      0xf80000000000, 0xf00000000000, 0xe00000000000, 0xc00000000000, 0x800000000000,
                                      0x0, 0xfe000000000000, 0xfc000000000000, 0xf8000000000000, 0xf0000000000000,
                                      0xe0000000000000, 0xc0000000000000, 0x80000000000000, 0x0, 0xfe00000000000000,
                                      0xfc00000000000000, 0xf800000000000000, 0xf000000000000000, 0xe000000000000000,
                                      0xc000000000000000, 0x8000000000000000, 0x0},
                                     {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80,
                                      0x101, 0x202, 0x404, 0x808, 0x1010, 0x2020, 0x4040, 0x8080, 0x10101, 0x20202, 0x40404,
                                      0x80808, 0x101010, 0x202020, 0x404040, 0x808080, 0x1010101, 0x2020202, 0x4040404,
                                      0x8080808, 0x10101010, 0x20202020, 0x40404040, 0x80808080, 0x101010101, 0x202020202,
                                      0x404040404, 0x808080808, 0x1010101010, 0x2020202020, 0x4040404040, 0x8080808080,
                                      0x10101010101, 0x20202020202, 0x40404040404, 0x80808080808, 0x101010101010,
                                      0x202020202020, 0x404040404040, 0x808080808080, 0x1010101010101, 0x2020202020202,
                                      0x4040404040404, 0x8080808080808, 0x10101010101010, 0x20202020202020, 0x40404040404040,
                                      0x80808080808080},
                                     {0x0, 0x1, 0x3, 0x7, 0xf, 0x1f, 0x3f, 0x7f, 0x0, 0x100, 0x300, 0x700, 0xf00, 0x1f00,
                                      0x3f00, 0x7f00, 0x0, 0x10000, 0x30000, 0x70000, 0xf0000, 0x1f0000, 0x3f0000, 0x7f0000,
                                      0x0, 0x1000000, 0x3000000, 0x7000000, 0xf000000, 0x1f000000, 0x3f000000, 0x7f000000,
                                      0x0, 0x100000000, 0x300000000, 0x700000000, 0xf00000000, 0x1f00000000, 0x3f00000000,
                                      0x7f00000000, 0x0, 0x10000000000, 0x30000000000, 0x70000000000, 0xf0000000000,
                                      0x1f0000000000, 0x3f0000000000, 0x7f0000000000, 0x0, 0x1000000000000, 0x3000000000000,
                                      0x7000000000000, 0xf000000000000, 0x1f000000000000, 0x3f000000000000, 0x7f000000000000,
                                      0x0, 0x100000000000000, 0x300000000000000, 0x700000000000000, 0xf00000000000000,
                                      0x1f00000000000000, 0x3f00000000000000, 0x7f00000000000000}};

// const u64 ROOK_ATTACK_CACHE[64] = {0x1010101010101fe, 0x2020202020202fd, 0x4040404040404fb, 0x8080808080808f7, 0x10101010101010ef, 0x20202020202020df,
//                                    0x40404040404040bf, 0x808080808080807f, 0x10101010101fe01, 0x20202020202fd02, 0x40404040404fb04, 0x80808080808f708,
//                                    0x101010101010ef10, 0x202020202020df20, 0x404040404040bf40, 0x8080808080807f80, 0x101010101fe0101, 0x202020202fd0202,
//                                    0x404040404fb0404, 0x808080808f70808, 0x1010101010ef1010, 0x2020202020df2020, 0x4040404040bf4040, 0x80808080807f8080,
//                                    0x1010101fe010101, 0x2020202fd020202, 0x4040404fb040404, 0x8080808f7080808, 0x10101010ef101010, 0x20202020df202020,
//                                    0x40404040bf404040, 0x808080807f808080, 0x10101fe01010101, 0x20202fd02020202, 0x40404fb04040404, 0x80808f708080808,
//                                    0x101010ef10101010, 0x202020df20202020, 0x404040bf40404040, 0x8080807f80808080, 0x101fe0101010101, 0x202fd0202020202,
//                                    0x404fb0404040404, 0x808f70808080808, 0x1010ef1010101010, 0x2020df2020202020, 0x4040bf4040404040, 0x80807f8080808080,
//                                    0x1fe010101010101, 0x2fd020202020202, 0x4fb040404040404, 0x8f7080808080808, 0x10ef101010101010, 0x20df202020202020,
//                                    0x40bf404040404040, 0x807f808080808080, 0xfe01010101010101, 0xfd02020202020202, 0xfb04040404040404, 0xf708080808080808,
//                                    0xef10101010101010, 0xdf20202020202020, 0xbf40404040404040, 0x7f80808080808080};

// const u64 BISHOP_ATTACK_CACHE[64] = {0x8040201008040200, 0x80402010080500, 0x804020110a00, 0x8041221400, 0x182442800, 0x10204885000, 0x102040810a000,
//                                      0x102040810204000, 0x4020100804020002, 0x8040201008050005, 0x804020110a000a, 0x804122140014, 0x18244280028,
//                                      0x1020488500050, 0x102040810a000a0, 0x204081020400040, 0x2010080402000204, 0x4020100805000508, 0x804020110a000a11,
//                                      0x80412214001422, 0x1824428002844, 0x102048850005088, 0x2040810a000a010, 0x408102040004020, 0x1008040200020408,
//                                      0x2010080500050810, 0x4020110a000a1120, 0x8041221400142241, 0x182442800284482, 0x204885000508804, 0x40810a000a01008,
//                                      0x810204000402010, 0x804020002040810, 0x1008050005081020, 0x20110a000a112040, 0x4122140014224180, 0x8244280028448201,
//                                      0x488500050880402, 0x810a000a0100804, 0x1020400040201008, 0x402000204081020, 0x805000508102040, 0x110a000a11204080,
//                                      0x2214001422418000, 0x4428002844820100, 0x8850005088040201, 0x10a000a010080402, 0x2040004020100804, 0x200020408102040,
//                                      0x500050810204080, 0xa000a1120408000, 0x1400142241800000, 0x2800284482010000, 0x5000508804020100, 0xa000a01008040201,
//                                      0x4000402010080402, 0x2040810204080, 0x5081020408000, 0xa112040800000, 0x14224180000000, 0x28448201000000, 0x50880402010000,
//                                      0xa0100804020100, 0x40201008040201};

//need to fix rook edge masks
const u64 ROOK_MASKED_ATTACKS[64] = {0x101010101017e, 0x202020202027c, 0x404040404047a, 0x8080808080876, 0x1010101010106e, 0x2020202020205e, 0x4040404040403e,
                                     0x8080808080807e, 0x1010101017e00, 0x2020202027c00, 0x4040404047a00, 0x8080808087600, 0x10101010106e00, 0x20202020205e00,
                                     0x40404040403e00, 0x80808080807e00, 0x10101017e0100, 0x20202027c0200, 0x40404047a0400, 0x8080808760800, 0x101010106e1000,
                                     0x202020205e2000, 0x404040403e4000, 0x808080807e8000, 0x101017e010100, 0x202027c020200, 0x404047a040400, 0x8080876080800,
                                     0x1010106e101000, 0x2020205e202000, 0x4040403e404000, 0x8080807e808000, 0x1017e01010100, 0x2027c02020200, 0x4047a04040400,
                                     0x8087608080800, 0x10106e10101000, 0x20205e20202000, 0x40403e40404000, 0x80807e80808000, 0x17e0101010100, 0x27c0202020200,
                                     0x47a0404040400, 0x8760808080800, 0x106e1010101000, 0x205e2020202000, 0x403e4040404000, 0x807e8080808000, 0x7e010101010100,
                                     0x7c020202020200, 0x7a040404040400, 0x76080808080800, 0x6e101010101000, 0x5e202020202000, 0x3e404040404000, 0x7e808080808000,
                                     0x7e01010101010100, 0x7c02020202020200, 0x7a04040404040400, 0x7608080808080800, 0x6e10101010101000, 0x5e20202020202000,
                                     0x3e40404040404000, 0x7e80808080808000};

const u64 BISHOP_MASKED_ATTACKS[64] = {0x40201008040200, 0x402010080400, 0x4020100a00, 0x40221400, 0x2442800, 0x204085000, 0x20408102000,
                                       0x2040810204000, 0x20100804020000, 0x40201008040000, 0x4020100a0000, 0x4022140000, 0x244280000, 0x20408500000, 0x2040810200000,
                                       0x4081020400000, 0x10080402000200, 0x20100804000400, 0x4020100a000a00, 0x402214001400, 0x24428002800, 0x2040850005000,
                                       0x4081020002000, 0x8102040004000, 0x8040200020400, 0x10080400040800, 0x20100a000a1000, 0x40221400142200, 0x2442800284400,
                                       0x4085000500800, 0x8102000201000, 0x10204000402000, 0x4020002040800, 0x8040004081000, 0x100a000a102000, 0x22140014224000,
                                       0x44280028440200, 0x8500050080400, 0x10200020100800, 0x20400040201000, 0x2000204081000, 0x4000408102000, 0xa000a10204000,
                                       0x14001422400000, 0x28002844020000, 0x50005008040200, 0x20002010080400, 0x40004020100800, 0x20408102000, 0x40810204000,
                                       0xa1020400000, 0x142240000000, 0x284402000000, 0x500804020000, 0x201008040200, 0x402010080400, 0x2040810204000, 0x4081020400000,
                                       0xa102040000000, 0x14224000000000, 0x28440200000000, 0x50080402000000, 0x20100804020000, 0x40201008040200};

/**
 * the list of bishop magic numbers
 */
u64 BISHOP_MAGIC_NUMBERS[64] = {0x89a1121896040240, 0x2004844802002010, 0x2068080051921000, 0x62880a0220200808,
                                0x4042004000000, 0x100822020200011, 0xc00444222012000a, 0x28808801216001, 0x400492088408100,
                                0x201c401040c0084, 0x840800910a0010, 0x82080240060, 0x2000840504006000, 0x30010c4108405004, 0x1008005410080802, 0x8144042209100900, 0x208081020014400,
                                0x4800201208ca00, 0xf18140408012008, 0x1004002802102001, 0x841000820080811, 0x40200200a42008, 0x800054042000, 0x88010400410c9000, 0x520040470104290,
                                0x1004040051500081, 0x2002081833080021, 0x400c00c010142, 0x941408200c002000, 0x658810000806011, 0x188071040440a00, 0x4800404002011c00, 0x104442040404200,
                                0x511080202091021, 0x4022401120400, 0x80c0040400080120, 0x8040010040820802, 0x480810700020090, 0x102008e00040242, 0x809005202050100, 0x8002024220104080,
                                0x431008804142000, 0x19001802081400, 0x200014208040080, 0x3308082008200100, 0x41010500040c020, 0x4012020c04210308, 0x208220a202004080, 0x111040120082000,
                                0x6803040141280a00, 0x2101004202410000, 0x8200000041108022, 0x21082088000, 0x2410204010040, 0x40100400809000, 0x822088220820214, 0x40808090012004,
                                0x910224040218c9, 0x402814422015008, 0x90014004842410, 0x1000042304105, 0x10008830412a00, 0x2520081090008908, 0x40102000a0a60140};

/**
 * the amount of data in bits we need to store for each square
 */
int BISHOP_MAGIC_SHIFTS[64] = {
    6, 5, 5, 5, 5, 5, 5, 6,
    5, 5, 5, 5, 5, 5, 5, 5,
    5, 5, 7, 7, 7, 7, 5, 5,
    5, 5, 7, 9, 9, 7, 5, 5,
    5, 5, 7, 9, 9, 7, 5, 5,
    5, 5, 7, 7, 7, 7, 5, 5,
    5, 5, 5, 5, 5, 5, 5, 5,
    6, 5, 5, 5, 5, 5, 5, 6};

/**
 * 512 because in theory we at most need 2^9 per square
 */
u64 BISHOP_MAGIC_TABLE[64][512];

/**
 * the list of rook magic numbers
 */
u64 ROOK_MAGIC_NUMBERS[64] = {0xa8002c000108020, 0x6c00049b0002001, 0x100200010090040, 0x2480041000800801, 0x280028004000800, 0x900410008040022, 0x280020001001080, 0x2880002041000080, 0xa000800080400034,
                              0x4808020004000, 0x2290802004801000, 0x411000d00100020, 0x402800800040080, 0xb000401004208, 0x2409000100040200, 0x1002100004082, 0x22878001e24000,
                              0x1090810021004010, 0x801030040200012, 0x500808008001000, 0xa08018014000880, 0x8000808004000200, 0x201008080010200, 0x801020000441091, 0x800080204005,
                              0x1040200040100048, 0x120200402082, 0xd14880480100080, 0x12040280080080, 0x100040080020080, 0x9020010080800200, 0x813241200148449, 0x491604001800080,
                              0x100401000402001, 0x4820010021001040, 0x400402202000812, 0x209009005000802, 0x810800601800400, 0x4301083214000150, 0x204026458e001401, 0x40204000808000,
                              0x8001008040010020, 0x8410820820420010, 0x1003001000090020, 0x804040008008080, 0x12000810020004, 0x1000100200040208, 0x430000a044020001, 0x280009023410300,
                              0xe0100040002240, 0x200100401700, 0x2244100408008080, 0x8000400801980, 0x2000810040200, 0x8010100228810400, 0x2000009044210200, 0x4080008040102101,
                              0x40002080411d01, 0x2005524060000901, 0x502001008400422, 0x489a000810200402, 0x1004400080a13, 0x4000011008020084, 0x26002114058042};

/**
 * the amount of data in bits we need to store for each square
 */
int ROOK_MAGIC_SHIFTS[64] = {
    12, 11, 11, 11, 11, 11, 11, 12,
    11, 10, 10, 10, 10, 10, 10, 11,
    11, 10, 10, 10, 10, 10, 10, 11,
    11, 10, 10, 10, 10, 10, 10, 11,
    11, 10, 10, 10, 10, 10, 10, 11,
    11, 10, 10, 10, 10, 10, 10, 11,
    11, 10, 10, 10, 10, 10, 10, 11,
    12, 11, 11, 11, 11, 11, 11, 12};

/**
 * 4096 because we need at most 2^12 per square
 */
u64 ROOK_MAGIC_TABLE[64][4096];

const u64 KNIGHT_MOVE_CACHE[64] = {0x20400, 0x50800, 0xa1100, 0x142200, 0x284400, 0x508800, 0xa01000,
                                   0x402000, 0x2040004, 0x5080008, 0xa110011, 0x14220022, 0x28440044,
                                   0x50880088, 0xa0100010, 0x40200020, 0x204000402, 0x508000805, 0xa1100110a,
                                   0x1422002214, 0x2844004428, 0x5088008850, 0xa0100010a0, 0x4020002040,
                                   0x20400040200, 0x50800080500, 0xa1100110a00, 0x142200221400, 0x284400442800,
                                   0x508800885000, 0xa0100010a000, 0x402000204000, 0x2040004020000,
                                   0x5080008050000, 0xa1100110a0000, 0x14220022140000, 0x28440044280000,
                                   0x50880088500000, 0xa0100010a00000, 0x40200020400000, 0x204000402000000,
                                   0x508000805000000, 0xa1100110a000000, 0x1422002214000000, 0x2844004428000000,
                                   0x5088008850000000, 0xa0100010a0000000, 0x4020002040000000, 0x400040200000000,
                                   0x800080500000000, 0x1100110a00000000, 0x2200221400000000, 0x4400442800000000,
                                   0x8800885000000000, 0x100010a000000000, 0x2000204000000000, 0x4020000000000,
                                   0x8050000000000, 0x110a0000000000, 0x22140000000000, 0x44280000000000,
                                   0x88500000000000, 0x10a00000000000, 0x20400000000000};

const u64 KING_MOVE_CACHE[64] = {0x302, 0x705, 0xe0a, 0x1c14, 0x3828, 0x7050, 0xe0a0, 0xc040, 0x30203, 0x70507,
                                 0xe0a0e, 0x1c141c, 0x382838, 0x705070, 0xe0a0e0, 0xc040c0, 0x3020300, 0x7050700,
                                 0xe0a0e00, 0x1c141c00, 0x38283800, 0x70507000, 0xe0a0e000, 0xc040c000, 0x302030000,
                                 0x705070000, 0xe0a0e0000, 0x1c141c0000, 0x3828380000, 0x7050700000, 0xe0a0e00000,
                                 0xc040c00000, 0x30203000000, 0x70507000000, 0xe0a0e000000, 0x1c141c000000,
                                 0x382838000000, 0x705070000000, 0xe0a0e0000000, 0xc040c0000000, 0x3020300000000,
                                 0x7050700000000, 0xe0a0e00000000, 0x1c141c00000000, 0x38283800000000, 0x70507000000000,
                                 0xe0a0e000000000, 0xc040c000000000, 0x302030000000000, 0x705070000000000,
                                 0xe0a0e0000000000, 0x1c141c0000000000, 0x3828380000000000, 0x7050700000000000,
                                 0xe0a0e00000000000, 0xc040c00000000000, 0x203000000000000, 0x507000000000000,
                                 0xa0e000000000000, 0x141c000000000000, 0x2838000000000000, 0x5070000000000000,
                                 0xa0e0000000000000, 0x40c0000000000000};

const u64 PAWN_CAPTURE_CACHE[2][64] = {{0x200, 0x500, 0xa00, 0x1400, 0x2800, 0x5000, 0xa000, 0x4000,
                                        0x20000, 0x50000, 0xa0000, 0x140000, 0x280000, 0x500000, 0xa00000, 0x400000,
                                        0x2000000, 0x5000000, 0xa000000, 0x14000000, 0x28000000, 0x50000000, 0xa0000000, 0x40000000,
                                        0x200000000, 0x500000000, 0xa00000000, 0x1400000000, 0x2800000000, 0x5000000000, 0xa000000000,
                                        0x4000000000, 0x20000000000, 0x50000000000, 0xa0000000000, 0x140000000000, 0x280000000000,
                                        0x500000000000, 0xa00000000000, 0x400000000000, 0x2000000000000, 0x5000000000000, 0xa000000000000,
                                        0x14000000000000, 0x28000000000000, 0x50000000000000, 0xa0000000000000, 0x40000000000000,
                                        0x200000000000000, 0x500000000000000, 0xa00000000000000, 0x1400000000000000, 0x2800000000000000,
                                        0x5000000000000000, 0xa000000000000000, 0x4000000000000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                       {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x5, 0xa, 0x14, 0x28, 0x50, 0xa0, 0x40, 0x200, 0x500,
                                        0xa00, 0x1400, 0x2800, 0x5000, 0xa000, 0x4000, 0x20000, 0x50000, 0xa0000, 0x140000, 0x280000,
                                        0x500000, 0xa00000, 0x400000, 0x2000000, 0x5000000, 0xa000000, 0x14000000, 0x28000000, 0x50000000,
                                        0xa0000000, 0x40000000, 0x200000000, 0x500000000, 0xa00000000, 0x1400000000, 0x2800000000,
                                        0x5000000000, 0xa000000000, 0x4000000000, 0x20000000000, 0x50000000000, 0xa0000000000,
                                        0x140000000000, 0x280000000000, 0x500000000000, 0xa00000000000, 0x400000000000, 0x2000000000000,
                                        0x5000000000000, 0xa000000000000, 0x14000000000000, 0x28000000000000, 0x50000000000000,
                                        0xa0000000000000, 0x40000000000000}};

const u64 PAWN_MOVE_CACHE[2][64] = {{0x100, 0x200, 0x400, 0x800, 0x1000, 0x2000, 0x4000, 0x8000, 0x10000,
                                     0x20000, 0x40000, 0x80000, 0x100000, 0x200000, 0x400000, 0x800000, 0x1000000, 0x2000000,
                                     0x4000000, 0x8000000, 0x10000000, 0x20000000, 0x40000000, 0x80000000, 0x100000000,
                                     0x200000000, 0x400000000, 0x800000000, 0x1000000000, 0x2000000000, 0x4000000000,
                                     0x8000000000, 0x10000000000, 0x20000000000, 0x40000000000, 0x80000000000, 0x100000000000,
                                     0x200000000000, 0x400000000000, 0x800000000000, 0x1000000000000, 0x2000000000000,
                                     0x4000000000000, 0x8000000000000, 0x10000000000000, 0x20000000000000, 0x40000000000000,
                                     0x80000000000000, 0x100000000000000, 0x200000000000000, 0x400000000000000, 0x800000000000000,
                                     0x1000000000000000, 0x2000000000000000, 0x4000000000000000, 0x8000000000000000,
                                     0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                    {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80,
                                     0x100, 0x200, 0x400, 0x800, 0x1000, 0x2000, 0x4000, 0x8000, 0x10000, 0x20000, 0x40000,
                                     0x80000, 0x100000, 0x200000, 0x400000, 0x800000, 0x1000000, 0x2000000, 0x4000000,
                                     0x8000000, 0x10000000, 0x20000000, 0x40000000, 0x80000000, 0x100000000, 0x200000000,
                                     0x400000000, 0x800000000, 0x1000000000, 0x2000000000, 0x4000000000, 0x8000000000,
                                     0x10000000000, 0x20000000000, 0x40000000000, 0x80000000000, 0x100000000000,
                                     0x200000000000, 0x400000000000, 0x800000000000, 0x1000000000000, 0x2000000000000,
                                     0x4000000000000, 0x8000000000000, 0x10000000000000, 0x20000000000000, 0x40000000000000,
                                     0x80000000000000}};

const u64 PAWN_DOUBLE_CACHE[2][64] = {{0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x1000000, 0x2000000, 0x4000000, 0x8000000, 0x10000000, 0x20000000,
                                       0x40000000, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                                      {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
                                       0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x100000000,
                                       0x200000000, 0x400000000, 0x800000000, 0x1000000000, 0x2000000000,
                                       0x4000000000, 0x8000000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}};

const u64 ONE_FILE_ADJ_CACHE[64] = {0x2, 0x5, 0xa, 0x14, 0x28, 0x50, 0xa0, 0x40, 0x200, 0x500,
                                    0xa00, 0x1400, 0x2800, 0x5000, 0xa000, 0x4000, 0x20000, 0x50000, 0xa0000, 0x140000, 0x280000,
                                    0x500000, 0xa00000, 0x400000, 0x2000000, 0x5000000, 0xa000000, 0x14000000, 0x28000000,
                                    0x50000000, 0xa0000000, 0x40000000, 0x200000000, 0x500000000, 0xa00000000, 0x1400000000,
                                    0x2800000000, 0x5000000000, 0xa000000000, 0x4000000000, 0x20000000000, 0x50000000000,
                                    0xa0000000000, 0x140000000000, 0x280000000000, 0x500000000000, 0xa00000000000, 0x400000000000,
                                    0x2000000000000, 0x5000000000000, 0xa000000000000, 0x14000000000000, 0x28000000000000,
                                    0x50000000000000, 0xa0000000000000, 0x40000000000000, 0x200000000000000, 0x500000000000000,
                                    0xa00000000000000, 0x1400000000000000, 0x2800000000000000, 0x5000000000000000, 0xa000000000000000, 0x4000000000000000};

/**
 * Put the data we want to access together in a struct for better cache performance.
 */
struct magic_data
{
  u64 *table_ptr;
  u64 masked_attacks;
  u64 magic_number;
  int shift;
};

/**
 * Put the data we want to access together in a struct for better cache performance.
 */
struct move_data
{
  u64 pawn_capture[2];
  u64 pawn_push[2];
  u64 pawn_double[2];
  u64 knight;
  u64 king;
};

// These hold the data for a particular square.
magic_data BishopMagicData[64];
magic_data RookMagicData[64];

// These hold the data for a particular square.
move_data MoveData[64];

/**
 * Sometimes we care about the specific direction a ray goes 
 * for pin checking, or other things.
 */
namespace direction
{
  namespace rook
  {
    const int n = 0;
    const int e = 1;
    const int s = 2;
    const int w = 3;
  } // namespace rook
  namespace bishop
  {
    const int nw = 0;
    const int ne = 1;
    const int se = 2;
    const int sw = 3;
  } // namespace bishop
} // namespace direction

/**
 * return the i-th permutation of mask with pop_count members
 * 
 * original method by Tord Romstad with modifications
 */
u64 permute_mask(u64 mask, int index, int pop_count)
{
  int i, j;
  u64 result = 0;
  for (i = 0; i < pop_count; i++)
  {
    j = bitscanForward(mask);
    mask &= ~(((u64)1) << j);

    if (index & (1 << i))
      result |= (((u64)1) << j);
  }
  return result;
}

u64 move_maps::slidingAttackers(u64 occupancy_map, u64 subject, u64 rooks, u64 bishops)
{
  assert(isValidSquare(u64ToSquare(subject)));
  // assert(occupancy_map & subject);

  Square subj_location = u64ToSquare(subject);
  return (rooks & move_maps::rookMoves(subj_location, occupancy_map)) | (bishops & move_maps::bishopMoves(subj_location, occupancy_map));
}

u64 move_maps::jumpingAttackers(u64 subject, Color attacking_turn, u64 knights, u64 kings, u64 pawns)
{
  assert(isValidSquare(u64ToSquare(subject)));
  Square subj_location = u64ToSquare(subject);
  const u64 pawn_overlaps = pawns & move_maps::pawnCaptures(subj_location, oppositeColor(attacking_turn));
  const u64 king_overlaps = kings & move_maps::kingMoves(subj_location);
  const u64 knight_overlaps = knights & move_maps::knightMoves(subj_location);
  return pawn_overlaps | king_overlaps | knight_overlaps;
}

/**
 * Helper function for ground truth method for getting rook moves
 */
u64 rookMovesClassical(Square sq, u64 occupants)
{
  // given a color rook at index64
  u64 ray = 0;
  u64 overlaps = 0;
  u64 result = 0;

  ray = move_maps::rookRay(sq, direction::rook::n);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::rookRay(bitscanForward(overlaps), direction::rook::n);
  }

  ray = move_maps::rookRay(sq, direction::rook::e);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::rookRay(bitscanForward(overlaps), direction::rook::e);
  }

  ray = move_maps::rookRay(sq, direction::rook::s);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::rookRay(bitscanReverse(overlaps), direction::rook::s);
  }

  ray = move_maps::rookRay(sq, direction::rook::w);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::rookRay(bitscanReverse(overlaps), direction::rook::w);
  }
  return result;
}

/**
 * Helper function for ground truth method for getting rook moves
 */
u64 bishopMovesClassical(Square sq, u64 occupants)
{
  // given a color rook at index64
  u64 ray = 0;
  u64 overlaps = 0;
  u64 result = 0;

  ray = move_maps::bishopRay(sq, direction::bishop::nw);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::bishopRay(bitscanForward(overlaps), direction::bishop::nw);
  }

  ray = move_maps::bishopRay(sq, direction::bishop::ne);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::bishopRay(bitscanForward(overlaps), direction::bishop::ne);
  }

  ray = move_maps::bishopRay(sq, direction::bishop::se);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::bishopRay(bitscanReverse(overlaps), direction::bishop::se);
  }

  ray = move_maps::bishopRay(sq, direction::bishop::sw);
  overlaps = ray & occupants;
  result |= ray;
  if (overlaps)
  {
    result &= ~move_maps::bishopRay(bitscanReverse(overlaps), direction::bishop::sw);
  }
  return result;
}

void move_maps::init()
{
  verbose_info("initializing move cache");

  for (int s = 0; s < 64; s++)
  {
    for (int i = 0; i < 4096; i++)
    {
      ROOK_MAGIC_TABLE[s][i] = 0;
    }
    for (int i = 0; i < 512; i++)
    {
      BISHOP_MAGIC_TABLE[s][i] = 0;
    }
  }
  // find magics
  // fill each combo with classically generated moves
  for (Square sq = 0; sq < 64; sq++)
  {
    // for each possible blocker map
    u64 attack_mask = ROOK_MASKED_ATTACKS[sq];
    int n_bits = hadd(attack_mask);
    // count up to 2^n
    for (int i = 0; i < (1 << n_bits); i++)
    {
      u64 blocking_mask = permute_mask(attack_mask, i, n_bits);
      u64 hash = (blocking_mask * ROOK_MAGIC_NUMBERS[sq]) >> (64 - ROOK_MAGIC_SHIFTS[sq]);
      if (ROOK_MAGIC_TABLE[sq][hash] != 0)
      {
        assert(1 == 0);
      }
      ROOK_MAGIC_TABLE[sq][hash] = rookMovesClassical(sq, blocking_mask);
    }
    RookMagicData[sq].shift = ROOK_MAGIC_SHIFTS[sq];
    RookMagicData[sq].masked_attacks = attack_mask;
    RookMagicData[sq].magic_number = ROOK_MAGIC_NUMBERS[sq];
    RookMagicData[sq].table_ptr = ROOK_MAGIC_TABLE[sq];
  }

  for (Square sq = 0; sq < 64; sq++)
  {
    // for each possible blocker map
    u64 attack_mask = BISHOP_MASKED_ATTACKS[sq];
    int n_bits = hadd(attack_mask);

    // count up to 2^n
    for (int i = 0; i < (1 << n_bits); i++)
    {
      u64 blocking_mask = permute_mask(attack_mask, i, n_bits);
      u64 hash = (blocking_mask * BISHOP_MAGIC_NUMBERS[sq]) >> (64 - BISHOP_MAGIC_SHIFTS[sq]);
      BISHOP_MAGIC_TABLE[sq][hash] = bishopMovesClassical(sq, blocking_mask);
    }
    BishopMagicData[sq].shift = BISHOP_MAGIC_SHIFTS[sq];
    BishopMagicData[sq].masked_attacks = attack_mask;
    BishopMagicData[sq].magic_number = BISHOP_MAGIC_NUMBERS[sq];
    BishopMagicData[sq].table_ptr = BISHOP_MAGIC_TABLE[sq];
  }

  for (Square sq = 0; sq < 64; sq++)
  {
    MoveData[sq].pawn_capture[0] = PAWN_CAPTURE_CACHE[0][sq];
    MoveData[sq].pawn_capture[1] = PAWN_CAPTURE_CACHE[1][sq];
    MoveData[sq].pawn_push[0] = PAWN_MOVE_CACHE[0][sq];
    MoveData[sq].pawn_push[1] = PAWN_MOVE_CACHE[1][sq];
    MoveData[sq].pawn_double[0] = PAWN_DOUBLE_CACHE[0][sq];
    MoveData[sq].pawn_double[1] = PAWN_DOUBLE_CACHE[1][sq];
    MoveData[sq].knight = KNIGHT_MOVE_CACHE[sq];
    MoveData[sq].king = KING_MOVE_CACHE[sq];
  }
}

u64 move_maps::oneFileAdjacent(Square piece_location)
{
  return ONE_FILE_ADJ_CACHE[piece_location];
}

u64 move_maps::pawnCaptures(Square piece_location, Color color)
{
  // return PAWN_CAPTURE_CACHE[color][piece_location];
  return MoveData[piece_location].pawn_capture[color];
}

u64 move_maps::pawnDoubleMoves(Square piece_location, Color color)
{
  // return PAWN_DOUBLE_CACHE[color][piece_location];
  return MoveData[piece_location].pawn_double[color];
}

u64 move_maps::pawnMoves(Square piece_location, Color color)
{
  // return PAWN_MOVE_CACHE[color][piece_location];
  return MoveData[piece_location].pawn_push[color];
}

u64 move_maps::knightMoves(Square piece_location)
{
  //return KNIGHT_MOVE_CACHE[piece_location];
  return MoveData[piece_location].knight;
}

u64 move_maps::kingMoves(Square piece_location)
{
  // return KING_MOVE_CACHE[piece_location];
  return MoveData[piece_location].king;
}

/**
 * There is a bug with magic bitboards for some reason so for now we will use the naive approach
 */
u64 move_maps::bishopMoves(Square piece_location, u64 occupants)
{
  u64 blocking_mask = BishopMagicData[piece_location].masked_attacks & occupants;
  u64 hash = (blocking_mask * BishopMagicData[piece_location].magic_number) >> (64 - BishopMagicData[piece_location].shift);
  return BishopMagicData[piece_location].table_ptr[hash];
}

u64 move_maps::rookMoves(Square piece_location, u64 occupants)
{
  u64 blocking_mask = RookMagicData[piece_location].masked_attacks & occupants;
  u64 hash = (blocking_mask * RookMagicData[piece_location].magic_number) >> (64 - RookMagicData[piece_location].shift);
  return RookMagicData[piece_location].table_ptr[hash];
}

u64 move_maps::bishopRay(Square piece_location, int direction)
{
  return BISHOP_RAY_CACHE[direction][piece_location];
}

u64 move_maps::rookRay(Square piece_location, int direction)
{
  return ROOKS_RAY_CACHE[direction][piece_location];
}
