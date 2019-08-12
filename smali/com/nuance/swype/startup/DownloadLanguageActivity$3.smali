.class final Lcom/nuance/swype/startup/DownloadLanguageActivity$3;
.super Ljava/lang/Object;
.source "DownloadLanguageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/DownloadLanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$200(Lcom/nuance/swype/startup/DownloadLanguageActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    const-class v3, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$3;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->finish()V

    .line 162
    return-void
.end method
