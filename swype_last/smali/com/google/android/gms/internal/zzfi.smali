.class final Lcom/google/android/gms/internal/zzfi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfi$zza;
    }
.end annotation


# instance fields
.field final zzalc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfi$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/zzfj;)V
    .registers 6

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzalc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfi$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzfi$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/zzfi$7;-><init>(Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/internal/zzfi$zza;Lcom/google/android/gms/internal/zzfj;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_1d
    return-void
.end method
