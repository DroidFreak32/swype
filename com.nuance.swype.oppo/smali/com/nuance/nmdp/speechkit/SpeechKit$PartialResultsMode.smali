.class public final enum Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
.super Ljava/lang/Enum;
.source "SpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/SpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PartialResultsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum UTTERANCE_DETECTION_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum UTTERANCE_DETECTION_AVERAGE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum UTTERANCE_DETECTION_CONSERVATIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum UTTERANCE_DETECTION_DEFAULT:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field public static final enum UTTERANCE_DETECTION_VERY_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "NO_PARTIAL_RESULTS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 72
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "UTTERANCE_DETECTION_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_DEFAULT:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 80
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "UTTERANCE_DETECTION_VERY_AGRESSIVE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_VERY_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 88
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "UTTERANCE_DETECTION_AGRESSIVE"

    invoke-direct {v0, v1, v6}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 96
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "UTTERANCE_DETECTION_AVERAGE"

    invoke-direct {v0, v1, v7}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AVERAGE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 104
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "UTTERANCE_DETECTION_CONSERVATIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_CONSERVATIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 110
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    const-string v1, "CONTINUOUS_STREAMING_RESULTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_DEFAULT:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_VERY_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AVERAGE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_CONSERVATIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->$VALUES:[Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->$VALUES:[Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    invoke-virtual {v0}, [Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    return-object v0
.end method
