.class Lcom/nuance/swype/input/settings/Updates$1;
.super Ljava/lang/Object;
.source "Updates.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$100(Lcom/nuance/swype/input/settings/Updates;)V

    .line 99
    return-void
.end method

.method public downloadFailed(I)V
    .registers 4
    .param p1, "reasonCode"    # I

    .prologue
    .line 87
    const/16 v0, -0x3e7

    if-ne p1, v0, :cond_a

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->cancelUpgradeDownload()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$300(Lcom/nuance/swype/input/settings/Updates;)V

    .line 94
    :goto_9
    return-void

    .line 91
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/Updates;->access$002(Lcom/nuance/swype/input/settings/Updates;Z)Z

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$100(Lcom/nuance/swype/input/settings/Updates;)V

    goto :goto_9
.end method

.method public downloadPercentage(I)V
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # setter for: Lcom/nuance/swype/input/settings/Updates;->progress:I
    invoke-static {v0, p1}, Lcom/nuance/swype/input/settings/Updates;->access$202(Lcom/nuance/swype/input/settings/Updates;I)I

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$100(Lcom/nuance/swype/input/settings/Updates;)V

    .line 83
    return-void
.end method

.method public downloadStarted()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public downloadStopped(I)V
    .registers 4
    .param p1, "reasonCode"    # I

    .prologue
    .line 66
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/Updates;->access$002(Lcom/nuance/swype/input/settings/Updates;Z)Z

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$100(Lcom/nuance/swype/input/settings/Updates;)V

    .line 71
    return-void
.end method
