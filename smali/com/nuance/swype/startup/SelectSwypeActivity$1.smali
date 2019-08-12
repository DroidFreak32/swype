.class final Lcom/nuance/swype/startup/SelectSwypeActivity$1;
.super Ljava/lang/Object;
.source "SelectSwypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/SelectSwypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/SelectSwypeActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-static {v0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->access$002$7d0461d1(Lcom/nuance/swype/startup/SelectSwypeActivity;)Z

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->isSwypeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/SelectSwypeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    const-class v3, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/SelectSwypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeActivity$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/SelectSwypeActivity;->finish()V

    goto :goto_0
.end method
