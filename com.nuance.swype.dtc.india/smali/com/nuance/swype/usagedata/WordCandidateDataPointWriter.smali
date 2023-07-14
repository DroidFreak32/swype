.class public Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;
.super Ljava/lang/Object;
.source "WordCandidateDataPointWriter.java"

# interfaces
.implements Lcom/nuance/swype/usagedata/DataPointWriter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;)V
    .locals 0
    .param p1, "keyboardScribe"    # Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;->keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    .line 15
    return-void
.end method


# virtual methods
.method public final write(Lcom/nuance/input/swypecorelib/usagedata/SessionData;)V
    .locals 2
    .param p1, "data"    # Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;->keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordWordWCLDataPoint(Ljava/lang/String;)V

    .line 28
    return-void
.end method
