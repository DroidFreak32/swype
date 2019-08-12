.class public Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;
.super Ljava/lang/Object;
.source "HKSCSConvertionUtil.java"


# static fields
.field static final hkscsUnicodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil$1;

    const/16 v1, 0x6ba

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil$1;-><init>(IF)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->hkscsUnicodeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static appendWithTransform(Ljava/lang/StringBuilder;[CII)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "in"    # Ljava/lang/StringBuilder;
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 12
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 13
    const v2, 0xe000

    aget-char v3, p1, v1

    if-gt v2, v3, :cond_0

    aget-char v2, p1, v1

    const v3, 0xf8ff

    if-gt v2, v3, :cond_0

    .line 14
    aget-char v0, p1, v1

    .line 15
    .local v0, "c":C
    invoke-static {v0}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->containsKey(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-static {v0}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->get(C)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 12
    .end local v0    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_1
    return-object p0
.end method

.method public static containsKey(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 26
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public static containsKey(I)Z
    .locals 2
    .param p0, "puaCodePoint"    # I

    .prologue
    .line 34
    sget-object v0, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->hkscsUnicodeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static get(C)Ljava/lang/Integer;
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 30
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static get(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "puaCodePoint"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->hkscsUnicodeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
