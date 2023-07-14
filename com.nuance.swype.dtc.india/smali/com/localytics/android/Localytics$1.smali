.class final Lcom/localytics/android/Localytics$1;
.super Ljava/util/HashSet;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 69
    const-string/jumbo v0, "session_timeout"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$1;->add(Ljava/lang/Object;)Z

    .line 70
    const-string/jumbo v0, "max_monitoring_regions"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v0, "region_throttle_time"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string/jumbo v0, "min_region_dwell_time"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$1;->add(Ljava/lang/Object;)Z

    .line 73
    const-string/jumbo v0, "max_region_dwell_time"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$1;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method
