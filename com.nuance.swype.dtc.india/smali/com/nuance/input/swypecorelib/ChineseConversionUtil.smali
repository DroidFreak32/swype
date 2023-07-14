.class public Lcom/nuance/input/swypecorelib/ChineseConversionUtil;
.super Ljava/lang/Object;
.source "ChineseConversionUtil.java"


# static fields
.field static final GBKPUAUnicodeMap:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "ChineseConversionUtil"

.field static final hkscsUnicodeMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/nuance/input/swypecorelib/ChineseConversionUtil$1;

    const/16 v1, 0x6d5

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil$1;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->hkscsUnicodeMap:Landroid/util/SparseIntArray;

    .line 1829
    new-instance v0, Lcom/nuance/input/swypecorelib/ChineseConversionUtil$2;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil$2;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->GBKPUAUnicodeMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static appendWithTransform(Ljava/lang/StringBuilder;[CIIZ)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "in"    # Ljava/lang/StringBuilder;
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isTraditionalChinese"    # Z

    .prologue
    .line 21
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chars[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    aget-char v0, p1, v1

    .line 24
    .local v0, "c":C
    if-eqz p4, :cond_0

    .line 25
    const v2, 0xe000

    if-gt v2, v0, :cond_1

    const v2, 0xf8ff

    if-gt v0, v2, :cond_1

    .line 27
    invoke-static {v0, p4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->containsKey(CZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-static {v0, p4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->get(CZ)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "converted to:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {v0, p4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->get(CZ)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    const v2, 0xe815

    if-gt v2, v0, :cond_1

    const v2, 0xe864

    if-gt v0, v2, :cond_1

    .line 37
    invoke-static {v0, p4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->containsKey(CZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {v0, p4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->get(CZ)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "converted to:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v0, p4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->get(CZ)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 47
    .end local v0    # "c":C
    :cond_2
    return-object p0
.end method

.method public static containsKey(CZ)Z
    .locals 1
    .param p0, "c"    # C
    .param p1, "isTraditionalChinese"    # Z

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->containsKey(IZ)Z

    move-result v0

    return v0
.end method

.method public static containsKey(IZ)Z
    .locals 3
    .param p0, "puaCodePoint"    # I
    .param p1, "isTraditionalChinese"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_2

    .line 60
    sget-object v2, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->hkscsUnicodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    sget-object v2, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->GBKPUAUnicodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static get(CZ)Ljava/lang/Integer;
    .locals 1
    .param p0, "c"    # C
    .param p1, "isTraditionalChinese"    # Z

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->get(IZ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static get(IZ)Ljava/lang/Integer;
    .locals 1
    .param p0, "puaCodePoint"    # I
    .param p1, "isTraditionalChinese"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    sget-object v0, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->hkscsUnicodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->GBKPUAUnicodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
