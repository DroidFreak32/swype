.class final Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;
.super Ljava/lang/Object;
.source "DownloadLanguageDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/DownloadLanguageDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$300(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/DownloadLanguageDelegate;->downloadLanguageId:I
    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->access$200(Lcom/nuance/swype/startup/DownloadLanguageDelegate;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 133
    return-void
.end method
