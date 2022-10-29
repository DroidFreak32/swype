.class Lcom/nuance/swype/input/IME$7;
.super Landroid/content/BroadcastReceiver;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 3218
    iput-object p1, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3223
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    .line 3224
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->onDestroy()V

    .line 3271
    :cond_19
    :goto_19
    return-void

    .line 3225
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 3226
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    .line 3227
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->stopSpeech()V

    .line 3228
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 3230
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/nuance/android/compat/KeyguardManagerCompat;->isKeyguardLocked(Landroid/app/KeyguardManager;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3231
    invoke-static {v1}, Lcom/nuance/android/compat/KeyguardManagerCompat;->isKeyguardSecure(Landroid/app/KeyguardManager;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3232
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;
    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/IME$KeyboardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME$KeyboardState;->clear()V

    goto :goto_19

    .line 3235
    .end local v1    # "kgm":Landroid/app/KeyguardManager;
    :cond_54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 3236
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    goto :goto_19

    .line 3237
    :cond_67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 3238
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    .line 3239
    const/4 v4, 0x0

    .line 3240
    .local v4, "wasShowingFirstTimeMessage":Z
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v5

    if-eqz v5, :cond_8c

    .line 3241
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->isDialogShowing()Z

    move-result v4

    .line 3243
    :cond_8c
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->closeDialogs()V

    .line 3246
    if-eqz v4, :cond_19

    .line 3247
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->showStartupMessage()V

    goto :goto_19

    .line 3249
    .end local v4    # "wasShowingFirstTimeMessage":Z
    :cond_99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "language_update_notification"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 3250
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3254
    const-string/jumbo v5, "language.id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3256
    .local v2, "languageId":I
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3257
    .local v3, "languageUpdateIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    # invokes: Lcom/nuance/swype/input/IME;->getIntentFlags()I
    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$700(Lcom/nuance/swype/input/IME;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3258
    const-string/jumbo v5, "language.id"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3259
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5, v3}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 3260
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->hideWindow()V

    goto/16 :goto_19

    .line 3262
    .end local v2    # "languageId":I
    .end local v3    # "languageUpdateIntent":Landroid/content/Intent;
    :cond_dd
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3263
    sget-object v5, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "ACTION_USER_UNLOCKED..."

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3264
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3265
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v5

    if-nez v5, :cond_19

    .line 3266
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->postUserUnlock()V

    .line 3267
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5, v9}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    goto/16 :goto_19
.end method
