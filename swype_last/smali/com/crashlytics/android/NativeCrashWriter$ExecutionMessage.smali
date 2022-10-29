.class final Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutionMessage"
.end annotation


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V
    .registers 7
    .param p1, "signalMessage"    # Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;
    .param p2, "threads"    # Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;
    .param p3, "binaryImages"    # Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 234
    return-void
.end method
