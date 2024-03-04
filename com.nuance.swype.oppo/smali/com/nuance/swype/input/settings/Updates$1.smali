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
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 98
    return-void
.end method

.method public downloadFailed(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 86
    sget v0, Lcom/nuance/swype/connect/SDKUpdateManager;->OUT_OF_SPACE_ERROR:I

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$200(Lcom/nuance/swype/input/settings/Updates;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/Updates;->access$002(Lcom/nuance/swype/input/settings/Updates;Z)Z

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    goto :goto_0
.end method

.method public downloadPercentage(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/settings/Updates;->access$102(Lcom/nuance/swype/input/settings/Updates;I)I

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 82
    return-void
.end method

.method public downloadStarted()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public downloadStopped(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 65
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/Updates;->access$002(Lcom/nuance/swype/input/settings/Updates;Z)Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$1;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 70
    return-void
.end method
