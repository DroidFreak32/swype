.class final Lcom/nuance/swype/startup/DownloadLanguageActivity$4;
.super Ljava/lang/Object;
.source "DownloadLanguageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    const-class v3, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->finish()V

    .line 204
    return-void
.end method
