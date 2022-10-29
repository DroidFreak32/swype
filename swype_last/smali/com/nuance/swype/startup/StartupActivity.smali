.class public Lcom/nuance/swype/startup/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"

# interfaces
.implements Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;


# static fields
.field public static final ACCOUNT_REGISTER:Ljava/lang/String;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

.field private flags:I

.field private launchMode:Ljava/lang/String;

.field private launchToSettings:Z

.field private mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

.field private pendingRemoveScreenInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showKeyboardOnFinish:Z

.field private themeID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "StartupActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 39
    const-class v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/StartupActivity;->ACCOUNT_REGISTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string/jumbo v0, "standalone"

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/startup/StartupActivity;->showKeyboardOnFinish:Z

    return-void
.end method


# virtual methods
.method public final cancelSequence()V
    .registers 5

    .prologue
    .line 216
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v1

    .line 217
    .local v1, "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "pendingRemoveScreenInfo":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->removeSettingScreenInfo(Ljava/lang/String;)Z

    goto :goto_e

    .line 220
    .end local v0    # "pendingRemoveScreenInfo":Ljava/lang/String;
    :cond_1e
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget v2, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    .line 223
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    .line 224
    return-void
.end method

.method public final finishSequence(Z)V
    .registers 7
    .param p1, "showKeyboard"    # Z

    .prologue
    .line 228
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v2

    .line 229
    .local v2, "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    iget-object v3, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    .local v1, "pendingRemoveScreenInfo":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/nuance/swype/startup/StartupSequenceInfo;->removeSettingScreenInfo(Ljava/lang/String;)Z

    goto :goto_e

    .line 232
    .end local v1    # "pendingRemoveScreenInfo":Ljava/lang/String;
    :cond_1e
    iget-object v3, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget v3, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    .line 237
    if-eqz p1, :cond_40

    .line 238
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 239
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_3c

    .line 240
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->show()V

    .line 247
    .end local v0    # "ime":Lcom/nuance/swype/input/IME;
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    .line 248
    return-void

    .line 243
    :cond_40
    iget-boolean v3, p0, Lcom/nuance/swype/startup/StartupActivity;->launchToSettings:Z

    if-eqz v3, :cond_3c

    .line 244
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    goto :goto_3c
.end method

