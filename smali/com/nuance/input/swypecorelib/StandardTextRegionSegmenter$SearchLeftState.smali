.class final enum Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;
.super Ljava/lang/Enum;
.source "StandardTextRegionSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SearchLeftState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

.field public static final enum found_delim:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

.field public static final enum in_initial_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

.field public static final enum in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

.field public static final enum in_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

.field public static final enum start:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    const-string v1, "start"

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->start:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    const-string v1, "in_initial_ws"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_initial_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    const-string v1, "in_text"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    const-string v1, "found_delim"

    invoke-direct {v0, v1, v5}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->found_delim:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    new-instance v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    const-string v1, "in_ws"

    invoke-direct {v0, v1, v6}, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->start:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_initial_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_text:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->found_delim:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->in_ws:Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->$VALUES:[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->$VALUES:[Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/StandardTextRegionSegmenter$SearchLeftState;

    return-object v0
.end method
