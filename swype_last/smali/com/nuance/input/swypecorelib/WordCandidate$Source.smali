.class public final enum Lcom/nuance/input/swypecorelib/WordCandidate$Source;
.super Ljava/lang/Enum;
.source "WordCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WordCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/WordCandidate$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_ASDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_AUTOAPPEND:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_LDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_MDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_STEM:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_TERMPUNCT:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

.field public static final enum WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 50
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_USER_ADDED"

    invoke-direct {v0, v1, v5, v5}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 51
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_LDB"

    invoke-direct {v0, v1, v6, v6}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_LDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 52
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_MDB"

    invoke-direct {v0, v1, v7, v7}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_MDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 53
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_ASDB"

    invoke-direct {v0, v1, v8, v8}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_ASDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 54
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_STEM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_STEM:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 55
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_AUTOAPPEND"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_AUTOAPPEND:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 56
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_TERMPUNCT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_TERMPUNCT:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 59
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_CONSTRUCTED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 61
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_NEW_WORD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 62
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_GESTURE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 64
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    const-string/jumbo v1, "WORD_SOURCE_DRAWABLE"

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_LDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_MDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_ASDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_STEM:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_AUTOAPPEND:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_TERMPUNCT:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->$VALUES:[Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->value:I

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->$VALUES:[Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/WordCandidate$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->value:I

    return v0
.end method
