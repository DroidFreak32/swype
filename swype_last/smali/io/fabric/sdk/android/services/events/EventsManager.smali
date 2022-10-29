.class public interface abstract Lio/fabric/sdk/android/services/events/EventsManager;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deleteAllEvents()V
.end method

.method public abstract recordEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract sendEvents()V
.end method
