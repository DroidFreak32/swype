.class public final Lcom/google/android/gms/internal/zzir;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzail:Ljava/lang/Object;

.field zzbvq:Ljava/lang/String;

.field zzcem:Ljava/lang/String;

.field zzcen:Lcom/google/android/gms/internal/zzkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkv",
            "<",
            "Lcom/google/android/gms/internal/zziu;",
            ">;"
        }
    .end annotation
.end field

.field zzceo:Lcom/google/android/gms/internal/zzfs$zzc;

.field public final zzcep:Lcom/google/android/gms/internal/zzep;

.field public final zzceq:Lcom/google/android/gms/internal/zzep;

.field public final zzcer:Lcom/google/android/gms/internal/zzep;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzail:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcen:Lcom/google/android/gms/internal/zzkv;

    new-instance v0, Lcom/google/android/gms/internal/zzir$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzir$1;-><init>(Lcom/google/android/gms/internal/zzir;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcep:Lcom/google/android/gms/internal/zzep;

    new-instance v0, Lcom/google/android/gms/internal/zzir$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzir$2;-><init>(Lcom/google/android/gms/internal/zzir;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzceq:Lcom/google/android/gms/internal/zzep;

    new-instance v0, Lcom/google/android/gms/internal/zzir$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzir$3;-><init>(Lcom/google/android/gms/internal/zzir;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzir;->zzcer:Lcom/google/android/gms/internal/zzep;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzir;->zzcem:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzir;->zzbvq:Ljava/lang/String;

    return-void
.end method
