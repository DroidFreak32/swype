.class public final enum Lcom/nuance/swype/input/BuildInfo$HandwritingType;
.super Ljava/lang/Enum;
.source "BuildInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BuildInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandwritingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/BuildInfo$HandwritingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/BuildInfo$HandwritingType;

.field public static final enum CJK_ONLY:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

.field public static final enum FULL_SUPPORT:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

.field public static final enum NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/swype/input/BuildInfo$HandwritingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    .line 96
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    const-string v1, "CJK_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lcom/nuance/swype/input/BuildInfo$HandwritingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->CJK_ONLY:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    .line 97
    new-instance v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    const-string v1, "FULL_SUPPORT"

    invoke-direct {v0, v1, v4, v4}, Lcom/nuance/swype/input/BuildInfo$HandwritingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->FULL_SUPPORT:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->CJK_ONLY:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->FULL_SUPPORT:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->$VALUES:[Lcom/nuance/swype/input/BuildInfo$HandwritingType;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->value:I

    .line 104
    return-void
.end method

.method public static parseFromConfig(I)Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 107
    invoke-static {}, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->values()[Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 108
    .local v1, "h":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    iget v4, v1, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->value:I

    if-ne v4, p0, :cond_0

    .line 112
    .end local v1    # "h":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    :goto_1
    return-object v1

    .line 107
    .restart local v1    # "h":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "h":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->$VALUES:[Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/BuildInfo$HandwritingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    return-object v0
.end method
