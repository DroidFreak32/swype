.class final Lcom/google/android/gms/internal/zzfs$zzd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs$zzd;->zzmb()Lcom/google/android/gms/internal/zzfs$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbmn:Lcom/google/android/gms/internal/zzfs$zzc;

.field final synthetic zzbmo:Lcom/google/android/gms/internal/zzfs$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$zzd;Lcom/google/android/gms/internal/zzfs$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zzd$2;->zzbmo:Lcom/google/android/gms/internal/zzfs$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$zzd$2;->zzbmn:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string/jumbo v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zzd$2;->zzbmn:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->reject()V

    return-void
.end method
