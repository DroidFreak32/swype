.class public final Lio/fabric/sdk/android/services/common/Crash$FatalException;
.super Lio/fabric/sdk/android/services/common/Crash;
.source "Crash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/Crash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FatalException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