.method public final getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;
    .registers 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "startup_delegate"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 164
    .local v0, "prev":Landroid/app/Fragment;
    if-eqz v0, :cond_10

    .line 165
    check-cast v0, Lcom/nuance/swype/startup/StartupDelegate;

    .line 167
    .end local v0    # "prev":Landroid/app/Fragment;
    :goto_f
    return-object v0

    .restart local v0    # "prev":Landroid/app/Fragment;
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;
    .registers 2

    .prologue
    .line 322
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "listenerKey"    # Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 282
    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$1;->$SwitchMap$com$nuance$swype$startup$StartupDelegate$StartupListener$LISTENER_KEY:[I

    invoke-virtual {p1}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_78

    .line 315
    sget-object v2, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "unknown listener key: "

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 318
    :goto_1c
    return-void

    .line 284
    :pswitch_1d
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    if-nez v1, :cond_2a

    .line 285
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "notifyStartupListener: no listener to notify!"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1c

    .line 288
    :cond_2a
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    invoke-interface {v1}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener;->onSkipListener()V

    goto :goto_1c

    .line 291
    :pswitch_30
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    if-nez v1, :cond_3d

    .line 292
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "notifyStartupListener: no listener to notify!"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1c

    .line 295
    :cond_3d
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    invoke-interface {v1}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener;->onCancelListener()V

    goto :goto_1c

    .line 298
    :pswitch_43
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    if-nez v1, :cond_50

    .line 299
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "notifyStartupListener: no listener to notify!"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1c

    .line 302
    :cond_50
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    invoke-interface {v1, p0}, Lcom/nuance/swype/startup/StartupDelegate$StartupListener;->onAcceptListener(Landroid/content/Context;)V

    goto :goto_1c

    .line 305
    :pswitch_56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v2, "result_data"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 307
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/swype/startup/StartupActivity;->setResult(ILandroid/content/Intent;)V

    .line 308
    iget-boolean v2, p0, Lcom/nuance/swype/startup/StartupActivity;->launchToSettings:Z

    if-eqz v2, :cond_6d

    :goto_69
    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->finishSequence(Z)V

    goto :goto_1c

    :cond_6d
    iget-boolean v1, p0, Lcom/nuance/swype/startup/StartupActivity;->showKeyboardOnFinish:Z

    goto :goto_69

    .line 311
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :pswitch_70
    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->setResult(I)V

    .line 312
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->cancelSequence()V

    goto :goto_1c

    .line 282
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_30
        :pswitch_43
        :pswitch_56
        :pswitch_70
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 254
    .local v0, "currentDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    if-eqz v0, :cond_c

    .line 255
    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 257
    :cond_c
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 119
    .local v0, "delegate":Lcom/nuance/swype/startup/StartupDelegate;
    if-eqz v0, :cond_9

    .line 120
    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupDelegate;->onBackPressed()V

    .line 122
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 64
    .line 1344
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v5

    .line 1329
    if-nez v5, :cond_ec

    .line 1330
    sget v5, Lcom/nuance/swype/input/R$style;->AppStartupTheme:I

    iput v5, p0, Lcom/nuance/swype/startup/StartupActivity;->themeID:I

    .line 1331
    invoke-virtual {p0, v10}, Lcom/nuance/swype/startup/StartupActivity;->setRequestedOrientation(I)V

    .line 1335
    :goto_13
    iget v5, p0, Lcom/nuance/swype/startup/StartupActivity;->themeID:I

    invoke-super {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v5, Lcom/nuance/swype/input/R$layout;->startup:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/StartupActivity;->setContentView(I)V

    .line 68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "launch_to_settings"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/startup/StartupActivity;->launchToSettings:Z

    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "launch_mode"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "mode":Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 73
    iput-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    .line 75
    :cond_43
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "launch_screen"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "launchScreen":Ljava/lang/String;
    if-nez v0, :cond_53

    .line 77
    const-string/jumbo v0, ""

    .line 79
    :cond_53
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "start_flags"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    .line 80
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "result_data"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 81
    .local v2, "resultData":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v4

    .line 82
    .local v4, "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    const-string/jumbo v7, "startup_sequence"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 83
    invoke-virtual {v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getFirstStartupScreenInfo()Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 93
    :cond_84
    :goto_84
    sget-object v5, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onCreate: launchToSettings: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/nuance/swype/startup/StartupActivity;->launchToSettings:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", launchMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", flags = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", launchScreen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-interface {v5, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 99
    if-nez p1, :cond_eb

    .line 100
    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    if-eqz v5, :cond_119

    .line 101
    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 102
    sget-object v5, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "onCreate: delegate not found, creating new"

    aput-object v8, v7, v6

    invoke-interface {v5, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 103
    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iget v6, p0, Lcom/nuance/swype/startup/StartupActivity;->themeID:I

    iget v7, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    invoke-static {v5, v6, v7, v2}, Lcom/nuance/swype/startup/StartupDelegate;->createDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;IILandroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v3

    .line 104
    .local v3, "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/startup/StartupActivity;->showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V

    .line 113
    .end local v3    # "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    :cond_eb
    :goto_eb
    return-void

    .line 1333
    .end local v0    # "launchScreen":Ljava/lang/String;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "resultData":Landroid/os/Bundle;
    .end local v4    # "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    :cond_ec
    sget v5, Lcom/nuance/swype/input/R$style;->AppStartupTheme_FloatingActivity:I

    iput v5, p0, Lcom/nuance/swype/startup/StartupActivity;->themeID:I

    goto/16 :goto_13

    .line 2172
    .restart local v0    # "launchScreen":Ljava/lang/String;
    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "resultData":Landroid/os/Bundle;
    .restart local v4    # "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    :cond_f2
    iget-object v5, v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 85
    iput-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 86
    iget v5, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    and-int/lit8 v5, v5, 0x10

    const/16 v7, 0x10

    if-ne v5, v7, :cond_84

    .line 87
    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 88
    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->pendingRemoveScreenInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_84

    .line 106
    :cond_113
    iget v5, p0, Lcom/nuance/swype/startup/StartupActivity;->flags:I

    invoke-virtual {p0, v5, v2}, Lcom/nuance/swype/startup/StartupActivity;->startNextScreen(ILandroid/os/Bundle;)V

    goto :goto_eb

    .line 110
    :cond_119
    iget-boolean v5, p0, Lcom/nuance/swype/startup/StartupActivity;->launchToSettings:Z

    if-eqz v5, :cond_122

    move v5, v6

    :goto_11e
    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/StartupActivity;->finishSequence(Z)V

    goto :goto_eb

    :cond_122
    iget-boolean v5, p0, Lcom/nuance/swype/startup/StartupActivity;->showKeyboardOnFinish:Z

    goto :goto_11e
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    .line 261
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onDestroy: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 263
    .local v0, "currentDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    if-eqz v0, :cond_24

    .line 264
    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupDelegate;->onDestroy()V

    .line 266
    :cond_24
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 267
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 128
    .local v0, "delegate":Lcom/nuance/swype/startup/StartupDelegate;
    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v0, p1}, Lcom/nuance/swype/startup/StartupDelegate;->onWindowFocusChanged(Z)V

    .line 131
    :cond_9
    return-void
.end method

.method public final registerListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    .line 272
    return-void
.end method

.method public final restartSequence(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v0

    .line 204
    .local v0, "ssInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getFirstStartupScreenInfo()Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 206
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 207
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iget v3, p0, Lcom/nuance/swype/startup/StartupActivity;->themeID:I

    invoke-static {v2, v3, p1, p2}, Lcom/nuance/swype/startup/StartupDelegate;->createDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;IILandroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v1

    .line 208
    .local v1, "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V

    .line 212
    .end local v1    # "startupDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    :goto_21
    return-void

    .line 210
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/startup/StartupActivity;->startNextScreen(ILandroid/os/Bundle;)V

    goto :goto_21
.end method

.method public final showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V
    .registers 10
    .param p1, "delegate"    # Lcom/nuance/swype/startup/StartupDelegate;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 137
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 139
    .local v0, "currentDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    if-eqz v0, :cond_2c

    .line 140
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showDelegate: remove "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 145
    :cond_2c
    if-eqz p1, :cond_53

    .line 146
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showDelegate: show "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 148
    sget v2, Lcom/nuance/swype/input/R$id;->startup_fragment_swap:I

    const-string/jumbo v3, "startup_delegate"

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 149
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 154
    :goto_52
    return-void

    .line 151
    :cond_53
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "showDelegate: finishSequence"

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 152
    iget-boolean v3, p0, Lcom/nuance/swype/startup/StartupActivity;->launchToSettings:Z

    if-eqz v3, :cond_67

    :goto_63
    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/StartupActivity;->finishSequence(Z)V

    goto :goto_52

    :cond_67
    iget-boolean v2, p0, Lcom/nuance/swype/startup/StartupActivity;->showKeyboardOnFinish:Z

    goto :goto_63
.end method

.method public final showKeyboardOnFinish$1385ff()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/startup/StartupActivity;->showKeyboardOnFinish:Z

    .line 159
    return-void
.end method

.method public final startNextScreen(ILandroid/os/Bundle;)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 173
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v1

    .line 176
    .local v1, "ssInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    if-nez v2, :cond_29

    .line 177
    sget-object v2, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "startNextScreen: currentScreenInfo unexpectedly null"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 187
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 189
    .local v0, "nextDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    if-eqz v2, :cond_23

    .line 190
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iget v3, p0, Lcom/nuance/swype/startup/StartupActivity;->themeID:I

    invoke-static {v2, v3, p1, p2}, Lcom/nuance/swype/startup/StartupDelegate;->createDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;IILandroid/os/Bundle;)Lcom/nuance/swype/startup/StartupDelegate;

    move-result-object v0

    .line 193
    :cond_23
    if-eqz v0, :cond_7e

    .line 194
    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/StartupActivity;->showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V

    .line 198
    :goto_28
    return-void

    .line 181
    .end local v0    # "nextDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    :cond_29
    sget-object v2, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startNextScreen: currentScreenInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iget-object v5, v5, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iget-object v2, v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iput-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 183
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startNextScreen: nextScreenInfo: "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    if-nez v2, :cond_79

    const-string/jumbo v2, "null"

    :goto_5f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 184
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_16

    .line 183
    :cond_79
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->currentScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    iget-object v2, v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    goto :goto_5f

    .line 196
    .restart local v0    # "nextDelegate":Lcom/nuance/swype/startup/StartupDelegate;
    :cond_7e
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/StartupActivity;->showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V

    goto :goto_28
.end method

.method public final unregisterListener()V
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->mStartupListener:Lcom/nuance/swype/startup/StartupDelegate$StartupListener;

    .line 277
    return-void
.end method
