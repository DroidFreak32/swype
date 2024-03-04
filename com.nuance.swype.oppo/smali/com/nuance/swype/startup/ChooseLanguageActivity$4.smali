.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$4;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "ChooseLanguageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$200(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$4;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->onListUpdated()V

    .line 120
    :cond_0
    return-void
.end method
