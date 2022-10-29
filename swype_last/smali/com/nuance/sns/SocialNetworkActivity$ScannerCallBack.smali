.class public Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;
.super Ljava/lang/Object;
.source "SocialNetworkActivity.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/SocialNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScannerCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/sns/SocialNetworkActivity;


# direct methods
.method protected constructor <init>(Lcom/nuance/sns/SocialNetworkActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "reasonCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 389
    # getter for: Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/sns/SocialNetworkActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AbstactScannerCallBack.onFailure() reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v1, v1, Lcom/nuance/sns/SocialNetworkActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v2}, Lcom/nuance/sns/SocialNetworkActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/sns/SocialNetworkActivity;->updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    # invokes: Lcom/nuance/sns/SocialNetworkActivity;->releaseScanner()V
    invoke-static {v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$300(Lcom/nuance/sns/SocialNetworkActivity;)V

    .line 393
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 394
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    .line 395
    return-void
.end method

.method public onFinish()V
    .registers 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v1, v1, Lcom/nuance/sns/SocialNetworkActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v2}, Lcom/nuance/sns/SocialNetworkActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/sns/SocialNetworkActivity;->updateFinishedStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    # invokes: Lcom/nuance/sns/SocialNetworkActivity;->releaseScanner()V
    invoke-static {v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$300(Lcom/nuance/sns/SocialNetworkActivity;)V

    .line 383
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->dismissSpinner()V

    .line 384
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    .line 385
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v1, v1, Lcom/nuance/sns/SocialNetworkActivity;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity$ScannerCallBack;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v2}, Lcom/nuance/sns/SocialNetworkActivity;->getStringLastRun()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/sns/SocialNetworkActivity;->updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 377
    return-void
.end method
