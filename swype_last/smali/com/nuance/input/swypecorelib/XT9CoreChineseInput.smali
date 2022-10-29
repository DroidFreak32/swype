.class public Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreChineseInput.java"


# static fields
.field public static final CHINESE_CORRECTION_LEVEL:I = 0x66

.field public static final CHINESE_CORRECTION_LEVEL_DEFAULT:I = 0x2

.field public static final CHINESE_CORRECTION_LEVEL_OFF:I = 0x0

.field public static final CHINESE_INPUT_MODE_BPMF:I = 0x1

.field public static final CHINESE_INPUT_MODE_CANGJIE:I = 0x4

.field public static final CHINESE_INPUT_MODE_DOUBLEPINYIN:I = 0x3

.field public static final CHINESE_INPUT_MODE_PINYIN:I = 0x0

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE:I = 0x5

.field public static final CHINESE_INPUT_MODE_STROKE:I = 0x2

.field public static final CHINESE_MOHU_PAIR_AN_ANG:I = 0x40

.field public static final CHINESE_MOHU_PAIR_C_CH:I = 0x2

.field public static final CHINESE_MOHU_PAIR_EN_ENG:I = 0x80

.field public static final CHINESE_MOHU_PAIR_F_H:I = 0x20

.field public static final CHINESE_MOHU_PAIR_IN_ING:I = 0x100

.field public static final CHINESE_MOHU_PAIR_N_L:I = 0x8

.field public static final CHINESE_MOHU_PAIR_R_L:I = 0x10

.field public static final CHINESE_MOHU_PAIR_S_SH:I = 0x4

.field public static final CHINESE_MOHU_PAIR_Z_ZH:I = 0x1

.field public static final CHINESE_MOHU_PINYIN:I = 0x65

.field public static final CHINESE_NAME_INPUT:I = 0x64

.field public static final CHINESE_NAME_INPUT_OFF:I = 0x0

.field public static final CHINESE_NAME_INPUT_ON:I = 0x1

.field public static final CHINESE_PHONETIC_TONE1:I = 0xb1

.field public static final CHINESE_PHONETIC_TONE2:I = 0xb2

.field public static final CHINESE_PHONETIC_TONE3:I = 0xb3

.field public static final CHINESE_PHONETIC_TONE4:I = 0xb4

.field public static final CHINESE_PHONETIC_TONE5:I = 0xb5

.field private static final COMPONENT_MARKER:C = '\u9fff'

.field public static final ET9CPPhraseSource_Audb:I = 0x5

.field public static final ET9CPPhraseSource_DLMDeletable:I = 0xe

.field public static final ET9CPPhraseSource_DLMResettable:I = 0xd

.field public static final ET9CPPhraseSource_Ldb:I = 0x1

.field public static final ET9CPPhraseSource_Msdb:I = 0x7

.field public static final ET9CPPhraseSource_Rdb:I = 0x4

.field public static final ET9CPPhraseSource_Udb:I = 0x6

.field public static final ET9CPPhraseSource_UdbPrediction:I = 0x9

.field public static final ET9CPPhraseSource_Unknown:I = 0x0

.field public static final INPUT_MODE_BPMF:I = 0x1

.field public static final INPUT_MODE_CANGJIE:I = 0x4

.field public static final INPUT_MODE_DOUBLEPINYIN:I = 0x3

.field public static final INPUT_MODE_PINYIN:I = 0x0

.field public static final INPUT_MODE_QUICK_CANGJIE:I = 0x5

.field public static final INPUT_MODE_STROKE:I = 0x2

.field private static final INTERNAL_SEGMENT_DELIMITER:C = '_'

.field public static final MAXACTIVEKEYCOUNT:I = 0x40

.field public static final MAXONEPAGESIZE:I = 0x1e

.field public static final MAXSPELLLEN:I = 0x100

.field public static final MAXWORDLEN:I = 0x70

.field public static final MAXWORDLIST:I = 0x100

.field private static final TAG:Ljava/lang/String; = "XT9CoreChineseInput"

.field private static final mBopomofoSyllableDelimiter:C = '_'

