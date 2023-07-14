.class final Lcom/google/android/gms/internal/zzlm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlm;->zzd(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcqe:Ljava/util/Map;

.field final synthetic zzcqf:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlm;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcqe:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlm;->zzb(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    const-string/jumbo v1, "pubVideoCmd"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlm$1;->zzcqe:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzlh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
