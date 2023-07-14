.class final Lcom/localytics/android/Localytics$3;
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
    .line 84
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 85
    const-string/jumbo v0, "use_sandbox"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$3;->add(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo v0, "use_https"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$3;->add(Ljava/lang/Object;)Z

    .line 87
    const-string/jumbo v0, "ignore_standard_event_clv"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$3;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
