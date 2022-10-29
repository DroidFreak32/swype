.class final Lcom/google/android/gms/internal/zzfb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfb;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjd:Lcom/google/android/gms/internal/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfb$1;->zzbjd:Lcom/google/android/gms/internal/zzfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfb$1;->zzbjd:Lcom/google/android/gms/internal/zzfb;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfc;->zzbje:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 0
    return-void
.end method
