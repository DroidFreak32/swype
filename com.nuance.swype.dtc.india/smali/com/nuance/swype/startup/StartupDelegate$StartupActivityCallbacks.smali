.class interface abstract Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;
.super Ljava/lang/Object;
.source "StartupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StartupActivityCallbacks"
.end annotation


# virtual methods
.method public abstract cancelSequence()V
.end method

.method public abstract finishSequence(Z)V
.end method

.method public abstract getCurrentDelegate()Lcom/nuance/swype/startup/StartupDelegate;
.end method

.method public abstract getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;
.end method

.method public abstract notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V
.end method

.method public abstract registerListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener;)V
.end method

.method public abstract restartSequence(ILandroid/os/Bundle;)V
.end method

.method public abstract showDelegate(Lcom/nuance/swype/startup/StartupDelegate;)V
.end method

.method public abstract showKeyboardOnFinish$1385ff()V
.end method

.method public abstract startNextScreen(ILandroid/os/Bundle;)V
.end method

.method public abstract unregisterListener()V
.end method
