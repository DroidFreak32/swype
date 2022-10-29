.class final Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;
.super Ljava/lang/Object;
.source "DownloadLanguageDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 185
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageDelegate$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/DownloadLanguageDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 191
    return-void
.end method
