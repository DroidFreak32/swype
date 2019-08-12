.class final enum Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;
.super Ljava/lang/Enum;
.source "StandardTextRegionSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SearchRightState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

.field public static final enum FOUND_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

.field public static final enum FOUND_NO_WS_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

.field public static final enum IN_TEXT:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

.field public static final enum IN_WS:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    const-string v1, "IN_TEXT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_TEXT:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    const-string v1, "FOUND_DELIM"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    const-string v1, "FOUND_NO_WS_DELIM"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_NO_WS_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    const-string v1, "IN_WS"

    invoke-direct {v0, v1, v5}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_WS:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_TEXT:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->FOUND_NO_WS_DELIM:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->IN_WS:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->$VALUES:[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->$VALUES:[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchRightState;

    return-object v0
.end method
