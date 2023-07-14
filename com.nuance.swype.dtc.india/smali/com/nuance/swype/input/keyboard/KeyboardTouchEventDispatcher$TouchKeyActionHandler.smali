.class public interface abstract Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;
.super Ljava/lang/Object;
.source "KeyboardTouchEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchKeyActionHandler"
.end annotation


# virtual methods
.method public abstract handleKeyboardShiftState(F)V
.end method

.method public abstract multiTapTimerTimeOut()V
.end method

.method public abstract multiTapTimerTimeoutActive()V
.end method

.method public abstract touchCanceled(II)V
.end method

.method public abstract touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V
.end method

.method public abstract touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z
.end method

.method public abstract touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
.end method

.method public abstract touchHeldMove(II[F[F[I)V
.end method

.method public abstract touchHeldRepeat(IILcom/nuance/input/swypecorelib/KeyType;I)Z
.end method

.method public abstract touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
.end method

.method public abstract touchMoved(II[F[F[IZ)V
.end method

.method public abstract touchStarted(IILcom/nuance/input/swypecorelib/KeyType;FFI)V
.end method
