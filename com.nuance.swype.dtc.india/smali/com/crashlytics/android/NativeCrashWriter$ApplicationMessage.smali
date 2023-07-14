.class final Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationMessage"
.end annotation


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V
    .locals 3
    .param p1, "executionMessage"    # Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;
    .param p2, "customAttrs"    # Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    .prologue
    .line 220
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 221
    return-void
.end method
