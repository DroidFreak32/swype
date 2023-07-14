.class public Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;
.super Ljava/lang/Object;
.source "DisabledEventsStrategy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/events/EventsStrategy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelTimeBasedFileRollOver()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    return-void
.end method

.method public final deleteAllEvents()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    return-void
.end method

.method public final getFilesSender()Lio/fabric/sdk/android/services/events/FilesSender;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final recordEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final rollFileOver()Z
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final sendEvents()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lio/fabric/sdk/android/services/events/DisabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/DisabledEventsStrategy<TT;>;"
    return-void
.end method
