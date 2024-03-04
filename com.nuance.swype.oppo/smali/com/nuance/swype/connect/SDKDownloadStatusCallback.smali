.class public Lcom/nuance/swype/connect/SDKDownloadStatusCallback;
.super Ljava/lang/Object;
.source "SDKDownloadStatusCallback.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private currentPercent:I

.field private final identifier:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "SDKDownloadStatusCallback"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "identifier: ["

    const-string v4, "] "

    const-string v5, "type:"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->identifier:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->type:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->currentPercent:I

    .line 18
    return-void
.end method


# virtual methods
.method public downloadComplete()V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "downloadComplete"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public downloadFailed(I)V
    .locals 4
    .param p1, "reasonCode"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "downloadFailed:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public downloadInstalled()V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "downloadInstalled"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "downloadPercentage:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    iput p1, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->currentPercent:I

    .line 40
    return-void
.end method

.method public downloadStarted()V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "downloadStarted"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public downloadStopped(I)V
    .locals 4
    .param p1, "reasonCode"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "[SDKDownloadStatusCallback] "

    const-string v2, "downloadStopped:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public getIdentifer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->currentPercent:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->type:I

    return v0
.end method