.field private static final mCangjie:[C

.field private static final mChineseDelimiter:C = '\''

.field private static final mChineseSegmentDelimiter:C = ' '

.field private static final mCompSimp:[C

.field private static final mCompTrad:[C

.field private static mPhraseBuffer:[C

.field private static mPhraseLength:[I

.field private static mSpellBuffer:[C

.field private static mSpellLength:[I

.field private static final mStrokes:[C

.field private static final mTones:[C


# instance fields
.field private mActiveSpell:Ljava/lang/StringBuilder;

.field private mChineseWordInline:Ljava/lang/StringBuilder;

.field private mDelimiterCounts:I

.field private mGetStringBufferArray:[Ljava/lang/StringBuilder;

.field private mPinyinInline:Ljava/lang/StringBuilder;

.field private mPopupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWdSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mScratchIntWordSource:[I

.field private mScratchSpellBuffer:[C

.field private mScratchSpellInt:[I

.field private mSuffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuffixPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mTextContext:Ljava/lang/String;

.field private mWdSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x70

    const/4 v1, 0x1

    .line 314
    const-string/jumbo v0, "\u4e00\u4e28\u4e3f\u4e36\ufe41\uff1f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mStrokes:[C

    .line 319
    const-string/jumbo v0, "\u5341\u5382~~\u251c\u2016\u5182\u56d7~\u4ebb~\u516b\u4eba\u4e42\u51e0\u5315~\u52f9\u4e5d\u4ea0\u51ab~\u8ba0\u5196\u961d\u4e86\u5200\u4e43\u53c8\u53b6\u256a\u571f\u58eb\u5de5\u8279\u5927\u624c~\u53e3\u5c71\u5dfe\u5343\u5f73\u72ad\u5902\u5915\u9963\u4e2c\u5e7f\u4ea1\u95e8~\u6c35\u5fc4\u30c4\u5b80\u5c38\u5f13\u5b50\u5973\u9a6c\u7e9f\u5ddb\u4e30\u738b~~\u5eff~\u6728\u4e0d\u6b79\u8f66\u7259\u65e5\u4e2d\u8d1d\u6c14\u6bdb~~\u7247\u7236\u4eca~\u5206\u6708\u6587\u65b9\u706b\u6237\u793b~\u53e4\u77f3\u9f99\u4e1a\u76ee\u7530\u76bf\u77e2\u9485\u79be\u4e18\u767d\u7592\u7acb\u7a74\u8864\u52a0\u77db\u8012\u8033\u4e9a\u897f\u6b64\u864d\u866b\u7f36\u820c\u7af9\u81fc\u81ea\u821f\u5408~~\u7c73\u7fbd\u8d70\u8d64~\u675f\u9149\u8db3\u8eab\u8c78\u89d2\u5176\u96e8\u975e\u9f7f\u96b9\u9c7c\u9769\u9aa8\u9b3c\u6556\u83ab\u9e7f\u9ebb\u655d\u9ed1\u8f9f\u529b\u5e72\u5f50\u5f51\u5e7a\u592b\u5929\u5143\u6bd4\u6b62\u6c34\u723f~\u6c11\u7676\u5409\u81e3\u81f3~\u8840~\u7cf8\u8eca\u752b\u8c46\u8c55\u8c9d\u8a00\u541b~\u9580\u91d1\u98df\u9999\u97cb\u99ac\u9adf\u822c~\u57f7\u9ea5\u9b5a\u9f20\u9f3b\u9f52\u9f8d"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompSimp:[C

    .line 324
    const-string/jumbo v0, "~\u5341~~\u5382\u5315\u251c\u5182~~\u4ebb~\u4e42\u4eba\u516b\u4e43\u52f9\u4e5d~~\u51e0~\u51ab\u4ea0~\u5196\u4e86\u529b\u5200\u53c8\u53b6~\u5e72~\u571f\u58eb\u5de5\u624c\u5344\u5927\u5140\u5c22\u5f0b~~\u53e3\u5c71\u5dfe\u5343~~\u5f73~\u72ad\u5915\u5902\u5e7f\u4ea1\u5fc4~\u6c35\u5b80~\u5c38\u5df1\u5df3\u5f13\u5b50\u5973\u5f51\u961d\u5e7a\u5ddb\u4e30\u738b~\u5f00\u592b\u5929\u5143~~\u5eff\u6728\u652f\u4e0d\u6b79\u6bd4\u7259\u65e1\u6208\u8279\u6b62~\u5c11\u65e5\u4e2d\u6c34\u624b\u6c14\u6bdb\u58ec\u544a~\u7247\u592d\u65a4\u4eca\u7236\u722b\u5206\u516c\u6708\u6236\u4e39\u6c0f\u52ff~\u6587\u65b9\u706b\u5fc3~\u723f\u4e88~\u672a\u6b63\u7518\u4e16\u53e4\u77f3\u5317\u5360\u4e1a~\u76ee\u7530\u7531\u592e~\u751f\u77e2\u5931\u79be\u4e18~\u767d\u74dc\u76ae~\u5917\u793b\u7592\u7acb\u7384\u534a\u7a74~\u8864\u6c11\u5f17\u758b\u4e1e\u5974\u52a0\u53ec\u53f0\u7676\u77db\u820c\u6b21\u5409\u5de9\u8033\u5171\u81e3\u897f\u673f\u897f\u800c\u5938\u5217\u81f3~\u6b64\u864d\u5149\u866b\u66f2~\u540c\u8012\u7f36\u5148\u7af9\u81fc\u81ea~\u8840\u540e\u821f\u6740\u5408\u5146\u65ec\u591a\u4ea6~\u4ea4~~\u4ea5\u7f8a~\u5e76~\u7c73~\u8278\u5982\u7fbd\u7cf8\u8d70\u8d64~\u514b\u6c42\u5b5b\u8eca\u752b\u66f4\u675f~\u543e\u8c46\u9149\u8fb0\u593e\u8c55\u5de0~~\u8c9d\u8db3\u6bcf\u8eab~\u4f59\u5e0c\u91c6\u8c37\u8c78\u5375\u89d2\u8a00\u4ea8\u8f9b~~\u5f1f\u6c99\u541b\u752c\u73a8\u6b66\u9752\u8005\u5774\u5e78\u4e9e\u5176\u6614\u76f4~\u6797\u4f86~\u4e3d\u5947\u8c56\u96e8\u59bb\u975e\u53d4\u5353\u679c\u9580~\u59d4\u96b9\u5351\u820d\u91d1\u80b4\u98df\u91c7\u5468\u4eac\u4eab\u708e~\u58f4\u751a\u9769~~\u662f\u5192\u79ba\u66f7\u54bc\u54c1\u8011\u9999\u79cb\u76fe\u4fde\u98a8\u6241\u97f3\u914b\u9996\u5179\u8ecd\u97cb~\u5193\u99ac\u9b32~\u6649\u9adf\u9b25~\u9aa8\u8c48\u70cf\u9b3c\u822c\u595a\u82bb\u9ad8\u9f4a\u517c~~\u51a5\u57f6\u6556\u57f7~\u5807~\u5c08\u5340\u7968\u621a\u9ea5\u83ab\u9e75\u5a41\u5f9e\u9b5a\u9ebb\u9e7f\u7ae0\u655d\u5c09\u5c07\u5de2\u559c\u58f9\u53a4\u53a5\u9ef9\u55ae\u9ed1\u756a~~~\u66fe\u77de\u9109\u9f13~\u656c~\u9f20\u50c9\u6703\u4eb6\u96cd\u8f9f\u8207\u53ad\u723e~\u9f3b\u8ce3\u9f52\u757e~\u9f8d\u9fa0\u96da\u8c50~"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompTrad:[C

    .line 329
    const-string/jumbo v0, "\u65e5\u6708\u91d1\u6728\u6c34\u706b\u571f\u7af9\u6208\u5341\u5927\u4e2d\u4e00\u5f13\u4eba\u5fc3\u624b\u53e3\u5c38\u5eff\u5c71\u5973\u7530\u96e3\u535c\u91cd"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    .line 334
    const-string/jumbo v0, "\u00af\u02ca\u02c7\u02cb\u02d9"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTones:[C

    .line 1719
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseBuffer:[C

    .line 1720
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellBuffer:[C

    .line 1721
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseLength:[I

    .line 1722
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellLength:[I

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V
    .registers 6
    .param p1, "sessionDataCollector"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x1

    const/16 v1, 0x70

    .line 343
    invoke-direct {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    .line 262
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    .line 264
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    .line 266
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellBuffer:[C

    .line 267
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellInt:[I

    .line 270
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mDelimiterCounts:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseWordInline:Ljava/lang/StringBuilder;

    .line 282
    new-array v0, v3, [Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    .line 344
    return-void
.end method

.method private static native addExplicitKey(JII)Z
.end method

.method private static native addToneForZhuyin(JI)Z
.end method

.method private static native backupWordSymbolInfo(J)V
.end method

.method private static native breakContext(J)Z
.end method

.method private cangjieToInternal(I)I
    .registers 4
    .param p1, "c"    # I

    .prologue
    .line 1354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 1355
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_f

    .line 1356
    add-int/lit8 p1, v0, 0x41

    .line 1360
    .end local p1    # "c":I
    :cond_e
    return p1

    .line 1354
    .restart local p1    # "c":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static native clearAllKeys(J)Z
.end method

.method private static native clearCommonChar(J)I
.end method

.method private static native clearKey(J)Z
.end method

.method private static native clearKeyByIndex(JII)Z
.end method

.method private componentToExternal(C)C
    .registers 7
    .param p1, "c"    # C

    .prologue
    const v4, 0xef88

    const v3, 0xeeb8

    .line 1372
    if-gt v3, p1, :cond_34

    const v0, 0xef7f

    if-gt p1, v0, :cond_34

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "componentToExternal...convert Simplified Chinese Stroke: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1374
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompSimp:[C

    sub-int v2, p1, v3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1375
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompSimp:[C

    sub-int v1, p1, v3

    aget-char v0, v0, v1

    .line 1381
    :goto_33
    return v0

    .line 1376
    :cond_34
    if-gt v4, p1, :cond_62

    const v0, 0xf120

    if-gt p1, v0, :cond_62

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "componentToExternal...convert Traditional Chinese Stroke: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1378
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompTrad:[C

    sub-int v2, p1, v4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1379
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompTrad:[C

    sub-int v1, p1, v4

    aget-char v0, v0, v1

    goto :goto_33

    .line 1381
    :cond_62
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native cycleTone(J)Z
.end method

.method private static native deleteOneKeyAndRefresh(J)Z
.end method

.method private static native destroy_context(J)V
.end method

.method private static native dlmAdd(J[C[C)Z
.end method

.method private static native dlmCount(J)I
.end method

.method private static native dlmDelete(J[C)Z
.end method

.method private static native dlmExport(JLjava/lang/String;)I
.end method

.method private static native dlmGetNext(JI[C[II[C[II)Z
.end method

.method private static native dlmReset(J)V
.end method

.method private static native finish(J)V
.end method

.method private static native getActivePrefixIndex(J)I
.end method

.method private static native getActiveSuffixIndex(J)I
.end method

.method private static native getCharSpell(JIII[C)I
.end method

.method private static native getExactWord(J[C)I
.end method

.method private static native getInputMode(J)I
.end method

.method private static native getKeyCount(J)I
.end method

.method private getPrefix(ILjava/lang/StringBuilder;)Z
    .registers 11
    .param p1, "index"    # I
    .param p2, "prefix"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 1217
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1219
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefix(JI[C[II)Z

    move-result v6

    .line 1222
    .local v6, "success":Z
    if-eqz v6, :cond_29

    .line 1223
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    invoke-virtual {p2, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1224
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 1226
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 1230
    :cond_29
    return v6
.end method

.method private static native getPrefix(JI[C[II)Z
.end method

.method private static native getPrefixCount(J)I
.end method

.method private getPrefixesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x100

    if-ge v0, v3, :cond_37

    .line 954
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 956
    .local v2, "prefixPoolSize":I
    if-lez v2, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    .line 957
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 959
    .local v1, "prefix":Ljava/lang/StringBuilder;
    :goto_1c
    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefix(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 960
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 957
    .end local v1    # "prefix":Ljava/lang/StringBuilder;
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x70

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1c

    .line 962
    .restart local v1    # "prefix":Ljava/lang/StringBuilder;
    :cond_32
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    .end local v1    # "prefix":Ljava/lang/StringBuilder;
    .end local v2    # "prefixPoolSize":I
    :cond_37
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    return-object v3
.end method

.method private static native getSelection(J[C[II)Z
.end method

.method private static native getSpell(JI[C[II)Z
.end method

.method private getSpellInternal(ILjava/lang/StringBuilder;)Z
    .registers 13
    .param p1, "index"    # I
    .param p2, "spell"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x0

    .line 1111
    if-lez p1, :cond_5

    move v8, v9

    .line 1149
    :cond_4
    :goto_4
    return v8

    .line 1117
    :cond_5
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1118
    iput v9, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mDelimiterCounts:I

    .line 1120
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpell(JI[C[II)Z

    move-result v8

    .line 1123
    .local v8, "success":Z
    if-eqz v8, :cond_4

    .line 1124
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v9

    if-ge v6, v0, :cond_57

    .line 1125
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_38

    .line 1126
    iget v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mDelimiterCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mDelimiterCounts:I

    .line 1127
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    const/16 v1, 0x20

    aput-char v1, v0, v6

    .line 1124
    :cond_35
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1128
    :cond_38
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0xb1

    if-lt v0, v1, :cond_35

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0xb5

    if-gt v0, v1, :cond_35

    .line 1130
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTones:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v2, v2, v6

    add-int/lit16 v2, v2, -0xb1

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    goto :goto_35

    .line 1134
    :cond_57
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v9

    invoke-virtual {p2, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1136
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v7

    .line 1137
    .local v7, "mode":I
    const/4 v0, 0x1

    if-ne v0, v7, :cond_6d

    .line 1138
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 1139
    :cond_6d
    const/4 v0, 0x2

    if-ne v0, v7, :cond_74

    .line 1140
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeStroke(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 1141
    :cond_74
    const/4 v0, 0x4

    if-eq v0, v7, :cond_7a

    const/4 v0, 0x5

    if-ne v0, v7, :cond_7e

    .line 1143
    :cond_7a
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeCangjie(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 1144
    :cond_7e
    if-nez v7, :cond_4

    .line 1145
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizePinyin(Ljava/lang/StringBuilder;)V

    goto :goto_4
.end method

.method private getSuffix(ILjava/lang/StringBuilder;)Z
    .registers 11
    .param p1, "index"    # I
    .param p2, "suffix"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 1248
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1250
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffix(JI[C[II)Z

    move-result v6

    .line 1253
    .local v6, "success":Z
    if-eqz v6, :cond_29

    .line 1254
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    invoke-virtual {p2, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1255
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 1257
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 1261
    :cond_29
    return v6
.end method

.method private static native getSuffix(JI[C[II)Z
.end method

.method private static native getSuffixCount(J)I
.end method

.method private getSuffixesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x100

    if-ge v0, v3, :cond_33

    .line 978
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 980
    .local v2, "suffixPoolSize":I
    if-lez v2, :cond_26

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    .line 981
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    move-object v1, v3

    .line 983
    .local v1, "suffix":Ljava/lang/StringBuilder;
    :goto_18
    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffix(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 984
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 981
    .end local v1    # "suffix":Ljava/lang/StringBuilder;
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x70

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_18

    .line 986
    .restart local v1    # "suffix":Ljava/lang/StringBuilder;
    :cond_2e
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    .end local v1    # "suffix":Ljava/lang/StringBuilder;
    .end local v2    # "suffixPoolSize":I
    :cond_33
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    return-object v3
.end method

.method private static native getTailDoublePinyinUnicode(J[I)Z
.end method

.method private static native getWord(JI[C[II[C[I[I)Z
.end method

.method private static native hasActiveInput(J)Z
.end method

.method private static native hasBilingualPrefix(J)Z
.end method

.method private static native initialize(J)I
.end method

.method private static native isFullSentenceActive(J)Z
.end method

.method private static native isHasTraceInfo(J)Z
.end method

.method private static native multiTapBuildWordCandidateList(J)Z
.end method

.method private normalizeBPMF(Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1479
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1480
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_36

    .line 1481
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1482
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tolowerBPMF(C)C

    move-result v1

    .line 1483
    .local v1, "cLower":C
    if-eq v0, v1, :cond_33

    .line 1484
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1485
    if-lez v2, :cond_33

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_33

    add-int/lit8 v4, v2, -0x1

    .line 1486
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_33

    .line 1487
    const/16 v4, 0x5f

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1488
    add-int/lit8 v2, v2, 0x1

    .line 1489
    add-int/lit8 v3, v3, 0x1

    .line 1480
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1493
    .end local v0    # "c":C
    .end local v1    # "cLower":C
    :cond_36
    return-void
.end method

.method private normalizeCangjie(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1404
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1405
    .local v0, "c":C
    const/16 v2, 0x41

    if-gt v2, v0, :cond_1c

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1c

    .line 1406
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    add-int/lit8 v3, v0, -0x41

    aget-char v2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1403
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1409
    .end local v0    # "c":C
    :cond_1f
    return-void
.end method

.method private normalizeComponents(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1391
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->componentToExternal(C)C

    move-result v0

    .line 1392
    .local v0, "comp":C
    if-eqz v0, :cond_14

    .line 1393
    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1394
    const v1, 0x9fff

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1396
    :cond_14
    return-void
.end method

.method private normalizePinyin(Ljava/lang/StringBuilder;)V
    .registers 13
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/16 v8, 0x27

    const/16 v7, 0x5a

    const/16 v6, 0x41

    .line 1412
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_11

    .line 1458
    :goto_10
    return-void

    .line 1416
    :cond_11
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_bd

    .line 1418
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1419
    .local v3, "previousChar":C
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1420
    .local v2, "nextChar":C
    if-gt v6, v3, :cond_43

    if-gt v3, v7, :cond_43

    if-gt v6, v2, :cond_32

    if-le v2, v7, :cond_36

    :cond_32
    const/16 v4, 0x20

    if-ne v2, v4, :cond_43

    .line 1423
    :cond_36
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1424
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1426
    :cond_43
    if-gt v6, v3, :cond_56

    if-gt v3, v7, :cond_56

    if-gt v9, v2, :cond_56

    if-gt v2, v10, :cond_56

    .line 1427
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1417
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1428
    :cond_56
    if-gt v9, v3, :cond_6d

    if-gt v3, v10, :cond_6d

    if-gt v6, v2, :cond_5e

    if-le v2, v7, :cond_62

    :cond_5e
    const/16 v4, 0x20

    if-ne v2, v4, :cond_6d

    .line 1431
    :cond_62
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1432
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 1433
    :cond_6d
    if-gt v9, v3, :cond_79

    if-gt v3, v10, :cond_79

    if-ne v2, v8, :cond_79

    .line 1434
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 1435
    :cond_79
    if-gt v6, v3, :cond_88

    if-gt v3, v7, :cond_88

    if-ne v2, v8, :cond_88

    .line 1436
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 1437
    :cond_88
    if-gt v6, v2, :cond_8c

    if-le v2, v7, :cond_90

    :cond_8c
    const/16 v4, 0x20

    if-ne v2, v4, :cond_98

    :cond_90
    if-ne v3, v8, :cond_98

    .line 1439
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 1440
    :cond_98
    if-gt v9, v3, :cond_a6

    if-gt v3, v10, :cond_a6

    if-gt v9, v2, :cond_a6

    if-gt v2, v10, :cond_a6

    .line 1442
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 1443
    :cond_a6
    const/16 v4, 0x30

    if-gt v4, v3, :cond_53

    const/16 v4, 0x39

    if-gt v3, v4, :cond_53

    .line 1444
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1445
    const/16 v4, 0x20

    if-ne v2, v4, :cond_53

    .line 1446
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 1450
    .end local v2    # "nextChar":C
    .end local v3    # "previousChar":C
    :cond_bd
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1451
    .local v1, "lastChar":C
    if-gt v6, v1, :cond_de

    if-gt v1, v7, :cond_de

    .line 1452
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1456
    :goto_d3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1457
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 1454
    :cond_de
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d3
.end method

.method private normalizeStroke(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1499
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1500
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_1c

    .line 1501
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1502
    .local v0, "c":C
    if-lez v0, :cond_19

    const/4 v3, 0x6

    if-gt v0, v3, :cond_19

    .line 1503
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mStrokes:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1500
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1506
    .end local v0    # "c":C
    :cond_1c
    return-void
.end method

.method private static native persistUserDatabase(J)V
.end method

.method private static native predictionCloudCommitPhrase(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method private static native predictionCloudGetInputData(J[B[S)I
.end method

.method private static native predictionCloudGetSettings(J[I)I
.end method

.method private static native processKeyBySymbol(JI)Z
.end method

.method private recyclePrefixPool()V
    .registers 6

    .prologue
    .line 1066
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1067
    .local v2, "prefixPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1069
    .local v1, "prefixListSize":I
    :goto_c
    const/16 v3, 0x100

    if-ge v2, v3, :cond_28

    if-lez v1, :cond_28

    .line 1070
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1071
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_25

    .line 1072
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v2, v2, 0x1

    .line 1075
    :cond_25
    add-int/lit8 v1, v1, -0x1

    .line 1076
    goto :goto_c

    .line 1077
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_28
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1078
    return-void
.end method

.method private recycleSuffixPool()V
    .registers 6

    .prologue
    .line 1084
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1085
    .local v2, "suffixPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1087
    .local v1, "suffixListSize":I
    :goto_c
    const/16 v3, 0x100

    if-ge v2, v3, :cond_28

    if-lez v1, :cond_28

    .line 1088
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1089
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_25

    .line 1090
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    add-int/lit8 v2, v2, 0x1

    .line 1093
    :cond_25
    add-int/lit8 v1, v1, -0x1

    .line 1094
    goto :goto_c

    .line 1095
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_28
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1096
    return-void
.end method

.method private static native resetUserDictionary(J)Z
.end method

.method private static native restoreWordSymbolInfo(J)V
.end method

.method private static native selectWord(JI[C[II)Z
.end method

.method private static native setActivePrefixIndex(JI)Z
.end method

.method private static native setAttribute(JII)Z
.end method

.method private static native setBilingual(JZ)Z
.end method

.method private static native setCategoryDb(JIII)I
.end method

.method private static native setContext(J[CI)Z
.end method

.method private static native setFullSentence(J)I
.end method

.method private static native setInputMode(JI)Z
.end method

.method private static native setMSDB(JIZ)I
.end method

.method private static native setMultiTapHasInvalidKey(JZ)V
.end method

.method private static native setShiftState(JI)V
.end method

.method private static native start(J)Z
.end method

.method private tolowerBPMF(C)C
    .registers 5
    .param p1, "c"    # C

    .prologue
    const v2, 0xf205

    .line 1467
    move v0, p1

    .line 1468
    .local v0, "cRet":C
    if-lt p1, v2, :cond_10

    const v1, 0xf22a

    if-gt p1, v1, :cond_10

    .line 1469
    sub-int v1, p1, v2

    add-int/lit16 v1, v1, 0x3105

    int-to-char v0, v1

    .line 1470
    :cond_10
    return v0
.end method

.method private static native tryBuildingWordCandidateList(JZ)Z
.end method


# virtual methods
.method public addAllContextWord()V
    .registers 4

    .prologue
    .line 1529
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1530
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/16 v2, 0x100

    if-ge v0, v2, :cond_24

    .line 1532
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1533
    .local v1, "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1534
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1531
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1537
    .end local v1    # "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_24
    return-void
.end method

.method public addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 6
    .param p1, "key"    # I
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(JII)Z

    move-result v0

    return v0
.end method

.method public addExplicitSymbol(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 7
    .param p1, "symbol"    # I
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 488
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v1

    .line 490
    .local v1, "mode":I
    const/4 v2, 0x3

    if-eq v2, v1, :cond_e

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    if-ne v2, v1, :cond_13

    .line 493
    :cond_e
    move v0, p1

    .line 497
    .local v0, "convertSymbol":I
    :goto_f
    invoke-virtual {p0, v0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 498
    return-void

    .line 495
    .end local v0    # "convertSymbol":I
    :cond_13
    invoke-direct {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cangjieToInternal(I)I

    move-result v0

    .restart local v0    # "convertSymbol":I
    goto :goto_f
.end method

.method public addToneForZhuyin(I)Z
    .registers 4
    .param p1, "tone"    # I

    .prologue
    .line 575
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(JI)Z

    move-result v0

    return v0
.end method

.method public backupWordSymbolInfo()V
    .registers 3

    .prologue
    .line 515
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->backupWordSymbolInfo(J)V

    .line 516
    return-void
.end method

.method public breakContext()Z
    .registers 3

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext(J)Z

    move-result v0

    return v0
.end method

.method public chineseDelimiter()C
    .registers 2

    .prologue
    .line 1598
    const/16 v0, 0x27

    return v0
.end method

.method public clearAllKeys()Z
    .registers 3

    .prologue
    .line 543
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys(J)Z

    move-result v0

    return v0
.end method

.method public clearCommonChar()I
    .registers 3

    .prologue
    .line 1306
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar(J)I

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .registers 3

    .prologue
    .line 548
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKey(J)Z

    move-result v0

    return v0
.end method

.method public clearKeyByIndex(II)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 553
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKeyByIndex(JII)Z

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .registers 4
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public cycleTone()Z
    .registers 3

    .prologue
    .line 567
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cycleTone(J)Z

    move-result v0

    return v0
.end method

.method public deleteOneKeyAndRefresh()Z
    .registers 3

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->deleteOneKeyAndRefresh(J)Z

    move-result v0

    return v0
.end method

.method protected destroy_native_context(J)V
    .registers 4
    .param p1, "inputContext"    # J

    .prologue
    .line 358
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->destroy_context(J)V

    .line 359
    return-void
.end method

.method public dlmAdd(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "phrase"    # Ljava/lang/String;
    .param p2, "spell"    # Ljava/lang/String;

    .prologue
    .line 1745
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmAdd(J[C[C)Z

    move-result v0

    return v0
.end method

.method public dlmCount()I
    .registers 3

    .prologue
    .line 1785
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmCount(J)I

    move-result v0

    return v0
.end method

.method public dlmDelete(Ljava/lang/String;)Z
    .registers 5
    .param p1, "phrase"    # Ljava/lang/String;

    .prologue
    .line 1754
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(J[C)Z

    move-result v0

    return v0
.end method

.method public dlmExport(Ljava/lang/String;)J
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1797
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmExport(JLjava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public dlmGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .registers 14
    .param p1, "index"    # I
    .param p2, "phrase"    # Ljava/lang/StringBuilder;
    .param p3, "spell"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x70

    const/4 v9, 0x0

    .line 1765
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1766
    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1768
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseBuffer:[C

    sget-object v4, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseLength:[I

    sget-object v6, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellBuffer:[C

    sget-object v7, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellLength:[I

    move v2, p1

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmGetNext(JI[C[II[C[II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1772
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseBuffer:[C

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseLength:[I

    aget v1, v1, v9

    invoke-virtual {p2, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1773
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellBuffer:[C

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellLength:[I

    aget v1, v1, v9

    invoke-virtual {p3, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1774
    const/4 v0, 0x1

    .line 1777
    :goto_2e
    return v0

    :cond_2f
    move v0, v9

    goto :goto_2e
.end method

.method public dlmReset()V
    .registers 3

    .prologue
    .line 1793
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmReset(J)V

    .line 1794
    return-void
.end method

.method protected exportDlmAsEvents()Z
    .registers 2

    .prologue
    .line 1735
    const/4 v0, 0x0

    return v0
.end method

.method public finishSession()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finish(J)V

    .line 385
    return-void
.end method

.method public getActivePrefixIndex()I
    .registers 3

    .prologue
    .line 1272
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex(J)I

    move-result v0

    return v0
.end method

.method public getActiveSuffixIndex()I
    .registers 3

    .prologue
    .line 1283
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActiveSuffixIndex(J)I

    move-result v0

    return v0
.end method

.method public getBPMFTones()[C
    .registers 2

    .prologue
    .line 1660
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTones:[C

    return-object v0
.end method

.method public getCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .registers 3

    .prologue
    .line 1553
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCharSpell(IIILjava/lang/StringBuffer;)I
    .registers 12
    .param p1, "baseChar"    # I
    .param p2, "altNum"    # I
    .param p3, "bGetTone"    # I
    .param p4, "spell"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1336
    const/16 v0, 0x14

    new-array v5, v0, [C

    .line 1337
    .local v5, "spellArray":[C
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCharSpell(JIII[C)I

    move-result v6

    .line 1339
    .local v6, "status":I
    if-nez v6, :cond_12

    .line 1340
    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1342
    :cond_12
    return v6
.end method

.method public getChineseWordsInline()Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseWordInline:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getDelimiterSize()I
    .registers 2

    .prologue
    .line 1606
    iget v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mDelimiterCounts:I

    return v0
.end method

.method public getExactInputText(Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "spell"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1676
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    .line 1677
    if-eqz v0, :cond_a

    .line 1694
    :goto_9
    return v2

    .line 1681
    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1683
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpell(JI[C[II)Z

    move-result v7

    .line 1686
    .local v7, "success":Z
    if-eqz v7, :cond_35

    .line 1687
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v2

    if-ge v6, v0, :cond_35

    .line 1688
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_32

    .line 1689
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1687
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .end local v6    # "i":I
    :cond_35
    move v2, v7

    .line 1694
    goto :goto_9
.end method

.method public getExactTypeAsInline(Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "inlineWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x0

    .line 637
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 638
    const/16 v4, 0x70

    new-array v3, v4, [C

    .line 640
    .local v3, "wordArray":[C
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(J[C)I

    move-result v4

    if-nez v4, :cond_3e

    .line 641
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "exactWord":Ljava/lang/String;
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v2

    .line 644
    .local v2, "mode":I
    const/4 v4, 0x4

    if-eq v4, v2, :cond_25

    const/4 v4, 0x5

    if-ne v4, v2, :cond_3f

    .line 645
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "cangjieInline":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeCangjie(Ljava/lang/StringBuilder;)V

    .line 647
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 652
    .end local v0    # "cangjieInline":Ljava/lang/StringBuilder;
    :goto_34
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseWordInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 653
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseWordInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 655
    .end local v1    # "exactWord":Ljava/lang/String;
    .end local v2    # "mode":I
    :cond_3e
    return-void

    .line 649
    .restart local v1    # "exactWord":Ljava/lang/String;
    .restart local v2    # "mode":I
    :cond_3f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34
.end method

.method public getExactWord(Ljava/lang/StringBuffer;)I
    .registers 8
    .param p1, "exactWord"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1574
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    .line 1575
    .local v0, "mode":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1576
    if-eqz v0, :cond_11

    const/4 v4, 0x1

    if-eq v4, v0, :cond_11

    .line 1577
    const/4 v1, -0x1

    .line 1588
    :cond_10
    :goto_10
    return v1

    .line 1581
    :cond_11
    const/16 v4, 0x70

    new-array v3, v4, [C

    .line 1582
    .local v3, "wordArray":[C
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(J[C)I

    move-result v1

    .line 1584
    .local v1, "status":I
    if-nez v1, :cond_10

    .line 1585
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 1586
    .local v2, "word":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10
.end method

.method public getInlineSelection(Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "inlineSelection"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 677
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 679
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSelection(J[C[II)Z

    move-result v1

    .line 682
    .local v1, "success":Z
    if-eqz v1, :cond_24

    .line 683
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v2, v2, v7

    if-ge v0, v2, :cond_24

    .line 684
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 688
    .end local v0    # "i":I
    :cond_24
    return v1
.end method

.method public getInlineString(Landroid/text/SpannableStringBuilder;)Z
    .registers 11
    .param p1, "inlineString"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v8, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 611
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v7, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v7, v7

    invoke-static {v4, v5, v3, v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSelection(J[C[II)Z

    move-result v2

    .line 614
    .local v2, "success":Z
    if-eqz v2, :cond_51

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v3, v3, v8

    if-ge v1, v3, :cond_24

    .line 616
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 618
    :cond_24
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseWordInline:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 619
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseWordInline:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpellInternal(ILjava/lang/StringBuilder;)Z

    .line 624
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_51

    .line 625
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->componentToExternal(C)C

    move-result v0

    .line 626
    .local v0, "comp":C
    if-eqz v0, :cond_4c

    .line 627
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 629
    :cond_4c
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 633
    .end local v0    # "comp":C
    .end local v1    # "i":I
    :cond_51
    return v2
.end method

.method public getInputCoreCategory()I
    .registers 2

    .prologue
    .line 1543
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyCount()I
    .registers 3

    .prologue
    .line 585
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount(J)I

    move-result v0

    return v0
.end method

.method public getMoreWords(ZI)Ljava/util/List;
    .registers 9
    .param p1, "isExactKeyboardInputShowable"    # Z
    .param p2, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p2

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1042
    .local v0, "getMax":I
    if-eqz p1, :cond_1c

    .line 1043
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p2

    const/16 v5, 0x101

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1046
    :cond_1c
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2c

    .line 1047
    const/4 v4, 0x0

    .line 1059
    :goto_2b
    return-object v4

    .line 1049
    :cond_2c
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_4e

    .line 1050
    move v3, v1

    .line 1051
    .local v3, "wordIndex":I
    if-eqz p1, :cond_39

    .line 1052
    add-int/lit8 v3, v1, -0x1

    .line 1054
    :cond_39
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1055
    .local v2, "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-virtual {p0, v3, v4, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1056
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1049
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1059
    .end local v2    # "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v3    # "wordIndex":I
    :cond_4e
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    goto :goto_2b
.end method

.method public getPopupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1513
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addAllContextWord()V

    .line 1514
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    return-object v0
.end method

.method public getPopupWordSourceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .registers 3
    .param p1, "defaultPrefixIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 897
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->recyclePrefixPool()V

    .line 899
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixesInternal()Ljava/util/List;

    .line 901
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefixesCount()I
    .registers 3

    .prologue
    .line 931
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixCount(J)I

    move-result v0

    return v0
.end method

.method public getSuffixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .registers 3
    .param p1, "defaultSuffixIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActiveSuffixIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 917
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->recycleSuffixPool()V

    .line 919
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffixesInternal()Ljava/util/List;

    .line 921
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    return-object v0
.end method

.method public getSuffixesCount()I
    .registers 3

    .prologue
    .line 942
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffixCount(J)I

    move-result v0

    return v0
.end method

.method public getTailDoublePinyinUnicode(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .registers 7
    .param p1, "unicode"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v4, 0x0

    .line 1164
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1165
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    invoke-static {v2, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getTailDoublePinyinUnicode(J[I)Z

    move-result v0

    .line 1168
    .local v0, "ret":Z
    if-eqz v0, :cond_15

    .line 1169
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1172
    :cond_15
    return v0
.end method

.method public getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .registers 15
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/StringBuilder;
    .param p3, "wordSource"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v10, 0x0

    .line 849
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 850
    invoke-virtual {p3, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 852
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellBuffer:[C

    iget-object v7, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellInt:[I

    iget-object v8, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(JI[C[II[C[I[I)Z

    move-result v9

    .line 856
    .local v9, "success":Z
    if-eqz v9, :cond_3a

    .line 857
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isChineseTraditional()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 858
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v10

    .line 859
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isChineseTraditional()Z

    move-result v2

    .line 858
    invoke-static {p2, v0, v10, v1, v2}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CIIZ)Ljava/lang/StringBuilder;

    .line 864
    :goto_30
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 865
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    aget v0, v0, v10

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 868
    :cond_3a
    return v9

    .line 861
    :cond_3b
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v10

    invoke-virtual {p2, v0, v10, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_30
.end method

.method public getWord(ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .registers 16
    .param p1, "wordIndex"    # I
    .param p3, "wdSource"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v11, 0x0

    .line 809
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellBuffer:[C

    iget-object v7, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellInt:[I

    iget-object v8, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(JI[C[II[C[I[I)Z

    move-result v10

    .line 812
    .local v10, "success":Z
    if-eqz v10, :cond_6e

    if-ltz p1, :cond_6e

    const/16 v0, 0x100

    if-ge p1, v0, :cond_6e

    .line 813
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 814
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isChineseTraditional()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 815
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v2, v2, v11

    .line 816
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isChineseTraditional()Z

    move-result v3

    .line 815
    invoke-static {v0, v1, v11, v2, v3}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CIIZ)Ljava/lang/StringBuilder;

    .line 820
    :goto_3b
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v11

    if-lez v0, :cond_67

    .line 821
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v11

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->componentToExternal(C)C

    move-result v9

    .line 822
    .local v9, "comp":C
    if-eqz v9, :cond_5c

    .line 824
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0, v11, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 825
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    const v1, 0x9fff

    invoke-virtual {v0, v11, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 828
    :cond_5c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v1, v1, p1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 831
    .end local v9    # "comp":C
    :cond_67
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    aget v0, v0, v11

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 834
    :cond_6e
    return v10

    .line 818
    :cond_6f
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v2, v2, v11

    invoke-virtual {v0, v1, v11, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3b
.end method

.method public getWordSpell(ILjava/lang/StringBuilder;)Z
    .registers 14
    .param p1, "index"    # I
    .param p2, "wordSpell"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x0

    .line 874
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 876
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellBuffer:[C

    iget-object v7, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellInt:[I

    iget-object v8, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(JI[C[II[C[I[I)Z

    move-result v9

    .line 880
    .local v9, "success":Z
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchSpellInt:[I

    aget v1, v1, v10

    invoke-virtual {p2, v10, v0, v10, v1}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    .line 881
    return v9
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;
    .registers 6
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # [I
    .param p3, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "[II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1008
    aput v1, p2, v1

    .line 1010
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1011
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1013
    invoke-virtual {p0, v1, p3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getMoreWords(ZI)Ljava/util/List;

    .line 1015
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 1017
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public getWordsSource()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    return-object v0
.end method

.method public hasActiveInput()Z
    .registers 3

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput(J)Z

    move-result v0

    return v0
.end method

.method public hasBilingualPrefix()Z
    .registers 3

    .prologue
    .line 1622
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix(J)Z

    move-result v0

    return v0
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 4
    .param p1, "inputContext"    # J

    .prologue
    .line 353
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->initialize(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public isChineseTraditional()Z
    .registers 3

    .prologue
    .line 1664
    iget v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mLanguageID:I

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mLanguageID:I

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFullSentenceActive()Z
    .registers 3

    .prologue
    .line 1323
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive(J)Z

    move-result v0

    return v0
.end method

.method public isHasSegmentDelimiter()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1183
    const/4 v6, 0x0

    .line 1185
    .local v6, "hasDelimiter":Z
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpell(JI[C[II)Z

    move-result v0

    .line 1187
    if-eqz v0, :cond_24

    .line 1188
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v2

    if-ge v7, v0, :cond_24

    .line 1189
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v7

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_21

    .line 1190
    const/4 v6, 0x1

    .line 1188
    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 1195
    .end local v7    # "i":I
    :cond_24
    return v6
.end method

.method public isHasTraceInfo()Z
    .registers 3

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasTraceInfo(J)Z

    move-result v0

    return v0
.end method

.method public isLanguageHaveEmojiPrediction()Z
    .registers 2

    .prologue
    .line 1802
    const/4 v0, 0x1

    return v0
.end method

.method public multiTapBuildWordCandidateList()Z
    .registers 3

    .prologue
    .line 1711
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->multiTapBuildWordCandidateList(J)Z

    move-result v0

    return v0
.end method

.method protected onDlmEvent([BIZ)V
    .registers 4
    .param p1, "event"    # [B
    .param p2, "len"    # I
    .param p3, "highPriority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1727
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 1728
    return-void
.end method

.method public persistUserDatabase()V
    .registers 3

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->persistUserDatabase(J)V

    .line 393
    return-void
.end method

.method public predictionCloudCommitPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
    .registers 11
    .param p1, "phrase"    # Ljava/lang/String;
    .param p2, "spell"    # Ljava/lang/String;
    .param p3, "fullspell"    # Ljava/lang/String;
    .param p4, "attributes"    # [I

    .prologue
    .line 1656
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudCommitPhrase(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method public predictionCloudGetCharacterset()I
    .registers 5

    .prologue
    .line 1626
    const/16 v1, 0x8

    new-array v0, v1, [I

    .line 1627
    .local v0, "settings":[I
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v2, v3, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetSettings(J[I)I

    move-result v1

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9Status;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 1628
    const/4 v1, 0x3

    aget v1, v0, v1

    .line 1631
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public predictionCloudGetData()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1636
    const/4 v3, 0x1

    new-array v0, v3, [S

    .line 1641
    .local v0, "actualBufferLength":[S
    :cond_4
    aget-short v3, v0, v6

    add-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    aput-short v3, v0, v6

    .line 1642
    aget-short v3, v0, v6

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 1644
    .local v1, "dataBuffer":[B
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5, v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetInputData(J[B[S)I

    move-result v2

    .line 1646
    .local v2, "status":I
    const/16 v3, 0x1e

    if-eq v2, v3, :cond_4

    .line 1648
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9Status;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 1649
    aget-short v3, v0, v6

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 1652
    :goto_29
    return-object v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .registers 10
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "key"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p4, "eventTime"    # J

    .prologue
    .line 477
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    .line 478
    .local v0, "mode":I
    const/4 v1, 0x3

    if-eq v1, v0, :cond_e

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    if-ne v1, v0, :cond_15

    :cond_e
    if-eqz p1, :cond_15

    .line 481
    invoke-super {p0, p1, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processTap(Landroid/graphics/Point;Lcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v1

    .line 483
    :goto_14
    return v1

    :cond_15
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cangjieToInternal(I)I

    move-result v1

    invoke-super {p0, v1, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v1

    goto :goto_14
.end method

.method public processUpperLetterPress(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKeyBySymbol(JI)Z

    move-result v0

    return v0
.end method

.method public resetUserDictionary()Z
    .registers 3

    .prologue
    .line 793
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->resetUserDictionary(J)Z

    move-result v0

    return v0
.end method

.method public restoreWordSymbolInfo()V
    .registers 3

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->restoreWordSymbolInfo(J)V

    .line 525
    return-void
.end method

.method public selectWord(ILjava/lang/StringBuilder;)Z
    .registers 11
    .param p1, "index"    # I
    .param p2, "insertText"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 711
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 713
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(JI[C[II)Z

    move-result v6

    .line 716
    .local v6, "success":Z
    if-eqz v6, :cond_27

    .line 717
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isChineseTraditional()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 718
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    .line 719
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isChineseTraditional()Z

    move-result v2

    .line 718
    invoke-static {p2, v0, v7, v1, v2}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CIIZ)Ljava/lang/StringBuilder;

    .line 725
    :cond_27
    :goto_27
    return v6

    .line 721
    :cond_28
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    invoke-virtual {p2, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_27
.end method

.method public setActivePrefixIndex(I)Z
    .registers 4
    .param p1, "prefixIndex"    # I

    .prologue
    .line 1296
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(JI)Z

    move-result v0

    return v0
.end method

.method public setAttribute(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(JII)Z

    .line 416
    return-void
.end method

.method public setAttribute(IZ)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 399
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v2, v3, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(JII)Z

    .line 400
    return-void

    .line 399
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setBilingual(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1614
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setBilingual(JZ)Z

    .line 1615
    return-void
.end method

.method public setCategoryDb(IIZ)I
    .registers 8
    .param p1, "languageId"    # I
    .param p2, "categoryId"    # I
    .param p3, "isEnable"    # Z

    .prologue
    .line 1565
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    if-eqz p3, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v2, v3, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCategoryDb(JIII)I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContext(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "newContext"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 736
    if-nez p1, :cond_4

    .line 745
    :cond_3
    :goto_3
    return v0

    .line 740
    :cond_4
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 744
    :cond_10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    .line 745
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    .line 746
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 745
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(J[CI)Z

    move-result v0

    goto :goto_3
.end method

.method public setContext(Ljava/lang/CharSequence;Z)Z
    .registers 5
    .param p1, "newContext"    # Ljava/lang/CharSequence;
    .param p2, "update"    # Z

    .prologue
    .line 759
    if-nez p1, :cond_4

    .line 760
    const/4 v0, 0x0

    .line 771
    :goto_3
    return v0

    .line 763
    :cond_4
    const/4 v0, 0x0

    .line 765
    .local v0, "result":Z
    if-eqz p2, :cond_c

    .line 766
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3

    .line 768
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    goto :goto_3
.end method

.method public setFullSentence()I
    .registers 3

    .prologue
    .line 1315
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setFullSentence(J)I

    move-result v0

    return v0
.end method

.method public setInputMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(JI)Z

    move-result v0

    return v0
.end method

.method public setMSDB(IZ)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 5
    .param p1, "langId"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMSDB(JIZ)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setMultiTapHasInvalidKey(Z)V
    .registers 4
    .param p1, "hasInvalidKey"    # Z

    .prologue
    .line 1715
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMultiTapHasInvalidKey(JZ)V

    .line 1716
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 5
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(JI)V

    .line 424
    return-void
.end method

.method public startSession()V
    .registers 5

    .prologue
    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 368
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 370
    :cond_18
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->start(J)Z

    .line 371
    return-void
.end method

.method public tryBuildingWordCandidateList(Z)Z
    .registers 4
    .param p1, "clearKeyInvalidInput"    # Z

    .prologue
    .line 1707
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tryBuildingWordCandidateList(JZ)Z

    move-result v0

    return v0
.end method
