.class public interface abstract Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;
.super Ljava/lang/Object;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/TimerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract longPressKey(IILcom/nuance/input/swypecorelib/KeyType;)V
.end method

.method public abstract multiTapTimerTimeOut()V
.end method

.method public abstract quickPressKeyTimeOut(IILcom/nuance/input/swypecorelib/KeyType;)V
.end method

.method public abstract repeatedKey(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)V
.end method

.method public abstract touchTimerTimeOut(I)V
.end method
