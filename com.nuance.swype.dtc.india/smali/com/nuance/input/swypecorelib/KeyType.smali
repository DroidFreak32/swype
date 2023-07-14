.class public final enum Lcom/nuance/input/swypecorelib/KeyType;
.super Ljava/lang/Enum;
.source "KeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum FUNCTION:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum INVALID:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum LETTER:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum NUMBER:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum PUNCTUATION:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum SMARTPUNCT:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum STRING:Lcom/nuance/input/swypecorelib/KeyType;

.field public static final enum UNKNOWN:Lcom/nuance/input/swypecorelib/KeyType;

.field private static final keyTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/input/swypecorelib/KeyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "INVALID"

    invoke-direct {v3, v4, v2, v2}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->INVALID:Lcom/nuance/input/swypecorelib/KeyType;

    .line 9
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "LETTER"

    invoke-direct {v3, v4, v7, v7}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->LETTER:Lcom/nuance/input/swypecorelib/KeyType;

    .line 11
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "PUNCTUATION"

    invoke-direct {v3, v4, v8, v8}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->PUNCTUATION:Lcom/nuance/input/swypecorelib/KeyType;

    .line 13
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "NUMBER"

    invoke-direct {v3, v4, v9, v9}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->NUMBER:Lcom/nuance/input/swypecorelib/KeyType;

    .line 15
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "STRING"

    invoke-direct {v3, v4, v10, v10}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->STRING:Lcom/nuance/input/swypecorelib/KeyType;

    .line 17
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "FUNCTION"

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->FUNCTION:Lcom/nuance/input/swypecorelib/KeyType;

    .line 19
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "SMARTPUNCT"

    const/4 v5, 0x6

    const/4 v6, 0x6

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->SMARTPUNCT:Lcom/nuance/input/swypecorelib/KeyType;

    .line 21
    new-instance v3, Lcom/nuance/input/swypecorelib/KeyType;

    const-string/jumbo v4, "UNKNOWN"

    const/4 v5, 0x7

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->UNKNOWN:Lcom/nuance/input/swypecorelib/KeyType;

    .line 5
    const/16 v3, 0x8

    new-array v3, v3, [Lcom/nuance/input/swypecorelib/KeyType;

    sget-object v4, Lcom/nuance/input/swypecorelib/KeyType;->INVALID:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v4, v3, v2

    sget-object v4, Lcom/nuance/input/swypecorelib/KeyType;->LETTER:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v4, v3, v7

    sget-object v4, Lcom/nuance/input/swypecorelib/KeyType;->PUNCTUATION:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v4, v3, v8

    sget-object v4, Lcom/nuance/input/swypecorelib/KeyType;->NUMBER:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v4, v3, v9

    sget-object v4, Lcom/nuance/input/swypecorelib/KeyType;->STRING:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v4, v3, v10

    const/4 v4, 0x5

    sget-object v5, Lcom/nuance/input/swypecorelib/KeyType;->FUNCTION:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/nuance/input/swypecorelib/KeyType;->SMARTPUNCT:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/nuance/input/swypecorelib/KeyType;->UNKNOWN:Lcom/nuance/input/swypecorelib/KeyType;

    aput-object v5, v3, v4

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->$VALUES:[Lcom/nuance/input/swypecorelib/KeyType;

    .line 27
    invoke-static {}, Lcom/nuance/input/swypecorelib/KeyType;->values()[Lcom/nuance/input/swypecorelib/KeyType;

    move-result-object v1

    .line 28
    .local v1, "values":[Lcom/nuance/input/swypecorelib/KeyType;
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v3, Lcom/nuance/input/swypecorelib/KeyType;->keyTypeMap:Landroid/util/SparseArray;

    .line 29
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 30
    .local v0, "keyType":Lcom/nuance/input/swypecorelib/KeyType;
    sget-object v4, Lcom/nuance/input/swypecorelib/KeyType;->keyTypeMap:Landroid/util/SparseArray;

    iget v5, v0, Lcom/nuance/input/swypecorelib/KeyType;->value:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "keyType":Lcom/nuance/input/swypecorelib/KeyType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/nuance/input/swypecorelib/KeyType;->value:I

    .line 40
    return-void
.end method

.method public static from(I)Lcom/nuance/input/swypecorelib/KeyType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->keyTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/KeyType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/KeyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/nuance/input/swypecorelib/KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/KeyType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/KeyType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->$VALUES:[Lcom/nuance/input/swypecorelib/KeyType;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/KeyType;

    return-object v0
.end method


# virtual methods
.method public final isFunctionKey()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->FUNCTION:Lcom/nuance/input/swypecorelib/KeyType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLetter()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->LETTER:Lcom/nuance/input/swypecorelib/KeyType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNumber()Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->NUMBER:Lcom/nuance/input/swypecorelib/KeyType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPunctuation()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->PUNCTUATION:Lcom/nuance/input/swypecorelib/KeyType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSmartPunctuation()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->SMARTPUNCT:Lcom/nuance/input/swypecorelib/KeyType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isString()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/nuance/input/swypecorelib/KeyType;->STRING:Lcom/nuance/input/swypecorelib/KeyType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/nuance/input/swypecorelib/KeyType;->value:I

    return v0
.end method
