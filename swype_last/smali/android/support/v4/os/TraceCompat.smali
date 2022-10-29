.class public final Landroid/support/v4/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .registers 3
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 1020
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 46
    :cond_9
    return-void
.end method

.method public static endSection()V
    .registers 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 1024
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    :cond_9
    return-void
.end method
