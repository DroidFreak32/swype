.class public interface abstract Lio/fabric/sdk/android/services/events/EventsStrategy;
.super Ljava/lang/Object;
.source "EventsStrategy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsManager;
.implements Lio/fabric/sdk/android/services/events/FileRollOverManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/events/EventsManager",
        "<TT;>;",
        "Lio/fabric/sdk/android/services/events/FileRollOverManager;"
    }
.end annotation


# virtual methods
.method public abstract getFilesSender()Lio/fabric/sdk/android/services/events/FilesSender;
.end method
