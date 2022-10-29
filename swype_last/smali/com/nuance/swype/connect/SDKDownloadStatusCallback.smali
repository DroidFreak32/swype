.class public Lcom/nuance/swype/connect/SDKDownloadStatusCallback;
.super Ljava/lang/Object;
.source "SDKDownloadStatusCallback.java"


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private currentPercent:I

.field private final identifier:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string/jumbo v0, "SDKDownloadStatusCallback"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 8
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadStatusCallback] "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "identifier: ["

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "] "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "type:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->identifier:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->type:I

    .line 17
    iput v4, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->currentPercent:I

    .line 18
    return-void
.end method


# virtual methods
.method public downloadComplete()V
    .registers 5

    .prologue
    .line 53
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadStatusCallback] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "downloadComplete"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public downloadFailed(I)V
    .registers 6
    .param p1, "reasonCode"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadStatusCallback] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "downloadFailed:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public downloadInstalled()V
    .registers 5

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadStatusCallback] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "downloadInstalled"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public downloadPercentage(I)V
    .registers 6
    .param p1, "percent"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadStatusCallback] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "downloadPercentage:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 39
    iput p1, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->currentPercent:I

    .line 40
    return-void
.end method

.method public downloadStarted()V
    .registers 5

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadStatusCallback] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "downloadStarted"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public downloadStopped(I)V
    .registers 6
    .param p1, "reasonCode"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SDKDownloadStatusCallback] "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "downloadStopped:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public getIdentifer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->currentPercent:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->type:I

    return v0
.end method
