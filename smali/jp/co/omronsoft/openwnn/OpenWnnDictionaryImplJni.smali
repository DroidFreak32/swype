.class public Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;
.super Ljava/lang/Object;
.source "OpenWnnDictionaryImplJni.java"


# static fields
.field public static final APPROX_PATTERN_EN_QWERTY_NEAR:I = 0x2

.field public static final APPROX_PATTERN_EN_QWERTY_NEAR_UPPER:I = 0x3

.field public static final APPROX_PATTERN_EN_TOLOWER:I = 0x1

.field public static final APPROX_PATTERN_EN_TOUPPER:I = 0x0

.field public static final APPROX_PATTERN_JAJP_12KEY_NORMAL:I = 0x4

.field public static final ORDER_BY_FREQUENCY:I = 0x0

.field public static final ORDER_BY_KEY:I = 0x1

.field public static final POS_TYPE_BUNTOU:I = 0x3

.field public static final POS_TYPE_CHIMEI:I = 0x8

.field public static final POS_TYPE_JINMEI:I = 0x7

.field public static final POS_TYPE_KIGOU:I = 0x9

.field public static final POS_TYPE_MEISI:I = 0x6

.field public static final POS_TYPE_SUUJI:I = 0x5

.field public static final POS_TYPE_TANKANJI:I = 0x4

.field public static final POS_TYPE_V1:I = 0x0

.field public static final POS_TYPE_V2:I = 0x1

.field public static final POS_TYPE_V3:I = 0x2

.field public static final SEARCH_EXACT:I = 0x0

.field public static final SEARCH_LINK:I = 0x2

.field public static final SEARCH_PREFIX:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native clearApproxPatterns(J)V
.end method

.method public static final native clearDictionaryParameters(J)I
.end method

.method public static final native clearResult(J)V
.end method

.method public static final native createBindArray(JLjava/lang/String;II)[Ljava/lang/String;
.end method

.method public static final native createQueryStringBase(JIILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native createWnnWork(Ljava/lang/String;)J
.end method

.method public static final native freeWnnWork(J)I
.end method

.method public static final native getApproxPattern(JLjava/lang/String;)[Ljava/lang/String;
.end method

.method public static final native getCandidate(J)Ljava/lang/String;
.end method

.method public static final native getConnectArray(JI)[B
.end method

.method public static final native getFrequency(J)I
.end method

.method public static final native getLeftPartOfSpeech(J)I
.end method

.method public static final native getLeftPartOfSpeechSpecifiedType(JI)I
.end method

.method public static final native getNextWord(JI)I
.end method

.method public static final native getNumberOfLeftPOS(J)I
.end method

.method public static final native getNumberOfRightPOS(J)I
.end method

.method public static final native getRightPartOfSpeech(J)I
.end method

.method public static final native getRightPartOfSpeechSpecifiedType(JI)I
.end method

.method public static final native getStroke(J)Ljava/lang/String;
.end method

.method public static final native searchWord(JIILjava/lang/String;)I
.end method

.method public static final native selectWord(J)I
.end method

.method public static final native setApproxPattern(JI)I
.end method

.method public static final native setApproxPattern(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native setCandidate(JLjava/lang/String;)I
.end method

.method public static final native setDictionaryParameter(JIII)I
.end method

.method public static final native setLeftPartOfSpeech(JI)I
.end method

.method public static final native setRightPartOfSpeech(JI)I
.end method

.method public static final native setStroke(JLjava/lang/String;)I
.end method
