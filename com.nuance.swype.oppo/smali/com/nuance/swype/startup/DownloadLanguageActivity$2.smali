.class final Lcom/nuance/swype/startup/DownloadLanguageActivity$2;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "DownloadLanguageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/DownloadLanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .prologue
    .line 74
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onConnectionChanged("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$400(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V

    .line 76
    return-void
.end method
