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
    .locals 0

    .prologue
    .line 2965
    iput-object p1, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2969
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2970
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    .line 2971
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->onDestroy()V

    .line 3021
    :cond_0
    :goto_0
    return-void

    .line 2972
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2973
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    .line 2974
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->stopSpeech()V

    .line 2975
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 2977
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/nuance/android/compat/KeyguardManagerCompat;->isKeyguardLocked(Landroid/app/KeyguardManager;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/nuance/android/compat/KeyguardManagerCompat;->isKeyguardSecure(Landroid/app/KeyguardManager;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2979
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$400(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/IME$KeyboardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME$KeyboardState;->clear()V

    .line 2981
    :cond_2
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2982
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    .line 2983
    .local v0, "emojiInputController":Lcom/nuance/swype/input/emoji/EmojiInputController;
    if-eqz v0, :cond_0

    .line 2984
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->switchStateToRecentCategory()V

    goto :goto_0

    .line 2989
    .end local v0    # "emojiInputController":Lcom/nuance/swype/input/emoji/EmojiInputController;
    .end local v1    # "kgm":Landroid/app/KeyguardManager;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2990
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    goto :goto_0

    .line 2991
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2992
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->cleanupAccessibility()V

    .line 2993
    const/4 v4, 0x0

    .line 2994
    .local v4, "wasShowingFirstTimeMessage":Z
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2995
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->isDialogShowing()Z

    move-result v4

    .line 2997
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->closeDialogs()V

    .line 3000
    if-eqz v4, :cond_0

    .line 3001
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$600(Lcom/nuance/swype/input/IME;)V

    goto/16 :goto_0

    .line 3003
    .end local v4    # "wasShowingFirstTimeMessage":Z
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "language_update_notification"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3004
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3008
    const-string v5, "language.id"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3010
    .local v2, "languageId":I
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3011
    .local v3, "languageUpdateIntent":Landroid/content/Intent;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_7

    .line 3012
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3016
    :goto_1
    const-string v5, "language.id"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3017
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5, v3}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 3018
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->hideWindow()V

    goto/16 :goto_0

    .line 3014
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/IME$7;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$700(Lcom/nuance/swype/input/IME;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method
