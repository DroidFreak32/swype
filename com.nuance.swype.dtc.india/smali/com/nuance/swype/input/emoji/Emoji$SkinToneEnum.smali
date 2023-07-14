.class public final enum Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
.super Ljava/lang/Enum;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SkinToneEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field public static final enum DARK:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field public static final enum LIGHT:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field public static final enum MEDIUM:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field public static final enum MEDIUM_DARK:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field public static final enum MEDIUM_LIGHT:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field public static final enum NORMAL:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;


# instance fields
.field private skinValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    const-string/jumbo v1, "NORMAL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->NORMAL:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 21
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    const-string/jumbo v1, "LIGHT"

    const v2, 0x1f3fb

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->LIGHT:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 22
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    const-string/jumbo v1, "MEDIUM_LIGHT"

    const v2, 0x1f3fc

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->MEDIUM_LIGHT:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 23
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    const-string/jumbo v1, "MEDIUM"

    const v2, 0x1f3fd

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->MEDIUM:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 24
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    const-string/jumbo v1, "MEDIUM_DARK"

    const v2, 0x1f3fe

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->MEDIUM_DARK:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 25
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    const-string/jumbo v1, "DARK"

    const/4 v2, 0x5

    const v3, 0x1f3ff

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->DARK:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    sget-object v1, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->NORMAL:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->LIGHT:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->MEDIUM_LIGHT:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->MEDIUM:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->MEDIUM_DARK:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->DARK:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->$VALUES:[Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "skinValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->skinValue:I

    .line 31
    return-void
.end method

.method public static getSkinToneFromCode(I)Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 37
    invoke-static {}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->values()[Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 38
    .local v0, "e":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    iget v4, v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->skinValue:I

    if-ne p0, v4, :cond_0

    .line 40
    .end local v0    # "e":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    :goto_1
    return-object v0

    .line 37
    .restart local v0    # "e":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "e":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->NORMAL:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->$VALUES:[Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    return-object v0
.end method


# virtual methods
.method public final getSkinValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->skinValue:I

    return v0
.end method
