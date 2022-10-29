.class public final Lcom/google/android/gms/common/util/zzs;
.super Ljava/lang/Object;


# direct methods
.method public static zzhb(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
