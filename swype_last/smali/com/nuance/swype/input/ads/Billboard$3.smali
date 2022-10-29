.class Lcom/nuance/swype/input/ads/Billboard$3;
.super Ljava/lang/Object;
.source "Billboard.java"

# interfaces
.implements Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ads/Billboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ads/Billboard;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ads/Billboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/ads/Billboard;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V
    .registers 7
    .param p1, "status"    # Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .prologue
    const/4 v4, 0x0

    .line 103
    # getter for: Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/ads/Billboard;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ad load status changed to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    # setter for: Lcom/nuance/swype/input/ads/Billboard;->mAdLoadRequested:Z
    invoke-static {v0, v4}, Lcom/nuance/swype/input/ads/Billboard;->access$202(Lcom/nuance/swype/input/ads/Billboard;Z)Z

    .line 105
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard$4;->$SwitchMap$com$nuance$swype$input$ads$AdProvider$AD_LOAD_STATUS:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 119
    :goto_2d
    return-void

    .line 107
    :pswitch_2e
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/Billboard;->updateViewToShowAd()V

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    # getter for: Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/ads/Billboard;->access$100(Lcom/nuance/swype/input/ads/Billboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->resume()V

    goto :goto_2d

    .line 115
    :pswitch_45
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/Billboard;->updateViewToShowPlaceholderAd()V

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard$3;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    # getter for: Lcom/nuance/swype/input/ads/Billboard;->mWaitTimeToShowCloseButton:J
    invoke-static {v1}, Lcom/nuance/swype/input/ads/Billboard;->access$300(Lcom/nuance/swype/input/ads/Billboard;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/ads/Billboard;->scheduleHidingCancelButton(J)V

    goto :goto_2d

    .line 105
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method
