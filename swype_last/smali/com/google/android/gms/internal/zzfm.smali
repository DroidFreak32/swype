.class final Lcom/google/android/gms/internal/zzfm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfm$zza;
    }
.end annotation


# instance fields
.field final zzaln:Ljava/lang/String;

.field final zzbkr:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzfm$zza;",
            ">;"
        }
    .end annotation
.end field

.field zzbks:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final zzbkt:I

.field zzbku:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzbkr:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm;->zzbks:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfm;->zzaln:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzfm;->zzbkt:I

    return-void
.end method


# virtual methods
.method final zzm(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/internal/zzfm$zza;
    .registers 3

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm;->zzbks:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzbkr:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfm$zza;

    return-object v0
.end method
