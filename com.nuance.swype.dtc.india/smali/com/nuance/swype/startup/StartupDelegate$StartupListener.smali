.class interface abstract Lcom/nuance/swype/startup/StartupDelegate$StartupListener;
.super Ljava/lang/Object;
.source "StartupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StartupListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;
    }
.end annotation


# virtual methods
.method public abstract onAcceptListener(Landroid/content/Context;)V
.end method

.method public abstract onCancelListener()V
.end method

.method public abstract onSkipListener()V
.end method
