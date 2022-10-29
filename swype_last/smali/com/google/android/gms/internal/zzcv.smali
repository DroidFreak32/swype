.class public final Lcom/google/android/gms/internal/zzcv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field zzaxn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxy:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcy;->zzaxq:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcv;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxy:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcy;->zzaxq:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/String;

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcv;->zzaxn:Ljava/lang/String;

    return-void

    :cond_12
    move-object v0, p1

    goto :goto_f
.end method
