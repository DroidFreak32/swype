.class public final Lcom/google/android/gms/internal/zzdg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# direct methods
.method public static varargs zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    goto :goto_3
.end method
