.class final Lcom/nuance/swype/startup/DownloadLanguageDelegate$1;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "DownloadLanguageDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/DownloadLanguageDelegate;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .registers 6
    .param p1, "isConnected"    # Z

    .prologue
    .line 47
    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConnectionChanged("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # invokes: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->connectionLost()V
    invoke-static {v0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$100(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V

    .line 49
    return-void
.end method
