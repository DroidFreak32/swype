.class public final enum Lcom/nuance/swype/input/chinese/HighLightKeyArea;
.super Ljava/lang/Enum;
.source "HighLightKeyArea.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/chinese/HighLightKeyArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum CONSONANT_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

.field public static final enum VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 5
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "VOWEL_LABLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 6
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "VOWEL_ALTLABLE"

    invoke-direct {v0, v1, v6, v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 7
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "VOWEL_LEFTALTLABLE"

    invoke-direct {v0, v1, v8, v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 8
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "CONSONANT_LABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 9
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "CONSONANT_ALTLABLE"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 10
    new-instance v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    const-string/jumbo v1, "CONSONANT_LEFTALTLABLE"

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->$VALUES:[Lcom/nuance/swype/input/chinese/HighLightKeyArea;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->value:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/chinese/HighLightKeyArea;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/chinese/HighLightKeyArea;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->$VALUES:[Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/chinese/HighLightKeyArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->value:I

    return v0
.end method
